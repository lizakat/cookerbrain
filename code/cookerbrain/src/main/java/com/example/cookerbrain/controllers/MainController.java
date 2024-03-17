package com.example.cookerbrain.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class MainController {
    @GetMapping("/index")
    public String index() {
        return "index";
    }

    @GetMapping("/heart")
    public String heart() {
        return "heart";
    }
    @GetMapping("/shop_list")
    public String shopList() {
        return "shop_list";
    }

    /*@GetMapping("/signIn")
    public String signIn(Authentication authentication) {
        if (authentication != null) {
            return "redirect:/account";    //вход выполнен, перейти на страницу аккаунта
        }
        return "signIn.html";
    }*/

   /* @GetMapping("/account")
    public String account() { return "account.html"; }*/
}
