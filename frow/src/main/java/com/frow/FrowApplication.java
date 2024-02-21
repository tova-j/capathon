package com.frow;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.CommandLineRunner;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

import com.frow.database.FashionLineRepository;
// import com.frow.database.OutfitRepository;
// import com.frow.database.PieceReposity;

@SpringBootApplication
public class FrowApplication implements CommandLineRunner {

	// create a logger (use the org.slf4j one)
	private Logger logger = LoggerFactory.getLogger(this.getClass());

	// @Autowired
	// PieceReposity pieceRepo;

	// @Autowired
	// OutfitRepository outfitRepo;

	@Autowired
	FashionLineRepository fashionLineRepo;

	public static void main(String[] args) {
		SpringApplication.run(FrowApplication.class, args);
	}

	@Override
	public void run(String... args) throws Exception {
		// want to actually execute the query, so need to call
		// 	our predefined method on the corresponding instance of that class

		/* Previous tests
		// Testing Pieces repo
		logger.info("\nAll pieces -> {}", pieceRepo.findAll());
		logger.info("\nPiece id 1001 -> {}", pieceRepo.findPieceById(1001)); 
		logger.info("\nPiece id 1002 -> {}", pieceRepo.findPieceById(1002)); 
		logger.info("\nPiece id 1003 -> {}", pieceRepo.findPieceById(1003)); 
		logger.info("\nPieces with Outfit Id 5001 -> {}", pieceRepo.findPiecesByOutfitId(5001));
		logger.info("\nPieces with Outfit Id 5002 -> {}", pieceRepo.findPiecesByOutfitId(5002));

		// Testing Outfits repo
		logger.info("\n\nAll outfits -> {}\n", outfitRepo.findAll());
		logger.info("\n\nOutfit id 5002 -> {}\n", outfitRepo.findOutfitById(5002));
		logger.info("\n\nOutfit with Fashion Line id 8001 -> {}\n", outfitRepo.findOutfitsByFashionLineId(8001));

		

		// Testing Fashion Line repo
		logger.info("\n\nAll fashion lines -> {}\n", fashionLineRepo.findAll());
		logger.info("\n\nFashion Line id 8002 -> {}\n", fashionLineRepo.findFashionLineById(8002));
		logger.info("\n\nFashion lines with designer id 1 -> {}\n", fashionLineRepo.findFashionLineByDesignerId(1));
		*/
	}

}
