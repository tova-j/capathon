package com.frow.database;

import java.util.Collection;

import org.springframework.stereotype.Repository;

import com.frow.schemas.Designer;
import com.frow.schemas.FashionLine;
import com.frow.schemas.Piece;

import jakarta.persistence.EntityManager;
import jakarta.persistence.PersistenceContext;
import jakarta.persistence.TypedQuery;
import jakarta.transaction.Transactional;

@Repository
@Transactional
public class PieceReposity {

    // need to connect to database - use entity manager
    // Ent.Mgr. is interface to teh PersistenceContext
    @PersistenceContext
    EntityManager entityManager;

    // public Collection<Designer> findAllDesigners() {
    //     // make and use a named query
    //     TypedQuery<Designer> namedQuery = entityManager.createNamedQuery("find_all_designers", Designer.class);
    //     return namedQuery.getResultList();
    // }

    public Piece findPieceById(int id) {
        // using entityManager.find(what entity, primary key);
        return entityManager.find(Piece.class, id);
    }

}
