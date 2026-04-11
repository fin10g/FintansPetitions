package com.example.fintanspetitions.controller;

import com.example.fintanspetitions.domain.Petition;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@Controller
public class PetitionController {

    @GetMapping("/")
    public String index(Model model) {
        Petition petition = new Petition();
        petition.setTitle("Galway bypass NIMBY");
        petition.setDescription("I'm very concerned about the bees, so please no more roads.");
        model.addAttribute("petition",petition);
        return "index";
    }

    @GetMapping("/create")
    public String create(Model model) {
        Petition petition = new Petition();
        petition.setTitle("Galway bypass NIMBY");
        petition.setDescription("I'm very concerned about the bees, so please no more roads.");
        model.addAttribute("petition",petition);
        return "create";
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