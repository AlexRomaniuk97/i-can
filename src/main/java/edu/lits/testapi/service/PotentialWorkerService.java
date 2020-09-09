package edu.lits.testapi.service;
import edu.lits.testapi.pojo.PotentialWorker;

public interface PotentialWorkerService {
    PotentialWorker readByID(Long user_id);
}
