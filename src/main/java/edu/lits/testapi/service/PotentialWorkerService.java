package edu.lits.testapi.service;
import edu.lits.testapi.pojo.Card;
import edu.lits.testapi.pojo.PotentialWorker;

public interface PotentialWorkerService {
    PotentialWorker readByID(Long user_id);
    void create(PotentialWorker potentialWorker);

    PotentialWorker readByCardId(Long card_id);

}
