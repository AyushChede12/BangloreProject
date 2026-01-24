package com.society.application.service;

import java.math.BigDecimal;


import java.time.LocalDateTime;
import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.society.application.model.CasteMaster;
import com.society.application.model.CategoryMaster;
import com.society.application.model.CompanyMaster;
import com.society.application.model.FinancialYear;
import com.society.application.model.RelativeRelationMaster;
import com.society.application.model.CompanyMaster;
import com.society.application.model.UserMaster;
import com.society.application.repository.CasteMasterRepo;
import com.society.application.repository.CategoryMasterRepo;
import com.society.application.repository.CompanyMasterRepo;
import com.society.application.repository.FinancialYearRepo;
import com.society.application.repository.RelativeRelationMasterRepo;
import com.society.application.repository.UserMasterRepo;

@Service
public class CustomizationService {

@Autowired
FinancialYearRepo financialYearRepo;


//   FinancialYear 
	public FinancialYear saveFinancialYear(FinancialYear financialYear) {
		// TODO Auto-generated method stub
		if (financialYear.getId() != null) {
			FinancialYear existing = financialYearRepo.findById(financialYear.getId()).orElseThrow(
					() -> new RuntimeException("Financial Year not found with ID: " + financialYear.getId()));

			existing.setFyName(financialYear.getFyName());
			existing.setfDate(financialYear.getfDate());
			existing.settDate(financialYear.gettDate());

			return financialYearRepo.save(existing);
		} else {
			return financialYearRepo.save(financialYear);
		}
	}
	

	public List<FinancialYear> getAllFinancialYearDetails() {
		return financialYearRepo.findAll();
	}


	public Optional<FinancialYear> findFinancialYearById(Long id) {
		return financialYearRepo.findById(id);
	}


	public boolean deleteFinancialYear(Long id) {
		if (financialYearRepo.existsById(id)) {
			financialYearRepo.deleteById(id);
			return true;
		}
		return false;
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
//	public RelativeRelationMaster saveRelativeModule(RelativeRelationMaster relativeModule) {
//		// TODO Auto-generated method stub
//		if (relativeModule.getId() != null) {
//			RelativeRelationMaster existing = relativeRepo.findById(relativeModule.getId())
//					.orElseThrow(() -> new RuntimeException("Relative not found with ID: " + relativeModule.getId()));
//
//			existing.setName(relativeModule.getName());
//
//			return relativeRepo.save(existing);
//		} else {
//			return relativeRepo.save(relativeModule);
//		}
//	}
//
//	public CasteMaster saveCasteModule(CasteMaster casteMaster) {
//		// TODO Auto-generated method stub
//		if (casteMaster.getId() != null) {
//			CasteMaster existing = casteRepo.findById(casteMaster.getId())
//					.orElseThrow(() -> new RuntimeException("Caste not found with ID: " + casteMaster.getId()));
//
//			existing.setCaste(casteMaster.getCaste());
//
//			return casteRepo.save(existing);
//		} else {
//			return casteRepo.save(casteMaster);
//		}
//	}
//
//	public CategoryMaster saveCategoryModule(CategoryMaster categoryModule) {
//		// TODO Auto-generated method stub
//		if (categoryModule.getId() != null) {
//			CategoryMaster existing = categoryMasterRepo.findById(categoryModule.getId())
//					.orElseThrow(() -> new RuntimeException("Category not found with ID: " + categoryModule.getId()));
//
//			existing.setCategoryName(categoryModule.getCategoryName());
//
//			return categoryMasterRepo.save(existing);
//		} else {
//			return categoryMasterRepo.save(categoryModule);
//		}
//	}
//
//	public Optional<BranchMaster> findBranchDataById(Long id) {
//		// TODO Auto-generated method stub
//		return branchMasterRepo.findById(id);
//	}
//
//	public BranchMaster saveBranchModule(BranchMaster branchModule) {
//		// TODO Auto-generated method stub
//		if (branchModule.getId() != null) {
//			BranchMaster existing = branchMasterRepo.findById(branchModule.getId())
//					.orElseThrow(() -> new RuntimeException("Branch not found with ID: " + branchModule.getId()));
//
//			existing.setBankID(branchModule.getBankID());
//			existing.setName(branchModule.getName());
//			existing.setBranchCode(branchModule.getBranchCode());
//			existing.setOpening_date(branchModule.getOpening_date());
//			existing.setAddress(branchModule.getAddress());
//			existing.setPin(branchModule.getPin());
//			existing.setState(branchModule.getState());
//			existing.setContactPerson(branchModule.getContactPerson());
//			existing.setContactNo(branchModule.getContactNo());
//			existing.setBankAccoununtNo(branchModule.getBankAccoununtNo());
//			existing.setBranch(branchModule.getBranch());
//			existing.setStatus(branchModule.getStatus());
//			;
//			existing.setIfscCode(branchModule.getIfscCode());
//			;
//			existing.setBalance(branchModule.getBalance());
//
//			return branchMasterRepo.save(existing);
//		} else {
//			return branchMasterRepo.save(branchModule);
//		}
//	}
//
//	public BankMaster saveBankModule(BankMaster bankMaster) {
//		// TODO Auto-generated method stub
//		if (bankMaster.getId() != null) {
//			BankMaster existing = bankMasterRepo.findById(bankMaster.getId())
//					.orElseThrow(() -> new RuntimeException("Branch not found with ID: " + bankMaster.getId()));
//
//			existing.setBankId(bankMaster.getBankId());
//			existing.setBankName(bankMaster.getBankName());
//			existing.setAccountNo(bankMaster.getAccountNo());
//			existing.setMobileNo(bankMaster.getMobileNo());
//			existing.setAddress(bankMaster.getAddress());
//			existing.setOpeningDate(bankMaster.getOpeningDate());
//			existing.setOpeningBalance(bankMaster.getOpeningBalance());
//			existing.setMappedBranch(bankMaster.getMappedBranch());
//
//			return bankMasterRepo.save(existing);
//		} else {
//			return bankMasterRepo.save(bankMaster);
//		}
//	}
//
//	public Optional<FYMaster> findFinancialYearById(Long id) {
//		// TODO Auto-generated method stub
//		return fyMasterRepo.findById(id);
//	}
//
//	public boolean deleteFinancialYear(Long id) {
//		// TODO Auto-generated method stub
//		if (fyMasterRepo.existsById(id)) {
//			fyMasterRepo.deleteById(id);
//			return true;
//		}
//		return false;
//	}
//
//	public BranchMaster saveBranch(BranchMaster branch) {
//
//		if (branchMasterRepo.existsByBranchCode(branch.getBranchCode())) {
//			throw new RuntimeException("Branch Code already exists");
//		}
//
//
//		return branchMasterRepo.save(branch);
//	}
//
//	public List<BranchMaster> getAllBranches() {
//		// TODO Auto-generated method stub
//		return branchMasterRepo.findAll();
//	}
//
//	public boolean deleteBranchModule(Long id) {
//		// TODO Auto-generated method stub
//		if (branchMasterRepo.existsById(id)) {
//			branchMasterRepo.deleteById(id);
//			return true;
//		}
//		return false;
//	}
//	
//	public BranchMaster updateBranch(BranchMaster branch) {
//
//	    BranchMaster existing =
//	            branchMasterRepo.findById(branch.getId())
//	                    .orElseThrow(() -> new RuntimeException("Branch not found"));
//
//	    existing.setName(branch.getName());
//	    existing.setBankAccoununtNo(branch.getBankAccoununtNo());
//	    existing.setBranch(branch.getBranch());
//	    existing.setBranchCode(branch.getBranchCode());
//	    existing.setAddress(branch.getAddress());
//	    existing.setAccountType(branch.getAccountType());
//	    existing.setStatus(branch.getStatus());
//	    existing.setPin(branch.getPin());
//	    existing.setState(branch.getState());
//	    existing.setContactPerson(branch.getContactPerson());
//	    existing.setContactNo(branch.getContactNo());
//	    existing.setIfscCode(branch.getIfscCode());
//	    existing.setBalance(branch.getBalance());
//
//	    return branchMasterRepo.save(existing);
//	}
//
//	public List<BankMaster> getAllBankAccount() {
//		return bankMasterRepo.findAll();
//	}
//
//	public Optional<BankMaster> findBankAccountById(Long id) {
//		// TODO Auto-generated method stub
//		return bankMasterRepo.findById(id);
//	}
//
//	public boolean deleteBankAccountById(Long id) {
//	    if (bankMasterRepo.existsById(id)) {
//	        bankMasterRepo.deleteById(id);
//	        return true;
//	    }
//	    return false;
//	}


}

