package edu.lits.testapi.controller;

import edu.lits.testapi.model.Card;
import edu.lits.testapi.model.CardCreateRequest;
import edu.lits.testapi.model.Filter;
import edu.lits.testapi.model.FilterRequest;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;


import java.util.ArrayList;
import java.util.List;
import java.util.logging.LogRecord;

@Controller
@RequestMapping("/filter")
public class FilterController {

    @GetMapping("/default")
    @ResponseBody

    public Filter getCard() {
      Filter filter = new Filter();
      filter.setProfessionList(List.of("driver", "manager"));
      return filter;

    }

    @PostMapping("/default")
    @ResponseBody

    public List<Card> postFilter(@RequestBody FilterRequest request) {
        Filter filter = new Filter();
        filter.setProfessionList(List.of("driver", "manager"));
        return new ArrayList<>();

    }

    @PostMapping("/create")
    @ResponseBody
    public String createCard(@RequestBody CardCreateRequest request) {
        //викликати сервіс і викликати репозиторій, як в резюме контролеррі
//
        return "success";
    }

    }
