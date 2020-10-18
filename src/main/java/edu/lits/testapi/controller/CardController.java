package edu.lits.testapi.controller;

import edu.lits.testapi.model.Card;
import edu.lits.testapi.model.Response;
import edu.lits.testapi.pojo.CardToPicture;
import edu.lits.testapi.pojo.Picture;
import edu.lits.testapi.pojo.PotentialWorker;
//import edu.lits.testapi.pojo.User;
import edu.lits.testapi.repository.CardRepository;
import edu.lits.testapi.service.*;
import io.swagger.annotations.ApiImplicitParam;
import io.swagger.annotations.ApiImplicitParams;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.User;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;

@Controller
@RequestMapping("/card")
public class CardController {
    private static final int LOGGER_IN_USER_ID = 2;

    @Autowired
    private CardService cardService;
    private CardModelService cardModelService;
    @Autowired
    private UserService userService;
    @Autowired
    private PotentialWorkerService potentialWorkerService;
    private PictureService pictureService;

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
    @GetMapping("/cardDone") //+
    @ResponseBody
    public edu.lits.testapi.pojo.Card getCardDone(@RequestParam(required = true) Long id) {
        edu.lits.testapi.pojo.Card card = cardService.readByID(id);
        edu.lits.testapi.pojo.PotentialWorker potentialWorker = potentialWorkerService.readByCardId(id);

        User user = (User)SecurityContextHolder.getContext().getAuthentication().getPrincipal(); // 3 rows for logged user
        String username = user.getUsername();
        edu.lits.testapi.pojo.User loggedInUser = userService.readByUserName(username);
        if (loggedInUser.getId() == card.getAuthorId()) {
            card.setStatus("DONE");
            cardService.updateCard(card);
        }
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
    @PostMapping("/contact")
    @ResponseBody
    public edu.lits.testapi.pojo.PotentialWorker contactCard(@RequestBody(required = false)Card userCard) {
        PotentialWorker potentialWorker = new PotentialWorker();
        potentialWorker.setUser_id((long) LOGGER_IN_USER_ID);
        potentialWorker.setCard_id(userCard.getId());
        potentialWorker.setMessage(userCard.getFirstMessage());
        potentialWorkerService.create(potentialWorker);
        return potentialWorker;
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
    @GetMapping("/cardView")
    @ResponseBody
    public Card cardView(@RequestParam(required = false) Long id){
        edu.lits.testapi.pojo.Card card = cardService.readByID(id);
        Long userId = card.getAuthorId();
        edu.lits.testapi.pojo.User user = userService.readByID(userId);
        String pictureId = user.getPicture_id();
        System.out.println();
        //Picture picture = pictureService.readByID(pictureId);
        List<CardToPicture> cardToPictures = cardModelService.readByCardId(id);
        Card modelCard = new Card();
        modelCard.setId(card.getId());
       // modelCard.setCardListPhoto(cardModelService.readByCardId(id));
        modelCard.setUserPhoto(pictureId);
        modelCard.setDescription(card.getDescription());
        modelCard.setDateFrom(card.getDate_from());
        modelCard.setDateTo(card.getDate_to());
        modelCard.setLocation(userService.readByID(userId).getCity());
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
    @GetMapping("/possibleWorkers")
    @ResponseBody
    public PotentialWorker potentialWorker(@RequestParam Long id){
        List<PotentialWorker> potentialWorkers = (List<PotentialWorker>) potentialWorkerService.readByCardId(id);
        return (PotentialWorker) potentialWorkers;
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
