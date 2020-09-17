package edu.lits.testapi.service;
import edu.lits.testapi.pojo.Card;
import edu.lits.testapi.repository.CardRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import java.util.Optional;

@Service
public class CardServicelmpl implements CardService {
    @Autowired
   private CardRepository cardRepository;

    @Override
    public Card readByID(Long id) {
        Optional<Card> card =  cardRepository.findById(id);
        return card.get();
    }
}
