package com.frow.schemas;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.Id;

@Entity
public class Piece {

    @Id
    @GeneratedValue
    private int id;

    private int outfitId;
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

    public Piece(int outfitId, String name, double price, String imageUrl, Gender gender, ClothingType clothingType) {
        this.outfitId = outfitId;
        this.name = name;
        this.price = price;
        this.gender = gender;
        this.clothingType = clothingType;
        this.imageUrl = imageUrl;
    }

    
    public int getId() {
        return id;
    }

    public int getOutfitId() {
        return outfitId;
    }

    public void setOutfitId(int outfitId) {
        this.outfitId = outfitId;
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


    public ClothingType getClothingType() {
        return clothingType;
    }

    public void setClothingType(ClothingType clothingType) {
        this.clothingType = clothingType;
    }

    @Override
    public String toString() {
        return "\n\tPiece [id=" + id + ", outfitId=" + outfitId + ", name=" + name + ", price=" + price + ", imageUrl=" + imageUrl + ", gender=" + gender + ", clothingType=" + clothingType
                + "]";
    }
}
