package com.society.application.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.society.application.model.CompanyAdministration;

@Repository
public interface CompanyAdministrationRepo extends JpaRepository<CompanyAdministration, Integer> {

	CompanyAdministration findBycompanyName(String companyName);

	List<CompanyAdministration> findByshortName(String companyName);

	CompanyAdministration findByiDcompany(int iD);

}
