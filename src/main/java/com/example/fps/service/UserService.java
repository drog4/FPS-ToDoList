package com.example.fps.service;

import com.example.fps.model.User;
import com.example.fps.model.UserDetailsImpl;
import com.example.fps.repos.UserRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

@Service
public class UserService implements UserDetailsService {
    @Autowired
    private UserRepo userRepo;


    public User findByMail(String mail) {
        return userRepo.findByMail(mail);
    }


    @Override
    public UserDetails loadUserByUsername(String email) throws UsernameNotFoundException {
        User user = userRepo.findByMail(email);
        if (user == null) {
            throw new UsernameNotFoundException("Could not find user with name '" + email + "'");
        }
        return new UserDetailsImpl(user);
    }

    public void addUser(User user) {
        user.setPassword(user.getPassword());
        userRepo.save(user);
    }


    public void update(User user) {
        userRepo.save(user);
    }
}

