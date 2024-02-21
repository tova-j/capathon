package com.frow.schemas;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.Id;

@Entity
public class Piece {

    @Id
    @GeneratedValue
    private int id;

    private String name;
    private double price;
    private Gender gender;
    private ClothingType type;

    enum Gender {
        FEMALE, MALE, UNISEX
    }

    enum ClothingType {
        TOPS, BOTTOMS, ONEPIECES, SHOES, ACCESSORIES
    }

    public Piece(String name, double price, Gender gender, ClothingType clothingType) {
        this.name = name;
        this.price = price;
        this.gender = gender;
        this.type = clothingType;
    }

    
    public int getId() {
        return id;
    }


    public String getName() {
        return name;
    }


    public void setName(String name) {
        this.name = name;
    }


    public double getPrice() {
        return price;
    }


    public void setPrice(double price) {
        this.price = price;
    }


    public Gender getGender() {
        return gender;
    }


    public void setGender(Gender gender) {
        this.gender = gender;
    }


    public ClothingType getType() {
        return type;
    }


    public void setType(ClothingType type) {
        this.type = type;
    }

    @Override
    public String toString() {
        return "Piece [id=" + id + ", name=" + name + ", price=" + price + ", gender=" + gender + ", type=" + type
                + "]";
    }
}
