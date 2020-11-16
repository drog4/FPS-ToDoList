package com.example.fps.controller;


import com.example.fps.model.User;
import com.example.fps.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.Map;

@Controller
public class SecurityController {


    @Autowired
    UserService service;


    @GetMapping(value = "/registration")
    public String getUser(Model model) {
        model.addAttribute("newUser", new User());
        return "registration";
    }

    @PostMapping(value = "/registration")
    public String setUser(@ModelAttribute User user, Map<String, Object> model) {
        User userFromDb = service.findByMail(user.getMail());

        if (userFromDb != null) {
            model.put("message", "E-mail уже зарегистрирован!");
            return "registration";
        }
        service.addUser(user);
        return "login";
    }


    @GetMapping("/forgot")
    public String getForgotPage() {
        return "forgotPassword";
    }

    @PostMapping("/forgot")
    public String getForgotMail(@RequestParam String email) {
        User user = service.findByMail(email);
        service.update(user);
        return "redirect:/";
    }


}