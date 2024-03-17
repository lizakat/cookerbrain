package com.example.cookerbrain.repositories;

import com.example.cookerbrain.entities.Ingredient;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import java.security.Principal;
import java.util.List;

public interface IngredientRepository extends JpaRepository<Ingredient, Long> {

    @Query("SELECT i FROM Ingredient i WHERE i.user.email = ?1")
    List<Ingredient> findByUserEmail(String email);

}
