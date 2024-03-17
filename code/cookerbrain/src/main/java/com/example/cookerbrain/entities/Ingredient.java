package com.example.cookerbrain.entities;

import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;


@Entity
@Table(name = "ingredient")
@Data
@AllArgsConstructor
@NoArgsConstructor
public class Ingredient {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name="id")
    private Long ID;
    @Column(name="name")
    private String name;

    public void setId(long l) {
        this.ID = l;
    }

    public Object getId() {
        return this.ID;
    }
}
