package com.example.fps.controller;

import com.example.fps.model.User;
import com.example.fps.model.UserDetailsImpl;
import com.example.fps.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;


@Controller
public class UserController {

    @Autowired
    UserService userService;

    @Value("${upload.path}")
    private String uploadPath;

    @GetMapping(value = "/profile")
    public String profile(Model model,
                          @AuthenticationPrincipal UserDetailsImpl userDetails) {
        model.addAttribute("loggedInUser", userDetails);
        return "profile";
    }

    @GetMapping(value = "/profile/edit")
    public String editProfile(Model model,
                              @AuthenticationPrincipal UserDetailsImpl userDetails) {
        model.addAttribute("loggedInUser", userDetails);
        return "profileEdit";
    }


    @PostMapping(value = "/profile/edit")
    public String editProfile(@RequestParam String username, String realname, String surname, String phonenumber, String password,
                              @AuthenticationPrincipal UserDetailsImpl userDetails) {
        User user = userDetails.user;
        user.setUsername(username);
        user.setRealName(realname);
        user.setSurname(surname);
        user.setPhoneNumber(phonenumber);
        user.setPassword(password);
        userService.update(user);
        return "redirect:/";
    }
}
