package com.frow.database;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.frow.schemas.CartRecord;


public interface CartRecordRepository extends JpaRepository<CartRecord, Integer> {
    
    public List<CartRecord> findAllByUserId(int userId);
}
