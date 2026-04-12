package com.example.fintanspetitions.domain;

import jakarta.persistence.*;
import jakarta.validation.constraints.Email;

@Entity
public class Signer {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long signerId;

    private String firstName, lastName, email;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "petition_id")
    private Petition petition;

    public Signer() {
    }

    public Signer(String firstName, String lastName, String email) {
        super();
        this.firstName = firstName;
        this.lastName = lastName;
        this.email = email;
    }

    public Long getSignerId() {
        return signerId;
    }

    public String getFirstName() {
        return firstName;
    }

    public String getLastName() {
        return lastName;
    }

    public String getEmail() {
        return email;
    }

    public Petition getPetition() {
        return petition;
    }

    public void setSignerId(Long signerId) {
        this.signerId = signerId;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public void setPetition(Petition petition) {
        this.petition = petition;
    }
}
