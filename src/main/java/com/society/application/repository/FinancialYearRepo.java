package com.society.application.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.society.application.model.AddInvestment;
import com.society.application.model.FinancialYear;

@Repository
public interface FinancialYearRepo extends JpaRepository<FinancialYear, Long> {

}
