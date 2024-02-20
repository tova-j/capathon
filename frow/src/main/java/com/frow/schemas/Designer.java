package com.frow.schemas;

import java.util.ArrayList;
import java.util.Collection;

public class Designer {
    private int id;
    private String name;
    private int numFashionLines;
    private ArrayList<Integer> fashionLineIds;

    public Designer(int id, String name) {
        this.id = id;
        this.name = name;
        this.fashionLineIds = new ArrayList<>();
    }

    public void addFashionLines(Collection<FashionLine> fashionLines) {
        for (FashionLine line : fashionLines) {
            addOneFashionLine(line);
        }
    }

    public void addOneFashionLine(FashionLine fashionLine) {
        fashionLineIds.add(fashionLine.getId());
        numFashionLines++;
    }

    public int getId() {
        return id;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getName() {
        return name;
    }

    public int getNumFashionLines() {
        return numFashionLines;
    }

    public Collection<Integer> getFashionLineIds() {
        return fashionLineIds;
    }

    @Override
    public String toString() {
        return "Designer [name=" + name + " (id=" + id + "), numFashionLines=" + numFashionLines + "]";
    }
}
