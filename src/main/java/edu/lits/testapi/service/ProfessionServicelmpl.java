package edu.lits.testapi.service;
import edu.lits.testapi.pojo.Profession;
import edu.lits.testapi.repository.ProfessionRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import java.util.Optional;


@Service
public class ProfessionServicelmpl implements ProfessionService {
    @Autowired
    private ProfessionRepository professionRepository;

    @Override
    public Profession readByID(Long id) {
        Optional<Profession> profession =  professionRepository.findById(1L);
        return profession.get();
    }


}
