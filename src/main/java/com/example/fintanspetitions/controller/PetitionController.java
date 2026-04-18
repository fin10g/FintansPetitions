package com.example.fintanspetitions.controller;

import com.example.fintanspetitions.domain.Petition;
import com.example.fintanspetitions.domain.PetitionRepository;
import com.example.fintanspetitions.domain.Signer;
import com.example.fintanspetitions.domain.SignerRepository;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Controller
public class PetitionController {

    private final PetitionRepository pRepository;
    private final SignerRepository signerRepository;

    public PetitionController(PetitionRepository pRepository, SignerRepository signerRepository) {
        this.pRepository = pRepository;
        this.signerRepository = signerRepository;
    }

    //Requests the index.jte page and sends the petition repository through as a model attribute
    @GetMapping("/")
    public String index(Model model) {
        model.addAttribute("petitions", pRepository.findAll());
        return "index";
    }

    //Requests the create.jte page and uses the petition entity as a model attribute
    @GetMapping("/create")
    public String create(Model model) {
        Petition petition = new Petition();
        petition.setTitle("Galway bypass NIMBY");
        petition.setDescription("I'm very concerned about the bees, so please no more roads.");
        model.addAttribute("petition",petition);
        return "create";
    }

    //Sends Post Request from create button to persist in pRepository and redirects to index.jte
    @PostMapping("/create/petition")
    public String createPetition(
            @RequestParam String title,
            @RequestParam String description) {
     Petition petition = new Petition(title, description);
     pRepository.save(petition);
     return "redirect:/";
    }

    //Returns a petition page from requested id
    @GetMapping("/petition/{id}")
    public String petitionDetail(@PathVariable Long id, Model model) {
        Petition petition = pRepository.findById(id)
                .orElseThrow(() -> new RuntimeException("Petition not found"));
        model.addAttribute("petition", petition);
        return "petition";
    }

    //Sends post request with input data from petition.
    @PostMapping("/petition/{id}/sign")
    public String signPetition(
            @PathVariable Long id,
            @RequestParam String firstName,
            @RequestParam String lastName,
            @RequestParam String email) {

        Petition petition = pRepository.findById(id)
                .orElseThrow(() -> new RuntimeException("Petition not found"));

        Signer signer = new Signer(firstName, lastName, email);
        signer.setPetition(petition);
        signerRepository.save(signer);

        return "redirect:/petition/" + id;
    }

    //Get request that passes a search term and pRepository as a model attribute to be rendered in search.jte
    @GetMapping("/search")
    public String search(@RequestParam(required = false) String term, Model model) {
        if (term != null && !term.isBlank()) {
            List<Petition> results = pRepository.searchByTitleOrDescription(term);
            model.addAttribute("results", results);
            model.addAttribute("term", term);
        }
        return "search";
    }

    @GetMapping("/result")
    public String result(Model model) {
        //model.addAttribute("petitions", pRepository.findByTitle(search));
        return "result";
    }

}