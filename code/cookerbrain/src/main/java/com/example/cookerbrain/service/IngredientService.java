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

    public List<Ingredient> listIngredients() {
        return ingredientRepository.findAll();
    }


    public void saveIngredient(Ingredient ingredient) {
        log.info("Saving new {}", ingredient);
        ingredientRepository.save(ingredient);
    }

    public void deleteIngredient(Long id) {
        log.info("Deliting {}", id);
        ingredientRepository.deleteById(id);
    }

}

