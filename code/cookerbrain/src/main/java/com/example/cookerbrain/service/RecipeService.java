package com.example.cookerbrain.service;

import com.example.cookerbrain.entities.Recipe;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

@Service
public class RecipeService {
    private List<Recipe> recipes = new ArrayList<>();
    private long ID = 0;

    {
        List<String> ingredients = Arrays.asList("milk", "sugar", "flour");
        List<String> ingredients1 = Arrays.asList("potato", "carrot", "tomato", "cucumber");
       recipes.add(new Recipe(++ID, "PlayStation 5", "Simple description", 67000, ingredients));
       recipes.add(new Recipe(++ID, "Iphone 8", "Simple description", 24000, ingredients1));
    }

    public List<Recipe> listRecipes() { return recipes; }

    public void saveRecipe(Recipe recipe) {
        recipe.setId(++ID);
        recipes.add(recipe);
    }

    public void deleteRecipe(Long id) {
        recipes.removeIf(recipe -> recipe.getId().equals(id));
    }

    public Recipe getRecipeById(Long id) {
        for (Recipe recipe : recipes) {
            if (recipe.getId().equals(id)) return recipe;
        }
        return null;
    }
}

