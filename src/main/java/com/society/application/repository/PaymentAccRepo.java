package com.society.application.repository;

import com.society.application.model.PaymentAcc;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface PaymentAccRepo extends JpaRepository<PaymentAcc, Integer> {
	PaymentAcc findBytransactionId(String pendingTransaction);
}
