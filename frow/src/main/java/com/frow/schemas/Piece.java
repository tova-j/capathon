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
    private String imageUrl;
    private Gender gender;
    private ClothingType clothingType;

    enum Gender {
        FEMALE, MALE, UNISEX
    }

    enum ClothingType {
        TOPS, BOTTOMS, ONEPIECES, SHOES, ACCESSORIES
    }

    public Piece() {
        // this is the default, no argument constructor.
        // usually provided by Java as default. 
        // since we provided constructor with args below, need to provide this one too
        // in order for DB application to work
    }

    public Piece(String name, double price, String imageUrl, Gender gender, ClothingType clothingType) {
        this.name = name;
        this.price = price;
        this.gender = gender;
        this.clothingType = clothingType;
        this.imageUrl = imageUrl;
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

    public String getImageUrl() {
        return imageUrl;
    }


    public void setImageUrl(String imageUrl) {
        this.imageUrl = imageUrl;
    }


    public Gender getGender() {
        return gender;
    }


    public void setGender(Gender gender) {
        this.gender = gender;
    }


    public ClothingType getclothingType() {
        return clothingType;
    }


    public void setclothingType(ClothingType clothingType) {
        this.clothingType = clothingType;
    }

    @Override
    public String toString() {
        return "Piece [id=" + id + ", name=" + name + ", price=" + price + ", imageUrl=" + imageUrl + ", gender=" + gender + ", clothingType=" + clothingType
                + "]";
    }
}
