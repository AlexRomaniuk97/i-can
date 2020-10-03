package edu.lits.testapi.controller;


import edu.lits.testapi.pojo.User;
import edu.lits.testapi.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

@Controller
@RequestMapping("/user")
public class UserController {
    @Autowired
    private UserService userService;

    @GetMapping("/item")
    @ResponseBody
    public User getUser(@RequestParam(required = true) Long id) {
        System.out.println("here");
        edu.lits.testapi.pojo.User user = userService.readByID(id);
        return user;
    }

    @GetMapping("/leaveFeedback")
    @ResponseBody
    public User leaveFeedback(@RequestParam(required = true) String feedback,
                              @RequestParam(required = true) int rating) {
        System.out.println("here");
        return new User();
    }

    @GetMapping("/showFeedback")
    @ResponseBody
    public User showFeedback(@RequestParam(required = true) User id,
                             @RequestParam(required = true) User profilePhoto,
                             @RequestParam(required = true) User name,
                             @RequestParam(required = true) User rating,
                             @RequestParam(required = true) User feedback) {
        System.out.println("here");
        return new User();
    }

    @PostMapping("/rateUser")
    @ResponseBody
    public edu.lits.testapi.pojo.User rateUser(@RequestParam Long id,
                                               @RequestParam int rating){
        System.out.println("here");
        edu.lits.testapi.pojo.User user = new edu.lits.testapi.pojo.User();
        user.setRating(rating);
        return userService.create(user);
    }
}
