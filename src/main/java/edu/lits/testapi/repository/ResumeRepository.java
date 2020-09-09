package edu.lits.testapi.repository;

import edu.lits.testapi.pojo.Resume;
import org.springframework.data.jpa.repository.JpaRepository;

public interface ResumeRepository extends JpaRepository<Resume, Long> {
}
