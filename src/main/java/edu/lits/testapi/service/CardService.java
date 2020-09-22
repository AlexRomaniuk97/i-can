package edu.lits.testapi.service;
import edu.lits.testapi.pojo.Card;

import java.util.List;


public interface CardService {
    Card readByID(Long id);

    List<Card> readAll();

    void create(Card card);
}
