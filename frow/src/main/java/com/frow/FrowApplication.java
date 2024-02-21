package com.frow;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.CommandLineRunner;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

import com.frow.database.PieceReposity;

@SpringBootApplication
public class FrowApplication implements CommandLineRunner {

	// create a logger (use the org.slf4j one)
	private Logger logger = LoggerFactory.getLogger(this.getClass());

	@Autowired
	PieceReposity pieceRepo;

	public static void main(String[] args) {
		SpringApplication.run(FrowApplication.class, args);
	}

	@Override
	public void run(String... args) throws Exception {
		// want to actually execute the query, so need to call
		// 	our predefined method on the corresponding instance of that class

		logger.info("\nAll pieces -> {}", pieceRepo.findAll());
		logger.info("\nPiece id 1001 -> {}", pieceRepo.findPieceById(1001)); 
		logger.info("\nPiece id 1002 -> {}", pieceRepo.findPieceById(1002)); 
		logger.info("\nPiece id 1003 -> {}", pieceRepo.findPieceById(1003)); 

		logger.info("\nPieces with Outfit Id 5011 -> {}", pieceRepo.findPiecesByOutfitId(5011));
		logger.info("\nPieces with Outfit Id 5012 -> {}", pieceRepo.findPiecesByOutfitId(5012));
	}

}
