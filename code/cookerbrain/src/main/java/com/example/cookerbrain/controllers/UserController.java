package com.example.cookerbrain.controllers;

import com.example.cookerbrain.entities.User;
import com.example.cookerbrain.service.IngredientService;
import com.example.cookerbrain.service.UserService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import java.security.Principal;

@Controller
@RequiredArgsConstructor
public class UserController {
    private final UserService userService;
    private final IngredientService ingredientService;
    @GetMapping("/login")
    public String login() {
        return "login";
    }

    @GetMapping("/account")
    public String account(Model model, Principal principal) {

        model.addAttribute("user", ingredientService.getUserByPrincipal(principal));
        return "account";
    }

    @GetMapping("/registration")
    public String registration() {
        return "registration";
    }

    @PostMapping("/registration")
    public String createUser(User user, Model model) {
        if(!userService.createUser(user)){
            model.addAttribute("errorMassage", "Пользователь с email: " +user.getEmail() + " уже существует");
            return "registration";
        }
        return "redirect:/login";
    }

    @GetMapping("/hello")
    public String securityUrl() {
        return "hello";
    }
}
