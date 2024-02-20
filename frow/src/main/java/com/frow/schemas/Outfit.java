package com.frow.schemas;

import java.util.ArrayList;
import java.util.Collection;

public class Outfit {
    private int id;
    private int fashionLineId;
    private double price;
    private ArrayList<Piece> pieces;
    private int numPieces;

    public Outfit(int outfitId, int fashionLineId) {
        this.id = outfitId;
        this.fashionLineId = fashionLineId;

        this.pieces = new ArrayList<>();
    }

    public void addPieces(Collection<Piece> newPieces) {
        for (Piece piece : newPieces) {
            addOnePiece(piece);
        }
    }

    public void addOnePiece(Piece newPiece) {
        pieces.add(newPiece);
        numPieces++;
    }

    public int getId() {
        return id;
    }

    public String getPieces() {
        StringBuilder builder = new StringBuilder();
        for (Piece piece : pieces) {
            builder.append("\n\t" + piece);
        }
        return builder.toString();
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

    @Override
    public String toString() {
        return String.format("Outfit [id=%d, fashionLine=%d, price=%f, numPieces=%d]", id, fashionLineId, price, numPieces);
    }
}