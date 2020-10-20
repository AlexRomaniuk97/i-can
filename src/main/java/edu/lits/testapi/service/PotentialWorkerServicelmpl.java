package edu.lits.testapi.service;
import edu.lits.testapi.pojo.Card;
import edu.lits.testapi.pojo.PotentialWorker;
import edu.lits.testapi.repository.PotentialWorkerRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


import java.util.List;
import java.util.Optional;


@Service
public class PotentialWorkerServicelmpl implements PotentialWorkerService {
    @Autowired
    private PotentialWorkerRepository potentialWorkerRepository;

    @Override
    public PotentialWorker readByID(Long id) {
        Optional<PotentialWorker> potentialWorker =  potentialWorkerRepository.findById(id);
        return potentialWorker.get();
    }



    @Override
    public void create(PotentialWorker potentialWorker) {
        potentialWorkerRepository.save(potentialWorker);
    }

    @Override
    public void updateWorker(PotentialWorker potentialWorker) {
        potentialWorkerRepository.save(potentialWorker);
    }

    @Override
    public List<PotentialWorker> readByCardId(Long card_id) {
        return potentialWorkerRepository.findAllByCardId_Equals(card_id);
    }
}
