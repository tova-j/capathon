package com.frow.database;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.frow.schemas.FashionLine;

public interface FashionLineRepository extends JpaRepository<FashionLine, Integer> {
    
    public List<FashionLine> findAllFashionLinesByDesignerId(int designerId);

}
