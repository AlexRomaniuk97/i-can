package edu.lits.testapi.controller;

import com.sun.xml.bind.v2.TODO;
import edu.lits.testapi.model.Card;
import edu.lits.testapi.pojo.Resume;
import edu.lits.testapi.service.CardService;
import edu.lits.testapi.service.ResumeService;
import org.springframework.beans.factory.annotation.Autowired;
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

    @GetMapping("/item")
    @ResponseBody
    public Card getCard(@RequestParam(required = true, defaultValue = "Chernivtsi") Integer id,
                        @RequestParam(required = false, defaultValue = "Chernivtsi") String location) {
        System.out.println("here");
        edu.lits.testapi.pojo.Card card = cardService.readByID(1L);
        return new Card();
    }

    @GetMapping("/list")
    @ResponseBody
    public List<Card> getCardList(@RequestParam(required = false, defaultValue = "Chernivtsi") String location) {
        System.out.println("here");

        return List.of(new Card(), new Card());
    }

    @GetMapping("/create")
    @ResponseBody
    public Card createCard(@RequestParam(required = false) Card userCard) {
        System.out.println("here");
        return new Card();
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

    @GetMapping("/confirm-card-worker")
    @ResponseBody
    public Card confirmCardWorker(@RequestParam(required = true) Long workerID,
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
}
