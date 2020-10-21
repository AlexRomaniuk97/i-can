package edu.lits.testapi.controller;

import edu.lits.testapi.model.Card;
import edu.lits.testapi.pojo.CardToPicture;
import edu.lits.testapi.pojo.PotentialWorker;
import edu.lits.testapi.service.*;
import io.swagger.annotations.ApiImplicitParam;
import io.swagger.annotations.ApiImplicitParams;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.User;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import java.util.ArrayList;
import java.util.List;

@Controller
@RequestMapping("/card")
public class CardController {
    private static final int LOGGER_IN_USER_ID = 2;

    @Autowired
    private CardService cardService;
   // private CardModelService cardModelService;
    @Autowired
    private UserService userService;
    @Autowired
    private PotentialWorkerService potentialWorkerService;
    @Autowired
    private PictureService pictureService;
    @Autowired
    private CardToPicrureService cardToPicrureService;

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

        User user = (User) SecurityContextHolder.getContext().getAuthentication().getPrincipal(); // 3 rows for logged user
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
    @GetMapping("/confirm-card-worker") //+
    @ResponseBody
    public edu.lits.testapi.pojo.Card confirmCardWorker(@RequestParam(required = true) Long workerID,
                                                        @RequestParam(required = true) Long cardID) {
        edu.lits.testapi.pojo.Card card = cardService.readByID(cardID);
        User user = (User) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
        String username = user.getUsername();
        edu.lits.testapi.pojo.User loggedInUser = userService.readByUserName(username);
        ;
        if (loggedInUser.getId() == card.getAuthorId()) {
            List<edu.lits.testapi.pojo.PotentialWorker> potentialWorkerList = potentialWorkerService.readByCardId(cardID);

            for (int i = 0; i < potentialWorkerList.size(); i++) {
                if (potentialWorkerList.get(i).getUser_id() == workerID) {

                    potentialWorkerList.get(i).setStatus(1);
                    potentialWorkerService.updateWorker(potentialWorkerList.get(i));
                    card.setStatus("INPROGRESS");
                    cardService.updateCard(card);

                }

            }

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
    @GetMapping("/show_cardlist_for_autor") //+
    @ResponseBody
    public List<Card> showCardListForAutor() {

        User user = (User) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
        String username = user.getUsername();
        edu.lits.testapi.pojo.User loggedInUser = userService.readByUserName(username);
        List<Card> cardList = new ArrayList<>();

        List<edu.lits.testapi.pojo.Card> cardList1 = cardService.readByAuthorId(loggedInUser.getId());
        for(edu.lits.testapi.pojo.Card pojoCard:cardList1){
            Card card = new Card();
            card.setId(pojoCard.getId());
            card.setUserName(pojoCard.getName());
            card.setDescription(pojoCard.getDescription());
            card.setDateFrom(pojoCard.getDate_from());
            card.setDateTo(pojoCard.getDate_to());
            card.setPrice(pojoCard.getPrice());

            cardList.add(card);

        }

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
    @GetMapping("/show_worker_for_card") //+
    @ResponseBody
    public List<PotentialWorker> showWorkerCard(@RequestParam(required = true) Long cardID) {

        User user = (User) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
        String username = user.getUsername();
        edu.lits.testapi.pojo.User loggedInUser = userService.readByUserName(username);
        List<PotentialWorker> potentialWorkerList = new ArrayList<>();

        List<edu.lits.testapi.pojo.PotentialWorker> potentialWorkerList1 = potentialWorkerService.readByCardId(cardID);
        for(edu.lits.testapi.pojo.PotentialWorker pojoWorker:potentialWorkerList1){
            PotentialWorker potentialWorker = new PotentialWorker();

            potentialWorker.setId(pojoWorker.getId());
            potentialWorker.setUser_id(pojoWorker.getUser_id());
            potentialWorker.setMessage(pojoWorker.getMessage());
            potentialWorker.setStatus(pojoWorker.getStatus());


            potentialWorkerList.add(pojoWorker);

        }

        return potentialWorkerList;

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
        return cardService.readByAuthorId(author_id);
    }

    public List<edu.lits.testapi.pojo.Card> getOurAVG(@RequestParam Long author_id) {

        return cardService.readByAuthorId(author_id);
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
    public edu.lits.testapi.pojo.PotentialWorker contactCard(@RequestBody(required = false) Card userCard) {
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
    public Card cardView(@RequestParam(required = false) Long id) {
        edu.lits.testapi.pojo.Card card = cardService.readByID(id);
        Long userId = card.getAuthorId();
        edu.lits.testapi.pojo.User user = userService.readByID(userId);
        String pictureId = user.getPicture_id();
        System.out.println();
        //Picture picture = pictureService.readByID(pictureId);
        //List<CardToPicture> cardToPictures = cardModelService.readByCardId(id);
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
    @PostMapping("/rate")
    @ResponseBody
    public edu.lits.testapi.pojo.Card rateCard(@RequestParam(required = false) Long id,
                                               @RequestParam(required = false) int rate) {
        edu.lits.testapi.pojo.Card card = cardService.readByID(id);
        card.setRating(rate);
        cardService.updateCard(card);
        return card;
    }
}
