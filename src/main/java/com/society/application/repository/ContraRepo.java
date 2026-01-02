package com.society.application.repository;

import java.time.LocalDate;
import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.society.application.model.Contra;

@Repository
public interface ContraRepo extends JpaRepository<Contra, Long> {

	List<Contra> findByEntryDate(LocalDate today);

	Contra findByGlHeadNo(Long debitGLHeadNo);

	@Query("SELECT uniqueId, SUM(CASE WHEN transactionType = 'credit' THEN transactionAmount ELSE -transactionAmount END) AS transactionAmount FROM Contra GROUP BY uniqueId")
	List<Object[]> calculateNewAmount();

}

/*
 * @Query("SELECT bankId, SUM(CASE WHEN transactionType = 'credit' THEN amount ELSE -amount END) AS amount FROM Receipt GROUP BY bankId"
 * ) List<Object[]> calculateNewAmounts();
 */