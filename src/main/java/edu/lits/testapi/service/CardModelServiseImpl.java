package edu.lits.testapi.service;

import edu.lits.testapi.model.Card;
import edu.lits.testapi.pojo.CardToPicture;
import edu.lits.testapi.repository.CardModelRepository;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.List;

public class CardModelServiseImpl implements CardModelService{
    @Autowired
    private CardModelRepository cardModelRepository;

    @Override
    public List<CardToPicture> readByCardId(Long card_id) {
        return cardModelRepository.findAllBycardId_Equals(card_id);
    }
}
