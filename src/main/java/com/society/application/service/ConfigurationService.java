package com.society.application.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.society.application.model.CasteMaster;
import com.society.application.model.CompanyMaster;
import com.society.application.model.FYMaster;
import com.society.application.model.RelativeRelationMaster;
import com.society.application.model.CompanyMaster;
import com.society.application.model.UserMaster;
import com.society.application.repository.CasteMasterRepo;
import com.society.application.repository.CompanyMasterRepo;
import com.society.application.repository.FYMasterRepo;
import com.society.application.repository.RelativeRelationMasterRepo;
import com.society.application.repository.UserMasterRepo;

@Service
public class ConfigurationService {

	@Autowired
	CompanyMasterRepo companyMasterRepo;

	@Autowired
	UserMasterRepo userMasterRepo;
	
	@Autowired
	FYMasterRepo fyMasterRepo;
	
	@Autowired
	RelativeRelationMasterRepo relativeRepo;
	
	@Autowired
	CasteMasterRepo casteRepo;

	// Ayush
	public int updateCompanyMaster(CompanyMaster companyMaster) {
		// TODO Auto-generated method stub
		Optional<CompanyMaster> optional = companyMasterRepo.findById(companyMaster.getId());

		if (optional.isPresent()) {
			CompanyMaster company = optional.get();
//			UserMaster um = userMasterRepo.findByid(companyMaster.getId());

			company.setCompanyName(companyMaster.getCompanyName());
			company.setShortName(companyMaster.getShortName());
			company.setDoj(companyMaster.getDoj());
			company.setCin(companyMaster.getCin());
			company.setPan(companyMaster.getPan());
			company.setTan(companyMaster.getTan());
			company.setGst(companyMaster.getGst());
			company.setShareValue(companyMaster.getShareValue());
			company.setAddress(companyMaster.getAddress());
			company.setState(companyMaster.getState());
			company.setPinCode(companyMaster.getPinCode());
			company.setEmail(companyMaster.getEmail());
			company.setAuthorizedcapital(companyMaster.getAuthorizedcapital());
			company.setPaidup(companyMaster.getPaidup());
			company.setLandLine(companyMaster.getLandLine());
			company.setMobile(companyMaster.getMobile());
			company.settDSWithPAN(companyMaster.gettDSWithPAN());
			company.settDSWithoutPAN(companyMaster.gettDSWithoutPAN());
			company.setTax(companyMaster.getTax());
			company.setTaxSr(companyMaster.getTaxSr());
			company.setCreatedBy(companyMaster.getCreatedBy());
//			um.setCompanyName(companyMaster.getCompanyName());
//			um.setShortName(companyMaster.getShortName());
//			um.setCreatedBy(companyMaster.getCreatedBy());
			companyMasterRepo.save(company);
//			userMasterRepo.save(um);
			return 1;
		} else {
			return 0;
		}
	}

	//Ayush
	public List<CompanyMaster> fetchAllCompanyDetails() {
		// TODO Auto-generated method stub
		return companyMasterRepo.findAll();
	}

	//Ayush
	public FYMaster saveFinancialYear(FYMaster financialYear) {
		// TODO Auto-generated method stub
		if (financialYear.getId() != null) {
			FYMaster existing = fyMasterRepo.findById(financialYear.getId()).orElseThrow(
					() -> new RuntimeException("Financial Year not found with ID: " + financialYear.getId()));

			existing.setFyName(financialYear.getFyName());
			existing.setfDate(financialYear.getfDate());
			existing.settDate(financialYear.gettDate());

			return fyMasterRepo.save(existing);
		} else {
			return fyMasterRepo.save(financialYear);
		}
	}

	public List<FYMaster> fetchFYDetails() {
		// TODO Auto-generated method stub
		return fyMasterRepo.findAll();
	}

	public RelativeRelationMaster saveRelativeModule(RelativeRelationMaster relativeModule) {
		// TODO Auto-generated method stub
		if (relativeModule.getId() != null) {
			RelativeRelationMaster existing = relativeRepo.findById(relativeModule.getId())
					.orElseThrow(() -> new RuntimeException("Relative not found with ID: " + relativeModule.getId()));

			existing.setName(relativeModule.getName());

			return relativeRepo.save(existing);
		} else {
			return relativeRepo.save(relativeModule);
		}
	}

	public CasteMaster saveCasteModule(CasteMaster casteMaster) {
		// TODO Auto-generated method stub
		if (casteMaster.getId() != null) {
			CasteMaster existing = casteRepo.findById(casteMaster.getId())
					.orElseThrow(() -> new RuntimeException("Caste not found with ID: " + casteMaster.getId()));

			existing.setCaste(casteMaster.getCaste());

			return casteRepo.save(existing);
		} else {
			return casteRepo.save(casteMaster);
		}
	}

}
