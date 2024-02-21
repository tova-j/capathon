package com.frow.schemas;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.Id;
import com.frow.enums.Season;

@Entity
public class FashionLine {

    @Id
    @GeneratedValue
    private int fashionLineId;
    
    private int designerId;
    private String designerName;
    private double price;
    private Season season;
    private int numOutfits;

    
    public FashionLine() {
        // need to provide this in order for DB application to work
    }

    public FashionLine(int designerId, String designerName, double price, Season season) {
        super();
        this.designerId = designerId;
        this.designerName = designerName;
        this.price = price;
        this.season = season;
    }

    public void addOutfit(int numNewOutfits) {
        numOutfits += numNewOutfits;
    }

    public int getId() {
        return fashionLineId;
    }

    public int getDesignerId() {
        return designerId;
    }

    public void setDesignerId(int designerId) {
        this.designerId = designerId;
    }

    public void setDesignerName(String designerName) {
        this.designerName = designerName;
    }

    public String getDesignerName() {
        return designerName;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public int getNumOutfits() {
        return numOutfits;
    }

    public void setSeason(Season season) {
        this.season = season;
    }

    public Season getSeason() {
        return season;
    }

    @Override
    public String toString() {
        return "FashionLine [fashionLineId=" + fashionLineId + ", designerId=" + designerId + ", designerName="
                + designerName + ", price=" + price + ", season=" + season + ", numOutfits=" + numOutfits + "]";
    }
}
