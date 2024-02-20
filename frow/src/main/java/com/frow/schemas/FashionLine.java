package com.frow.schemas;

import java.util.Collection;

public class FashionLine {
    private int id;
    private int designerId;
    private String designerName;
    private int numOutfits;
    private int[] outfitIds;
    private double price;
    private Season season;
    private int outfitIdsFillCount;

    enum Season {
        SPRING, SUMMER, FALL, WINTER
    }

    public FashionLine(int fashionLineId, int designerId, String designerName, double price, int numberOfOutfits, Season season) {
        super();
        this.id = fashionLineId;
        this.designerId = designerId;
        this.designerName = designerName;
        this.price = price;
        this.season = season;

        this.outfitIds = new int[numberOfOutfits];
    }

    public boolean isFull() {
        return outfitIdsFillCount >= numOutfits;
    }

    public void addOutfits(Collection<Outfit> outfits) {
        for (Outfit outfit : outfits) {
            addOneOutfit(outfit);
        }
    }

    public void addOneOutfit(Outfit outfit) {
        if (!isFull()) {
            outfitIds[outfitIdsFillCount] = outfit.getId();
            outfitIdsFillCount++;
        }
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

    public int getNumOutfits() {
        return numOutfits;
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
        return String.format("Fashion Line: [id=%d, designer=%s (id=%d), price=%f, season=%s, numOutfits=%d]", id, designerName, designerId, price, season.toString(), numOutfits);
    }
}
