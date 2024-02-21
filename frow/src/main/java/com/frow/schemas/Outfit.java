package com.frow.schemas;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.Id;

@Entity
public class Outfit {

    @Id
    @GeneratedValue
    private int outfitId;

    private int fashionLineId;
    private double price;
    private int numPieces;
    private String imageUrl;

    public Outfit() {
        // need to provide this in order for DB application to work
    }

    public Outfit(int fashionLineId, int price, String imageUrl) {
        this.fashionLineId = fashionLineId;
        this.price = price;
        this.imageUrl = imageUrl;
    }

    public void addPiece(Integer numNewPieces) {
        numPieces += numNewPieces;
    }

    public int getId() {
        return outfitId;
    }

    public int getFashionLineId() {
        return fashionLineId;
    }

    public void setFashionLineId(int fashionLineId) {
        this.fashionLineId = fashionLineId;
    }

    public int getNumPieces() {
        return numPieces;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public double getPrice() {
        return price;
    }

    public String getImageUrl() {
        return imageUrl;
    }

    public void setImageUrl(String imageUrl) {
        this.imageUrl = imageUrl;
    }

    @Override
    public String toString() {
        return String.format("Outfit [id=%d, fashionLine=%d, price=%f, imageUrl=%s, numPieces=%d]", outfitId, fashionLineId, price, imageUrl, numPieces);
    }
}
