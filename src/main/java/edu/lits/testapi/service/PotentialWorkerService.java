package edu.lits.testapi.service;
import edu.lits.testapi.pojo.Card;
import edu.lits.testapi.pojo.PotentialWorker;

import java.util.List;

public interface PotentialWorkerService {
    PotentialWorker readByID(Long id);
    void create(PotentialWorker potentialWorker);

    void updateWorker(PotentialWorker potentialWorker);

    List<PotentialWorker> readByCardId(Long card_id);

}
