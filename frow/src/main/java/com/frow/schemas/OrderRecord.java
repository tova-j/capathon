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
    public Map<Integer, Integer> orderDetails;

    private int userId;
    private int numItems;
    private int pieceId;
    
    public OrderRecord() {

    }


    public OrderRecord(int userId, int numItems) {
        this.pieceId = pieceId;
        this.userId = userId;
        this.numItems = numItems;
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
