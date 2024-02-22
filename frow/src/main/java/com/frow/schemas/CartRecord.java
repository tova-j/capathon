package com.frow.schemas;

import java.util.HashMap;
import java.util.Map;

import org.hibernate.annotations.JdbcTypeCode;
import org.hibernate.type.SqlTypes;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.Id;

@Entity
public class CartRecord {
    
    @Id
    @GeneratedValue
    private int orderId;

    @JdbcTypeCode(SqlTypes.JSON)
    private Map<Integer, Integer> orderDetails;

    private int userId;
    private int numItems;
    private int pieceId;

    public CartRecord() {

    }


    public CartRecord(int pieceId, int userId, int numItems) {
        this.pieceId = pieceId;
        this.userId = userId;
        this.numItems = numItems;
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
        return "CartRecord [orderId=" + orderId + ", userId=" + userId + ", numItems=" + numItems + "]";
    }

    
}
