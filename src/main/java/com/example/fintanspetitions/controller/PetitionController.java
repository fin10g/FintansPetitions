package com.example.fintanspetitions.controller;

import com.example.fintanspetitions.domain.Petition;
import com.example.fintanspetitions.domain.PetitionRepository;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

@Controller
public class PetitionController {

    private final PetitionRepository pRepository;

    public PetitionController(PetitionRepository pRepository) {
        this.pRepository = pRepository;
    }

    @GetMapping("/")
    public String index(Model model) {
        model.addAttribute("petitions", pRepository.findAll());
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

    @PostMapping("/create/petition")
    public String createPetition(
            @RequestParam String title,
            @RequestParam String description) {
     Petition petition = new Petition(title, description);
     pRepository.save(petition);
     return "redirect:/";
    }

    @GetMapping("/search")
    public String search() {
        return "search";
    }

    @GetMapping("/sign")
    public String sign() {
        return "sign";
    }

    @GetMapping("/result")
    public String result(Model model) {
        //model.addAttribute("petitions", pRepository.findByTitle(search));
        return "result";
    }

}