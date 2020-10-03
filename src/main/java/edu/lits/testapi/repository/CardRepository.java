package edu.lits.testapi.repository;

import edu.lits.testapi.pojo.Card;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface CardRepository extends JpaRepository<Card, Long> {
   List<Card> findAllByAuthorId_Equals(Long author_id);
}
