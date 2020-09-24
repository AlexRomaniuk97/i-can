package edu.lits.testapi.service;


import edu.lits.testapi.pojo.User;

public interface UserService {
    User readByID(Long id);

    void create(User user);
}
