package com.frow.schemas;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.Id;

@Entity
public class CartItem {

    @Id
    @GeneratedValue
    private int pieceId;

    private int numItems;

    public CartItem() {
        // this is the default, no argument constructor.
        // usually provided by Java as default. 
        // since we provided constructor with args below, need to provide this one too
        // in order for DB application to work
    }

    // public CartItem(int outfitId, String name, double price, String imageUrl, Gender gender, ClothingType clothingType) {
    //     this.outfitId = outfitId;
    //     this.name = name;
    //     this.price = price;
    //     this.gender = gender;
    //     this.clothingType = clothingType;
    //     this.imageUrl = imageUrl;
    // }

    
    public int getId() {
        return pieceId;
    }

    @Override
    public String toString() {
        return "\n\tPiece [id=" + pieceId + ", noOfItems=" + numItems + "]";
    }
}
