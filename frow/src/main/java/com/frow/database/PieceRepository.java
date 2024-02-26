package com.frow.database;

import java.util.Collection;
import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.lang.NonNull;
import org.springframework.stereotype.Repository;

import com.frow.schemas.Piece;

import jakarta.transaction.Transactional;

@Repository
@Transactional
public interface PieceRepository extends JpaRepository<Piece, Integer> {

    public List<Piece> findPiecesByOutfitId(int outfitId);

    public Piece findPieceById(int pieceId);

    public List<Piece> findAllByOutfitId(int outfitId);

    public @NonNull List<Piece> findAll();

}
