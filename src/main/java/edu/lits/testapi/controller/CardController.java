package edu.lits.testapi.controller;

import edu.lits.testapi.model.Card;
import edu.lits.testapi.model.Response;
import edu.lits.testapi.service.CardService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

@Controller
@RequestMapping("/card")
public class CardController {
    private static final int LOGGER_IN_USER_ID = 1;

    @Autowired
    private CardService cardService;

    @GetMapping("/item") //+
    @ResponseBody
    public edu.lits.testapi.pojo.Card getCard(@RequestParam(required = true) Integer id) {
        System.out.println("here");
        return cardService.readByID(id.longValue());
    }

    @GetMapping("/list") //+w
    @ResponseBody
    public List<edu.lits.testapi.pojo.Card> getCardList(@RequestParam(required = true) Integer id) {
        System.out.println("here");
        edu.lits.testapi.pojo.Card card = cardService.readByID(id.longValue());
        return List.of(card, card);
    }

    @GetMapping("/create") //+e
    @ResponseBody
    public Card createCard(@RequestParam(required = false) Card userCard) {
        System.out.println("here");
        return new Card();
    }

    @GetMapping("/our/list")
    @ResponseBody
    public Card ourCardList(@RequestParam(required = true) Integer id,
                            @RequestParam(required = false) List<Card> cardList){
        System.out.println("here");
        return new Card();
    }

    @GetMapping("/contact")
    @ResponseBody
    public edu.lits.testapi.pojo.Card contactCard(@RequestParam(required = false) Long id) {
        System.out.println("here");
        return cardService.readByID(id);
    }
//C
    @GetMapping("/contract")
    @ResponseBody
    public edu.lits.testapi.pojo.Card contractCard(@RequestParam(required = false) Long id,
                                                   @RequestParam(required = false) String firstMassage) {
        System.out.println("here");
        return cardService.readByID(id);
    }

    @GetMapping("/rate")
    @ResponseBody
    public edu.lits.testapi.pojo.Card rateCard(@RequestParam(required = false) Long id,
                                               @RequestParam(required = false) int rate) {
        System.out.println("here");
        return cardService.readByID(id);
    }

    @GetMapping("/update")
    @ResponseBody
    public Card updateCard(@RequestParam(required = true) Card userCard,
                           @RequestParam(required = true) Long cardID) {
        System.out.println("here");
        return new Card();
    }

    @GetMapping("/subscribe")
    @ResponseBody
    public Card subscribeToCard(@RequestParam(required = true) Integer userWorkerID,
                                @RequestParam(required = true) Integer CardID) {
        System.out.println("here");
        return new Card();
    }

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

    @GetMapping("/reject-card-worker")  //+
    @ResponseBody
    public Card rejectCardWorker(@RequestParam(required = true) Long workerID,
                                 @RequestParam(required = true) Long cardID) {
        System.out.println("here");
        return new Card();
    }

    @GetMapping("/confirm")
    @ResponseBody
    public Card confirmCard(@RequestParam(required = true) Long cardID,
                            @RequestParam(required = true) Integer rating) {
        System.out.println("here");
        return new Card();
    }

    @GetMapping("/card/our/confirm")
    @ResponseBody
    public Card confirmOurCard(@RequestParam(required = true) Long cardID,
                            @RequestParam(required = true) Long userId) {
        System.out.println("card/our/confirm");
        return new Card();
    }


}
