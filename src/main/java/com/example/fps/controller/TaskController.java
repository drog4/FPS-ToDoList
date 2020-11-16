package com.example.fps.controller;

import com.example.fps.model.*;
import com.example.fps.repos.TaskRepo;
import com.example.fps.service.TaskService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import java.io.IOException;
import java.util.*;

@Controller
public class TaskController {

    @Autowired
    private TaskRepo taskRepo;

    @Autowired
    TaskService taskService;

    @Value("${upload.path}")
    private String uploadPath;

    @GetMapping("/addtask")
    public String addTask(Map<String, Object> model) {
        return "addTask";
    }

    @PostMapping("/addtask")
    public String main(@RequestParam String taskname, @RequestParam String description, @AuthenticationPrincipal UserDetailsImpl currentUser, String category, Map<String, Object> model) {
        Task task = new Task(taskname, description, currentUser.getUser(), category, "Low");
        taskRepo.save(task);
        return "redirect:/";
    }

    @GetMapping("/task")
    public String viewtask(@AuthenticationPrincipal UserDetailsImpl currentUser, @RequestParam int id, Map<String, Object> model) {

        Task task = taskService.findById(id);
        model.put("task", task);


        if (task.getCurrentUser().getId() == currentUser.getUser().getId()) {

            model.put("message", "[Редактировать]");
        }
        return "task";
    }

    @GetMapping(value = "/task/edit")
    public String editTask(@RequestParam int id, Map<String, Object> model) {
        Task task = taskService.findById(id);
        model.put("task", task);
        return "taskEdit";
    }

    @PostMapping(value = "/task/edit")
    public String editTask(@AuthenticationPrincipal UserDetailsImpl currentUser, @RequestParam int id, String taskname, String description, Map<String, Object> model) throws IOException {
        Task task = taskService.findById(id);
        if (task.getCurrentUser().getId() == currentUser.getUser().getId()) {
            task.setTaskName(taskname);
            task.setDescription(description);

            taskService.update(task);
        }
        return "redirect:/";
    }

    @GetMapping(value = "/task/delete")
    public String deleteTask(@AuthenticationPrincipal UserDetailsImpl currentUser, @RequestParam int id, Map<String, Object> model) throws IOException {
        taskService.deleteTaskById(id);

        return "redirect:/";
    }

    @GetMapping(value = "/task/setpriority")
    public String deleteTask(@RequestParam int id, String priority, Map<String, Object> model) throws IOException {
        Task task = taskService.findById(id);

        task.setPriority(priority);

        taskService.update(task);
        return "redirect:/";
    }
}
