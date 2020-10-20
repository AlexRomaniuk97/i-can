package edu.lits.testapi.repository;
import edu.lits.testapi.pojo.PotentialWorker;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface PotentialWorkerRepository extends JpaRepository<edu.lits.testapi.pojo.PotentialWorker, Long> {
    List<PotentialWorker> findAllByCardId_Equals(Long cardId);
}
