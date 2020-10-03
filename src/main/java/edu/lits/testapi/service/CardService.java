package edu.lits.testapi.service;
import edu.lits.testapi.pojo.Card;
import edu.lits.testapi.repository.CardRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import java.util.List;

public interface CardService {

    Card readByID(Long id);

    List<Card> readAll();

    void create(Card card);

    void updateCard(Card card);

    List<Card> readByAuthorId(Long author_id);

}
