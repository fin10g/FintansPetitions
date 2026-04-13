package com.example.fintanspetitions.domain;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.ListCrudRepository;
import org.springframework.data.repository.query.Param;

import java.util.List;

public interface PetitionRepository extends JpaRepository<Petition,Long> {
    @Query("SELECT p FROM Petition p WHERE LOWER(p.title) LIKE LOWER(CONCAT('%', :term, '%')) OR LOWER(p.description) LIKE LOWER(CONCAT('%', :term, '%'))")
    List<Petition> searchByTitleOrDescription(@Param("term") String term);
}
