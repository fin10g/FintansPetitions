package com.example.fintanspetitions.domain;

import com.fasterxml.jackson.annotation.JsonIgnore;
import jakarta.persistence.*;
import jakarta.persistence.CascadeType;

import java.util.List;

@Entity
public class Petition {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    private String title;
    private String description;

    @JsonIgnore
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "petition")
    private List<Signer> signers;

    public Petition() {
    }

    public Petition(String title, String description){
            this.title = title;
            this.description = description;
    }

    public Long getId() {
        return id;
    }

    public String getTitle() {
        return title;
    }

    public String getDescription() {
        return description;
    }

    public List<Signer> getSigners() {
        return signers;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public void setSigners(List<Signer> signers) {
        this.signers = signers;
    }

    @Override
    public String toString(){
        return "Petition{" +
                "id=" + id +
                ", title ='" + title + '\'' +
                ", description ='" + description + '\'' +
                '}';
    }
}
