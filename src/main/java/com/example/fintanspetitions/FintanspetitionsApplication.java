package com.example.fintanspetitions;


import com.example.fintanspetitions.domain.Petition;
import com.example.fintanspetitions.domain.PetitionRepository;
import com.example.fintanspetitions.domain.Signer;
import com.example.fintanspetitions.domain.SignerRepository;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.boot.CommandLineRunner;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
public class FintanspetitionsApplication implements CommandLineRunner {

	private final PetitionRepository pRepository;
	private final SignerRepository sRepository;

	private static final Logger logger = LoggerFactory.getLogger(FintanspetitionsApplication.class);

	public FintanspetitionsApplication(PetitionRepository pRepository, SignerRepository sRepository)
	{
		this.pRepository = pRepository;
		this.sRepository = sRepository;
	}

	public static void main(String[] args) {
		SpringApplication.run(FintanspetitionsApplication.class, args);

	}

	@Override
	public void run(String... args) throws Exception
	{
		System.out.println("FIND ALL");
		for (Petition petition : pRepository.findAll())
		{
			logger.info("title: {}, description: {}", petition.getTitle(), petition.getDescription());
		}
	}




}
