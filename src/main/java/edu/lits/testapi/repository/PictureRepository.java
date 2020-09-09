package edu.lits.testapi.repository;

import edu.lits.testapi.pojo.Picture;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
@Repository
public interface PictureRepository extends JpaRepository<Picture, Long> {
}