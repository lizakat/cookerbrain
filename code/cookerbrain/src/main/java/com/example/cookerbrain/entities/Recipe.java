package com.example.cookerbrain.entities;

import lombok.AllArgsConstructor;
import lombok.Data;

import java.util.List;


@Data
@AllArgsConstructor
public class Recipe {
    private Long ID;
    private String title;
    private String cooking_method;
    private int minutes;
    private List<String> ingredients;

    public void setId(long l) {
    }

    public Object getId() {
        return null;
    }
}
