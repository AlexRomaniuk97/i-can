package edu.lits.testapi.service;

import edu.lits.testapi.model.Card;
import edu.lits.testapi.pojo.CardToPicture;

import java.util.List;

public interface CardModelService {
    List<CardToPicture> readByCardId(Long card_id);
}
