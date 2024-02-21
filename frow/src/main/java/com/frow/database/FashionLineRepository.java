package com.frow.database;

import java.util.Collection;
import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.lang.NonNull;

import com.frow.schemas.FashionLine;

public interface FashionLineRepository extends JpaRepository<FashionLine, Integer> {
    
    public Collection<FashionLine> findFashionLineByDesignerId(int designerId);

    public FashionLine findFashionLineById(int fashionLineId);

    public @NonNull List<FashionLine> findAll();

}
