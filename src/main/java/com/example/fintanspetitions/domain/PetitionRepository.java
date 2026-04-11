package com.example.fintanspetitions.domain;

import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.ListCrudRepository;

import java.util.List;

public interface PetitionRepository extends ListCrudRepository<Petition,Long> {
    List<Petition> findByTitle (String title);
}
