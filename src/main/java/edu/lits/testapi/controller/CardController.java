package edu.lits.testapi.controller;

import edu.lits.testapi.model.Card;
import edu.lits.testapi.model.Response;
import edu.lits.testapi.pojo.CardToPicture;
import edu.lits.testapi.pojo.User;
import edu.lits.testapi.repository.CardRepository;
import edu.lits.testapi.service.CardModelService;
import edu.lits.testapi.service.CardService;
import edu.lits.testapi.service.UserService;
import io.swagger.annotations.ApiImplicitParam;
import io.swagger.annotations.ApiImplicitParams;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;

@Controller
@RequestMapping("/card")
public class CardController {
    private static final int LOGGER_IN_USER_ID = 1;

    @Autowired
    private CardService cardService;
    private CardModelService cardModelService;
    @Autowired
    private UserService userService;

    @ApiImplicitParams(
            @ApiImplicitParam(
                    name = "Authorization",
                    value = "Access Token",
                    required = true,
                    allowEmptyValue = false,
                    paramType = "header",
                    dataTypeClass = String.class,
                    example = "Bearer access_token"))
    @GetMapping("/item") //+
    @ResponseBody
    public edu.lits.testapi.pojo.Card getCard(@RequestParam(required = true) Long id) {
        System.out.println("here");
        edu.lits.testapi.pojo.Card card = cardService.readByID(id);
        return card;
    }

    @ApiImplicitParams(
            @ApiImplicitParam(
                    name = "Authorization",
                    value = "Access Token",
                    required = true,
                    allowEmptyValue = false,
                    paramType = "header",
                    dataTypeClass = String.class,
                    example = "Bearer access_token"))
    @GetMapping("/list") //+w
    @ResponseBody
    public List<edu.lits.testapi.pojo.Card> getCardList() {
        System.out.println("here");
        List<edu.lits.testapi.pojo.Card> cardList = cardService.readAll();
        return cardList;
    }

    @ApiImplicitParams(
            @ApiImplicitParam(
                    name = "Authorization",
                    value = "Access Token",
                    required = true,
                    allowEmptyValue = false,
                    paramType = "header",
                    dataTypeClass = String.class,
                    example = "Bearer access_token"))
    @GetMapping("/our/list")
    @ResponseBody
    public List<edu.lits.testapi.pojo.Card> ourCardList(@RequestParam Long author_id) {
        List<edu.lits.testapi.pojo.Card> cardList = cardService.readByAuthorId(author_id);
        return cardList;
    }

    public List<edu.lits.testapi.pojo.Card> getOurAVG(@RequestParam Long author_id) {
        List<edu.lits.testapi.pojo.Card> cardList = cardService.readByAuthorId(author_id);

        return cardList;
    }

    @ApiImplicitParams(
            @ApiImplicitParam(
                    name = "Authorization",
                    value = "Access Token",
                    required = true,
                    allowEmptyValue = false,
                    paramType = "header",
                    dataTypeClass = String.class,
                    example = "Bearer access_token"))
    @PostMapping("/create") //+e
    @ResponseBody
    public edu.lits.testapi.pojo.Card createCard(@RequestBody(required = false) Card userCard) {
        edu.lits.testapi.pojo.Card card = new edu.lits.testapi.pojo.Card();
        card.setAuthorId((long) LOGGER_IN_USER_ID);
        card.setPrice(userCard.getPrice());
        card.setRating(0);
        card.setStatus("new");
        card.setDate_from(userCard.getDateFrom());
        card.setDate_to(userCard.getDateTo());
        card.setDescription(userCard.getDescription());
        cardService.create(card);
        return card;

    }

    @ApiImplicitParams(
            @ApiImplicitParam(
                    name = "Authorization",
                    value = "Access Token",
                    required = true,
                    allowEmptyValue = false,
                    paramType = "header",
                    dataTypeClass = String.class,
                    example = "Bearer access_token"))
    @GetMapping("/contact")
    @ResponseBody
    public Card contactCard(@RequestParam(required = false) Long id
//                            @RequestParam(required = true) String firstMessage
    ){
        edu.lits.testapi.pojo.Card card = cardService.readByID(id);
        Long userLocation = card.getAuthorId();
        //User user = userService.readByID(userLocation);
        //edu.lits.testapi.pojo.User user = userService.readByID(userLocation);
       // List<CardToPicture> cardToPictures = cardModelService.readByCardId(id);
        Card modelCard = new Card();
        System.out.println("here");
        modelCard.setId(card.getId());
        //modelCard.setCardListPhoto();
        modelCard.setDescription(card.getDescription());
        modelCard.setDateFrom(card.getDate_from());
        modelCard.setDateTo(card.getDate_to());
        modelCard.setLocation(userService.readByID(userLocation).getCity());
        modelCard.setUserName(card.getName());
        modelCard.setDescription(card.getDescription());
        modelCard.setPrice(card.getPrice());
        //modelCard.setChat(firstMessage);
        return modelCard;
    }

    @ApiImplicitParams(
            @ApiImplicitParam(
                    name = "Authorization",
                    value = "Access Token",
                    required = true,
                    allowEmptyValue = false,
                    paramType = "header",
                    dataTypeClass = String.class,
                    example = "Bearer access_token"))
    @PostMapping("/contract")
    @ResponseBody
    public edu.lits.testapi.pojo.Card contractCard(@RequestParam(required = false) Long id,
                                                   @RequestParam(required = false) String firstMassage) {
        System.out.println("here");
        return cardService.readByID(id);
        //contract user
    }


    @ApiImplicitParams(
            @ApiImplicitParam(
                    name = "Authorization",
                    value = "Access Token",
                    required = true,
                    allowEmptyValue = false,
                    paramType = "header",
                    dataTypeClass = String.class,
                    example = "Bearer access_token"))
    @PostMapping("/rate")
    @ResponseBody
    public edu.lits.testapi.pojo.Card rateCard(@RequestParam(required = false) Long id,
                                               @RequestParam(required = false) int rate) {
        edu.lits.testapi.pojo.Card card = cardService.readByID(id);
        card.setRating(rate);
        cardService.updateCard(card);
        return card;
    }

    @ApiImplicitParams(
            @ApiImplicitParam(
                    name = "Authorization",
                    value = "Access Token",
                    required = true,
                    allowEmptyValue = false,
                    paramType = "header",
                    dataTypeClass = String.class,
                    example = "Bearer access_token"))
    @GetMapping("/update")
    @ResponseBody
    public Card updateCard(@RequestParam(required = true) Card userCard,
                           @RequestParam(required = true) Long cardID) {
        System.out.println("here");
        return new Card();
    }

    @ApiImplicitParams(
            @ApiImplicitParam(
                    name = "Authorization",
                    value = "Access Token",
                    required = true,
                    allowEmptyValue = false,
                    paramType = "header",
                    dataTypeClass = String.class,
                    example = "Bearer access_token"))
    @GetMapping("/subscribe")
    @ResponseBody
    public Card subscribeToCard(@RequestParam(required = true) Integer userWorkerID,
                                @RequestParam(required = true) Integer CardID) {
        System.out.println("here");
        return new Card();
    }

    @ApiImplicitParams(
            @ApiImplicitParam(
                    name = "Authorization",
                    value = "Access Token",
                    required = true,
                    allowEmptyValue = false,
                    paramType = "header",
                    dataTypeClass = String.class,
                    example = "Bearer access_token"))
    @GetMapping("/confirm-card-worker") //+
    @ResponseBody
    public ResponseEntity<Response> confirmCardWorker(@RequestParam(required = true) Long workerID,
                                                      @RequestParam(required = true) Long cardID) {
        boolean status = false;
        if (cardID == 1) {
            status = true;
        }

        Response response = new Response();
        response.setStatus(status);
        return ResponseEntity.ok()
                .body(response);
    }

    @ApiImplicitParams(
            @ApiImplicitParam(
                    name = "Authorization",
                    value = "Access Token",
                    required = true,
                    allowEmptyValue = false,
                    paramType = "header",
                    dataTypeClass = String.class,
                    example = "Bearer access_token"))
    @GetMapping("/reject-card-worker")  //+
    @ResponseBody
    public Card rejectCardWorker(@RequestParam(required = true) Long workerID,
                                 @RequestParam(required = true) Long cardID) {
        System.out.println("here");
        return new Card();
    }

    @ApiImplicitParams(
            @ApiImplicitParam(
                    name = "Authorization",
                    value = "Access Token",
                    required = true,
                    allowEmptyValue = false,
                    paramType = "header",
                    dataTypeClass = String.class,
                    example = "Bearer access_token"))
    @GetMapping("/confirm")
    @ResponseBody
    public Card confirmCard(@RequestParam(required = true) Long cardID,
                            @RequestParam(required = true) Integer rating) {
        System.out.println("here");
        return new Card();
    }

    @ApiImplicitParams(
            @ApiImplicitParam(
                    name = "Authorization",
                    value = "Access Token",
                    required = true,
                    allowEmptyValue = false,
                    paramType = "header",
                    dataTypeClass = String.class,
                    example = "Bearer access_token"))
    @GetMapping("/card/our/confirm")
    @ResponseBody
    public Card confirmOurCard(@RequestParam(required = true) Long cardID,
                               @RequestParam(required = true) Long authorId) {
        System.out.println("card/our/confirm");
        return new Card();
    }


}
