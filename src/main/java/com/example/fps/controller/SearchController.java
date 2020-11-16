package com.example.fps.controller;

import com.example.fps.model.Task;
import com.example.fps.model.UserDetailsImpl;
import com.example.fps.service.TaskService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.Map;

@Controller
public class SearchController {

    @Autowired
    TaskService taskService;

    @GetMapping("/search")
    public String searchTask(@RequestParam String search, @AuthenticationPrincipal UserDetailsImpl currentUser, Map<String, Object> model) {

        if (currentUser != null) {
            Iterable<Task> tasks = taskService.findByTaskName(currentUser.user, search);//.subList(0,6)
            model.put("tsks", tasks);
            model.put("checker", "eeeee");
        } else model.put("checker", "no tasks");

        return "search";
    }


}
