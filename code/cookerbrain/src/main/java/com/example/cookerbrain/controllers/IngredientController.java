package com.example.cookerbrain.controllers;

import com.example.cookerbrain.entities.Ingredient;
import com.example.cookerbrain.service.IngredientService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

@Controller
@RequiredArgsConstructor
public class IngredientController {
    private final IngredientService ingredientService;


    @GetMapping("/show_shop_list") //shop list
    public String ingredients(Model model) {
        model.addAttribute("ingredients", ingredientService.listIngredients());
        return "show_shop_list";
    }

    @PostMapping("/shop_list/add")
    public String createIngredient(@ModelAttribute("ingredientName") Ingredient ingredient) {
        ingredientService.saveIngredient(ingredient);
        return "redirect:/show_shop_list";
    }

    @PostMapping("/show_shop_list/delete")
    public String deleteIngredient(@RequestParam Long id) {
        ingredientService.deleteIngredient(id);
        return "redirect:/show_shop_list";
    }

}
