package edu.lits.testapi.service;

import edu.lits.testapi.pojo.User;;
import edu.lits.testapi.repository.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.Optional;

public class UserServiceImpl implements UserService{
    @Autowired
    private UserRepository userRepository;

    @Override
    public User readByID(Long id) {
        Optional<User> user =  userRepository.findById(1L);
        return user.get();
    }
}
