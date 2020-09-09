package edu.lits.testapi.repository;

import edu.lits.testapi.pojo.Card;
import org.springframework.data.jpa.repository.JpaRepository;

public interface CardRepository extends JpaRepository<Card, Long> {
}
