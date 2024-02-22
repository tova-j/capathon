package com.frow.schemas;

import java.util.HashMap;
import java.util.Map;

import org.hibernate.annotations.JdbcTypeCode;
import org.hibernate.type.SqlTypes;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.Id;

@Entity
public class OrderRecord {
    
    @Id
    @GeneratedValue
    private int orderId;

    @JdbcTypeCode(SqlTypes.JSON)
    private Map<Integer, Integer> orderDetails;

    private int userId;
    private int numItems;
    private double totalPrice;
    private String purchaseDate;

    public OrderRecord() {

    }

    public OrderRecord(int orderId, int userId) {
        this.orderId = orderId;
        this.userId = userId;
        this.totalPrice = 0;
        this.purchaseDate = "";
        this.orderDetails = new HashMap<>();
    }

    public int getOrderId() {
        return orderId;
    }

    public void addOrderItem(int itemId, int quantity) {
        orderDetails.put(itemId, quantity);
    }

    public Map<Integer, Integer> getOrderDetails() {
        return orderDetails;
    }

    public void setOrderId(int orderId) {
        this.orderId = orderId;
    }

    public String getPurchaseDate() {
        return purchaseDate;
    }

    public void setPurchaseDate(String purchaseDate) {
        this.purchaseDate = purchaseDate;
    }

    public double getTotalPrice() {
        return totalPrice;
    }

    public void setTotalPrice(double totalPrice) {
        this.totalPrice = totalPrice;
    }

    public int getUserId() {
        return userId;
    }

    public void setUserId(int userId) {
        this.userId = userId;
    }

    public int getNumItems() {
        return numItems;
    }

    public void setNumItems(int numItems) {
        this.numItems = numItems;
    }

    @Override
    public String toString() {
        return "OrderRecord [orderId=" + orderId + ", userId=" + userId + ", numItems=" + numItems + "]";
    }

    
}
