package com.frow.schemas;

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
    public Map<Integer, Integer> orderDetails;

    private int userId;
    private int numItems;
    private double totalPrice;
    private String purchaseDate;

    public OrderRecord() {
        // need to provide this in order for DB application to work
    }

    public OrderRecord(int userId, double totalPrice, Map<Integer,Integer> orderDetails) {
        this.userId = userId;
        this.totalPrice = totalPrice;
        this.purchaseDate = "";
        this.orderDetails = orderDetails;
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

    public void setOrderDetails(Map<Integer,Integer> orderDetails) {
        this.orderDetails = orderDetails;
    }
}
