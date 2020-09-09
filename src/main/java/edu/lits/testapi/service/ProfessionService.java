package edu.lits.testapi.service;
import edu.lits.testapi.pojo.Profession;

public interface ProfessionService {
    Profession readByID(Long id);
}
