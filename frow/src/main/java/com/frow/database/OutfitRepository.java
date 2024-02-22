package com.frow.database;

import java.util.Collection;
import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.lang.NonNull;

import com.frow.schemas.Outfit;


public interface OutfitRepository extends JpaRepository<Outfit, Integer> {

    public List<Outfit> findOutfitsByFashionLineId(int fashionLineId);

    public Outfit findOutfitById(int outfitId);

    public @NonNull List<Outfit> findAll();

}
