package com.frow.database;

import java.util.Collection;

import org.springframework.data.jpa.repository.JpaRepository;

import com.frow.schemas.OrderRecord;

public interface OrderRecordRepository extends JpaRepository<OrderRecord, Integer> {
    
    public Collection<OrderRecord> findOrderByUserId(int userId);
}
