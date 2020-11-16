package com.example.fps.service;

import com.example.fps.model.Task;
import com.example.fps.model.User;
import com.example.fps.repos.TaskRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import java.util.List;


@Service
public class TaskService {

    @Autowired
    TaskRepo taskRepo;

    public Task findById(int id) {
        return taskRepo.findById(id);
    }

    public List<Task> findByTaskName(User currentUser, String taskName) {
        return taskRepo.findByCurrentUserAndTaskNameContaining(currentUser, taskName);
    }

    public void update(Task task) {
        taskRepo.save(task);
    }

    public List<Task> findByCategory(String category) {
        return taskRepo.findByCategory(category);
    }

    @Transactional
    public void deleteTaskById(int id) {
        taskRepo.deleteTaskById(id);
    }
}
