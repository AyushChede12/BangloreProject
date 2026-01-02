package com.society.application.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Repository;

import com.society.application.model.Cashier;

import javax.transaction.Transactional;
import java.time.LocalDate;
import java.util.List;

@Repository
public interface CashierRepo extends JpaRepository<Cashier, Integer> {

	List<Cashier> findByEntryDate(LocalDate today);

	List<Cashier> findByglHeadNo(String glHeadNo);

	@Query("SELECT c FROM Cashier c WHERE c.glHeadNo = :glHeadNo AND c.payment = :payment")
	List<Cashier> findByGlHeadNoAndPayment(String glHeadNo, String payment);

	@Transactional
	void deleteByid(long id);

	@Query("SELECT c FROM Cashier c " + "WHERE c.scroll = :scroll " + "AND c.glHeadNo = :glHeadNo "
			+ "AND c.accountNo = :accountNo " + "AND c.amount = :amount "
			+ "AND c.selectAccountHolder = :selectAccountHolder")
	List<Cashier> findByScrollAndGlHeadNoAndAccountNoAndAmountAndSelectAccountHolder(@Param("scroll") Long scroll,
			@Param("glHeadNo") String glHeadNo, @Param("accountNo") String accountNo, @Param("amount") String amount,
			@Param("selectAccountHolder") String selectAccountHolder);

	List<Cashier> findBytransactionID(String cashierID);
}
