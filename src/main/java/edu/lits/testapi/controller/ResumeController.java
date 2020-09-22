package edu.lits.testapi.controller;

import edu.lits.testapi.model.Card;
import edu.lits.testapi.pojo.Resume;
import edu.lits.testapi.service.ResumeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

@Controller
@RequestMapping("/resume")
public class ResumeController {
    private  static  final int LOGGER_IN_USER_ID=1;

    @Autowired
    private ResumeService resumeService;

    @GetMapping("/item")
    @ResponseBody

    public Card getCard(@RequestParam(required = true) Integer id,
                        @RequestParam(required = false) String location) {
        System.out.println("here");
        Resume resume = resumeService.readByID(1L);
        return new Card();
    }

    @GetMapping("/list")
    @ResponseBody

    public List<Card> getCardList(@RequestParam(required = false) String location) {
        System.out.println("here");

        return List.of(new Card(), new Card()) ;
    }

}
