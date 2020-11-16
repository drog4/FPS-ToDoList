package com.example.fps.repos;

import com.example.fps.model.Task;
import com.example.fps.model.User;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface TaskRepo extends JpaRepository<Task, Long> {
    Task findById(int id);


    List<Task> findByCurrentUserAndTaskNameContaining(User currentUser, String taskName);

    List<Task> findByCategory(String category);

    List<Task> findByCurrentUser(User currentUser);

    void deleteTaskById(int id);
}
