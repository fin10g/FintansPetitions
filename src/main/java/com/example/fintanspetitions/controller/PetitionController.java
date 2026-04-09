package com.example.fintanspetitions.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class PetitionController {

    @GetMapping("/")
    public String index() {
        return "Here are all of your active petitions";
    }

    @GetMapping("/create")
    public String create() {
        return "Here you can create petitions.";
    }

    @GetMapping("/search")
    public String search() {
        return "Search your petitions here.";
    }

    @GetMapping("/sign")
    public String sign() {
        return "sign petition here with name and email.";
    }

}