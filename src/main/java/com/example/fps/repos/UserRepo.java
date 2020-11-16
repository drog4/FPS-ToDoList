package com.example.fps.repos;

import com.example.fps.model.User;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface UserRepo extends JpaRepository<User, Long> {
    User findByMail(String mail);


    User findByUsername(String username);
}
