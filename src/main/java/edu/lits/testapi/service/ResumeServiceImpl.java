package edu.lits.testapi.service;

import edu.lits.testapi.pojo.Resume;
import edu.lits.testapi.repository.ResumeRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class ResumeServiceImpl implements ResumeService {
    @Autowired
    private ResumeRepository resumeRepository;

    @Override
    public Resume readByID(Long id) {
       Optional <Resume> resume =  resumeRepository.findById(1L);
       return resume.get();
    }
}
