package edu.lits.testapi.service;
import edu.lits.testapi.pojo.Card;
import edu.lits.testapi.repository.CardRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
import java.util.Optional;

@Service
public class CardServicelmpl implements CardService {
    @Autowired
   private CardRepository cardRepository;
    private Card card;

    @Override
    public Card readByID(Long id) {
        Optional<Card> card =  cardRepository.findById(id);
        return card.get();
    }

    @Override
    public List<Card> readAll() {
        return cardRepository.findAll();
    }

    @Override
    public void create(Card card) {
        cardRepository.save(card);
    }

    @Override
    public void updateCard(Card card) {
       cardRepository.save(card);
    }

    @Override
    public List<Card> readByAuthorId(Long author_id) {
        return cardRepository.findAllByAuthorId_Equals(author_id);
    }


}
