package com.example.fintanspetitions.domain;

import org.springframework.data.annotation.Id;
import org.springframework.data.relational.core.mapping.Table;

@Table("petitions")
public class Petition {

    @id
    private Long id;
    private String title;
    private String description;

    private Signer signer;

    public Petition() {
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

    public Signer getSigner() {
        return signer;
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

    public void setSigner(Signer signer) {
        this.signer = signer;
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
