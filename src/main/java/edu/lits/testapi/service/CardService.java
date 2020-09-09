package edu.lits.testapi.service;
import edu.lits.testapi.pojo.Card;


public interface CardService {
    Card readByID(Long id);
}
