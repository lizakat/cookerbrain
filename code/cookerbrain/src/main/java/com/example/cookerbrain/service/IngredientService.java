package com.example.cookerbrain.service;

import com.example.cookerbrain.entities.Ingredient;
import com.example.cookerbrain.repositories.IngredientRepository;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Slf4j
@RequiredArgsConstructor
@Service
public class IngredientService {
    private List<Ingredient> ingredients = new ArrayList<>();
    private final IngredientRepository ingredientRepository;
    private long ID = 0;

   /* {
        ingredients.add(new Ingredient(++ID, "Paper"));
        ingredients.add(new Ingredient(++ID, "Sweets"));
        ingredients.add(new Ingredient(++ID, "Chocolate"));
    }*/

    //public List<Ingredient> listIngredients() { return ingredients; }
    public List<Ingredient> listIngredients() {
        return ingredientRepository.findAll();
    }


    public void saveIngredient(Ingredient ingredient) {
        log.info("Saving new {}", ingredient);
        ingredientRepository.save(ingredient);
        /*ingredient.setId(++ID);
        ingredients.add(ingredient);*/
    }

    public void deleteIngredient(Long id) {
        log.info("Deliting {}", id);
        /*ingredients.removeIf(ingredient -> ingredient.getId().equals(id));*/
        ingredientRepository.deleteById(id);
    }

/*    public Ingredient getIngredientById(Long id) {
        for (Ingredient ingredient : ingredients) {
            if (ingredient.getId().equals(id)) return ingredient;
        }
        return null;
    }*/
}

