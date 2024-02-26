package com.frow.database;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.frow.schemas.Outfit;


public interface OutfitRepository extends JpaRepository<Outfit, Integer> {

    public List<Outfit> findOutfitsByFashionLineId(int fashionLineId);

}
