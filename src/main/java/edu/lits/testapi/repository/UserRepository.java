package edu.lits.testapi.repository;


import edu.lits.testapi.pojo.User;
import org.springframework.data.jpa.repository.JpaRepository;

public interface UserRepository extends JpaRepository<User, Long> {
}
