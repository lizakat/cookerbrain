package com.example.cookerbrain.controllers;

import com.example.cookerbrain.entities.Ingredient;
import com.example.cookerbrain.service.IngredientService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.security.Principal;

@Controller
@RequiredArgsConstructor
public class IngredientController {
    private final IngredientService ingredientService;


    @GetMapping("/show_shop_list") //shop list
    public String ingredients(Model model, Principal principal) {
        model.addAttribute("ingredients", ingredientService.listIngredients(principal));
        return "show_shop_list";
    }

    @PostMapping("/shop_list/add")
    public String createIngredient(Ingredient ingredient, Principal principal) {
        ingredientService.saveIngredient(principal, ingredient);
        return "redirect:/show_shop_list";
    }

    @PostMapping("/show_shop_list/delete")
    public String deleteIngredient(@RequestParam Long id) {
        ingredientService.deleteIngredient(id);
        return "redirect:/show_shop_list";
    }

}
