package com.frow.schemas;

import java.util.Collection;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.Id;

public class FashionLine {

    private int id;
    
    private int designerId;
    private String designerName;
    private int[] outfitIds;
    private double price;
    private Season season;
    private int outfitIdsFillCount;

    enum Season {
        SPRING, SUMMER, FALL, WINTER
    }

    public FashionLine(int designerId, String designerName, double price, Season season) {
        super();
        this.designerId = designerId;
        this.designerName = designerName;
        this.price = price;
        this.season = season;
        this.outfitIds = new int[0]; // Assuming MAX_OUTFIT_COUNT is a constant or variable representing the maximum number of outfits
    }


    

    public int getId() {
        return id;
    }

    public int getDesignerId() {
        return designerId;
    }

    public String getDesignerName() {
        return designerName;
    }

    public void setPrice(int price) {
        this.price = price;
    }

    public double getPrice() {
        return price;
    }

    public int[] getOutfitIds() {
        return outfitIds;
    }

    public void setSeason(Season season) {
        this.season = season;
    }

    public Season getSeason() {
        return season;
    }

    @Override 
    public String toString() {
        return String.format("Fashion Line: [id=%d, designer=%s (id=%d), price=%f, season=%s, numOutfits=%d]", id, designerName, designerId, price, season.toString());
    }
}
