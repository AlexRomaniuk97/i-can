package edu.lits.testapi.controller;

import edu.lits.testapi.model.Card;
import edu.lits.testapi.model.User;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequestMapping("/user")
public class UserController {

    @GetMapping("/leaveFeedback")
    @ResponseBody
    public User leaveFeedback(@RequestParam(required = true) String feedback,
                              @RequestParam(required = true) int rating) {
        System.out.println("here");
        return new User();
    }

    @GetMapping("/showFeedback")
    @ResponseBody
    public User showFeedback(@RequestParam(required = true) User profilePhoto,
                             @RequestParam(required = true) User name,
                             @RequestParam(required = true) User rating,
                             @RequestParam(required = true) User feedback) {
        System.out.println("here");
        return new User();
    }
}
