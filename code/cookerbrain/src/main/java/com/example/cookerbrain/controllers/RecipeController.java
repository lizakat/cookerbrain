package com.example.cookerbrain.controllers;

import com.example.cookerbrain.entities.Recipe;
import com.example.cookerbrain.service.RecipeService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

@Controller
@RequiredArgsConstructor
public class RecipeController {
    private final RecipeService recipeService;

    @GetMapping("/my_recipes") //my recipes page fav+added
    public String recipes(Model model) {
        model.addAttribute("recipes", recipeService.listRecipes());
        return "recipes";
    }

    @GetMapping("/recipe/{id}")
    public String recipeInfo(@PathVariable Long id, Model model) {
        model.addAttribute("recipe", recipeService.getRecipeById(id));
        return "recipe-info";
    }

    @PostMapping("/recipe/create_recipe")
    public String createProduct(Recipe recipe) {
        recipeService.saveRecipe(recipe);
        return "redirect:/my_recipes";
    }

    @PostMapping("/recipe/delete/{id}")
    public String deleteRecipe(@PathVariable Long id) {
        recipeService.deleteRecipe(id);
        return "redirect:/";
    }

}
