package com.example.cookerbrain.service;

import com.example.cookerbrain.entities.Ingredient;
import com.example.cookerbrain.entities.User;
import com.example.cookerbrain.repositories.IngredientRepository;
import com.example.cookerbrain.repositories.UserRepository;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;

import java.security.Principal;
import java.util.ArrayList;
import java.util.List;

@Slf4j
@RequiredArgsConstructor
@Service
public class IngredientService {
    private List<Ingredient> ingredients = new ArrayList<>();
    private final IngredientRepository ingredientRepository;
    private final UserRepository userRepository;
    private long ID = 0;

/*
    public List<Ingredient> listIngredients() {
        return ingredientRepository.findAll();
    }
*/
    public List<Ingredient> listIngredients(Principal principal) {
        User user = getUserByPrincipal(principal);
        return ingredientRepository.findByUserEmail(user.getEmail());
    }


    public void saveIngredient(Principal principal, Ingredient ingredient) {
        ingredient.setUser(getUserByPrincipal(principal));
        log.info("Saving new {}", ingredient.getName());
        ingredientRepository.save(ingredient);
    }
    public User getUserByPrincipal(Principal principal){
        if(principal == null) return new User();
        return userRepository.findByEmail(principal.getName());
    }

    public void deleteIngredient(Long id) {
        log.info("Deliting {}", id);
        ingredientRepository.deleteById(id);
    }

}

