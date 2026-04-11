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
		Signer signer1 = new Signer("Martin" , "Sweeney" , "martin.sweeney@gmail.com");
		Signer signer2 = new Signer("Adam" , "Regusea" , "adam.regusea@gmail.com");
		Signer signer3 = new Signer("Adam" , "Buxton" , "adam.buxton@gmail.com");
		Signer signer4 = new Signer("Amy" , "Adams" , "amy.adams@gmail.com");
		Signer signer5 = new Signer("Tig" , "Notaro" , "tig.notaro@gmail.com");
		Signer signer6 = new Signer("Yanis" , "Varoufakis" , "yanis.varoufakis@gmail.com");
		sRepository.save(signer1);
		sRepository.save(signer2);
		sRepository.save(signer3);
		sRepository.save(signer4);
		sRepository.save(signer5);
		sRepository.save(signer6);

		pRepository.save(new Petition("GLUAS", "Fully Fund the Galway Luas"));
		pRepository.save(new Petition("CLUAS", "Fully Fund the Cork Luas"));
		pRepository.save(new Petition("C.A.R.T", "Fully Fund Connemara Area Rapid Transit"));
		pRepository.save(new Petition("NIMBY Wind Turbines","Don't let them put any wind turbines in my back yard."));
		pRepository.save(new Petition("YIMBY Wind Turbines", "Please, for the love of god put turbines wherever you like and stop oil reliance."));

		System.out.println("FIND ALL");
		for (Petition petition : pRepository.findAll())
		{
			logger.info("title: {}, description: {}", petition.getTitle(), petition.getDescription());
		}
	}




}
