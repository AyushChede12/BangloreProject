package com.society.application.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.society.application.model.ClientMaster;
import com.society.application.repository.ClientMasterRepo;

@Service
public class FinancialService {
	
	@Autowired
	private ClientMasterRepo clientMasterRepo;

	public List<ClientMaster> getAllCustomers() {
		// TODO Auto-generated method stub
		return clientMasterRepo.findAll();
	}

}
