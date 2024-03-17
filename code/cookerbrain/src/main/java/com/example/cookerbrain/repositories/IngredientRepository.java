package com.example.cookerbrain.repositories;

import com.example.cookerbrain.entities.Ingredient;
import org.springframework.data.jpa.repository.JpaRepository;

public interface IngredientRepository extends JpaRepository<Ingredient, Long> {

}
