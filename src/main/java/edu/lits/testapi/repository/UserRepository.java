package edu.lits.testapi.repository;


import edu.lits.testapi.pojo.Card;
import edu.lits.testapi.pojo.User;
import org.springframework.data.jpa.domain.Specification;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;
import java.util.Optional;

import static springfox.documentation.builders.Parameters.withName;

public interface UserRepository extends JpaRepository<User, Long> {
    Optional<User> findByName(String name);
}
