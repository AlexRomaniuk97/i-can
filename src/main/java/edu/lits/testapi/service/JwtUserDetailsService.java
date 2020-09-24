package edu.lits.testapi.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

@Service
public class JwtUserDetailsService implements UserDetailsService {
    @Autowired
    private UserService userService;

    @Override
    public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
        edu.lits.testapi.pojo.User userNamePojo = userService.readByUserName(username);

            return new User(userNamePojo.getName(), userNamePojo.getPassword(),
                    new ArrayList<>());

    }

    public final static Long LOGGED_IN_USER_ID = 1L;
}