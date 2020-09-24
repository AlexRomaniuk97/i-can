package edu.lits.testapi.service;

import edu.lits.testapi.pojo.User;;
import edu.lits.testapi.repository.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Optional;
@Service
public class UserServiceImpl implements UserService{
    @Autowired
    private UserRepository userRepository;

    @Override
    public User readByID(Long id) {
        Optional<User> user =  userRepository.findById(1L);
        return user.get();
    }

    @Override
    public User readByUserName(String name) {
        Optional<User> user =  userRepository.findByName(name);
        return user.get();
    }

    @Override
    public void create(User user) {
        userRepository.save(user);
    }
}
