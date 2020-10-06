package edu.lits.testapi.repository;

import edu.lits.testapi.pojo.Card;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import java.util.List;

public interface CardRepository extends JpaRepository<Card, Long> {
   @Query(value = "SELECT avg(rating) FROM User")
   public static Double avg() {
      return null;
   }

   List<Card> findAllByAuthorId_Equals(Long author_id);
}
