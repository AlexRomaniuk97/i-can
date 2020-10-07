package edu.lits.testapi.repository;

import edu.lits.testapi.model.Card;
import edu.lits.testapi.pojo.CardToPicture;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface CardModelRepository extends JpaRepository<CardToPicture, Long> {
    List<CardToPicture> findAllBycardId_Equals(Long card_id);
}
