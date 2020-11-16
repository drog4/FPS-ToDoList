package com.example.fps.controller;


import com.example.fps.model.Task;
import com.example.fps.model.UserDetailsImpl;
import com.example.fps.repos.TaskRepo;
import com.example.fps.repos.UserRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.Map;
import java.util.stream.Stream;

@Controller
public class MainController {

    @Autowired
    private TaskRepo taskRepo;

    @Autowired
    private UserRepo userRepo;

    @GetMapping("/")
    public String main(Map<String, Object> model, @AuthenticationPrincipal UserDetailsImpl currentUser) {

        if (currentUser != null) {
            Iterable<Task> tasks = taskRepo.findByCurrentUser(currentUser.user);//.subList(0,6)
            model.put("tsks", tasks);
            model.put("checker", "eeeee");
        } else model.put("checker", "no tasks");

        model.put("taskCount", taskRepo.count());
        model.put("userCount", userRepo.count());
        return "main";
    }

}