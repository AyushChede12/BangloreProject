package com.society.application.controler;

import java.io.File;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Base64;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Optional;

import javax.annotation.PostConstruct;
import javax.persistence.EntityManager;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.websocket.Session;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Sort;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.society.application.dto.ApiResponse;
import com.society.application.model.*;
import com.society.application.repository.*;

import com.society.application.service.*;

@Controller
public class ConfigurationController {

	@Autowired
	FileUploadDirectoryRepo fileUploadDirectoryRepo;

	@Autowired
	DepositeAccountMasterRepo depositeAccountMasterRepo;

	@Autowired
	CompanyMasterRepo companyMasterRepo;

	@Autowired
	FYMasterRepo fYMasterRepo;

	@Autowired
	BranchMasterRepo branchMasterRepo;

	@Autowired
	BankMasterRepo bankMasterRepo;

	@Autowired
	DirectorMasterRepo directorMasterRepo;

	@Autowired
	UserMasterRepo userMasterRepo;

	@Autowired
	UserToServiceMapRepo userToServiceMapRepo;

	@Autowired
	ModuleListRepo moduleListRepo;

	@Autowired
	SubmoduleRepo submoduleRepo;

	@Autowired
	RelativeRelationMasterRepo relationMasterRepo;

	@Autowired
	CasteMasterRepo casteMasterRepo;

	@Autowired
	CategoryMasterRepo categoryMasterRepo;

	@Autowired
	FileStorageService fileStorageService;
	// FileStorageService fileStorageService;

	@Autowired
	NewSchemeRepo newSchemeRepo;

	@Autowired
	NewGLGroupMasterRepo glGroupMasterRepo;

	@Autowired
	NewGLHeadMasterRepo newGLHeadMasterRepo;

	@Autowired
	EntryService entryService;

	@Autowired
	ReceiptRepo receiptRepo;

	@Autowired
	ConfigurationService configurationService;

	@GetMapping("/CompanyDetails")
	public String getAllLoanId(Model model, HttpSession session) {
//		String ID = session.getAttribute("ID").toString();
//		CompanyMaster comMaster = companyMasterRepo.findByiDcompany(ID);
//		comMaster.setCreatedBy(ID);
//		model.addAttribute("Logo", comMaster.getLogo());
//		model.addAttribute("Signature", comMaster.getSignature());
		// session.setAttribute("ID", ID);
		return "configuration/CompanyDetails";
	}

//	@GetMapping("/getConmapnyDetails")
//	@ResponseBody
//	public CompanyMaster getConmapnyDetails(@ModelAttribute("user") UserMaster login, Model model,
//			HttpSession session) {
//		// System.out.println(user.getCompanyName());
//		// session.setAttribute("usercompanyname", login.getCompanyName());
//		// String group=""+session. getAttribute("group");
//
//		String ID = session.getAttribute("ID").toString();
//		CompanyMaster comMaster = companyMasterRepo.findByiDcompany(ID);
//
//		String encodedLogo = Base64.getEncoder().encodeToString(comMaster.getLogo());
//		String encodedLogo2 = Base64.getEncoder().encodeToString(comMaster.getSignature());
//
//		comMaster.setFrontEndPhoto(encodedLogo);
//		comMaster.setFrontEndSignature(encodedLogo2);
//
//		if (comMaster != null) {
//
//			return comMaster;
//		} else {
//			CompanyMaster comMas = new CompanyMaster();
//
//			comMas.setAddress("");
//			comMas.setAuthorizedcapital("");
//			comMas.setCin("");
//			comMas.setCompanyName("");
//			comMas.setDoj("");
//			comMas.setEmail("");
//			comMas.setGst("");
//			comMas.setLandLine("");
//			comMas.setMobile("");
//			comMas.setPaidup("");
//			comMas.setPan("");
//			comMas.setPinCode("");
//			comMas.setShareValue("");
//			comMas.setShortName("");
//			comMas.setState("");
//			comMas.setTan("");
//			comMas.setTax("");
//			comMas.setTaxSr("");
//			comMas.settDSWithoutPAN("");
//			comMas.settDSWithPAN("");
//			// comMas.setLogo("");
//			// comMas.setSignature("");
//			return null;
//		}
//	}

	// Ayush
	@GetMapping("/getConmapnyDetails") // Ayush (without DTO)
	@ResponseBody
	public ResponseEntity<ApiResponse<List<CompanyMaster>>> fetchAllCompanyDetails() {
		List<CompanyMaster> list = configurationService.fetchAllCompanyDetails();
		ApiResponse<List<CompanyMaster>> response = new ApiResponse<>(HttpStatus.FOUND,
				"Company Administration fetched successfully", list);
		return ResponseEntity.ok(response);
	}

//	@PostMapping("/updateCompanyDetails")
//	@ResponseBody
//	public ResponseEntity<String> updateCompanyDetails(
//			@RequestParam(value = "filetag", required = false) MultipartFile file1,
//			@RequestParam(value = "secondfiletag", required = false) MultipartFile file23,
//			@RequestParam("companyName") String companyName, @RequestParam("shortName") String shortName,
//			@RequestParam("doj") String doj, @RequestParam("cin") String cin, @RequestParam("pan") String pan,
//			@RequestParam("tan") String tan, @RequestParam("gst") String gst,
//			@RequestParam("shareValue") String shareValue, @RequestParam("address") String address,
//			@RequestParam("state") String state, @RequestParam("pinCode") String pinCode,
//			@RequestParam("email") String email, @RequestParam("authorizedcapital") String authorizedcapital,
//			@RequestParam("paidup") String paidup, @RequestParam("landLine") String landLine,
//			@RequestParam("mobile") String mobile, @RequestParam("tDSWithPAN") String tDSWithPAN,
//			@RequestParam("tDSWithoutPAN") String tDSWithoutPAN, @RequestParam("tax") String tax,
//			@RequestParam("taxSr") String taxSr, HttpSession session) {
//		String ID = session.getAttribute("ID").toString();
//		int id = Integer.parseInt(ID);
//
//		CompanyMaster comMaster = companyMasterRepo.findByiDcompany(ID);
//		UserMaster um = userMasterRepo.findByid(id);
//
//		// System.out.println(!(file1==null));
//		// System.out.println(!(file23==null));
//
//		if (!(file1 == null) && !(file23 == null)) {
//			try {
//				byte[] image1 = file1.getBytes();
//				comMaster.setLogo(image1);
//
//				byte[] image2 = file23.getBytes();
//				comMaster.setSignature(image2);
//			} catch (IOException e) {
//				e.printStackTrace();
//			}
//		}
//		comMaster.setCompanyName(companyName);
//		comMaster.setShortName(shortName);
//		comMaster.setDoj(doj);
//		comMaster.setCin(cin);
//		comMaster.setPan(pan);
//		comMaster.setTan(tan);
//		comMaster.setGst(gst);
//		comMaster.setShareValue(shareValue);
//		comMaster.setAddress(address);
//		comMaster.setState(state);
//		comMaster.setPinCode(pinCode);
//		comMaster.setEmail(email);
//		comMaster.setAuthorizedcapital(authorizedcapital);
//		comMaster.setPaidup(paidup);
//		comMaster.setLandLine(landLine);
//		comMaster.setMobile(mobile);
//		comMaster.settDSWithPAN(tDSWithPAN);
//		comMaster.settDSWithoutPAN(tDSWithoutPAN);
//		comMaster.setTax(tax);
//		comMaster.setTaxSr(taxSr);
//		comMaster.setCreatedBy(ID);
//		um.setCompanyName(companyName);
//		um.setShortName(shortName);
//		um.setCreatedBy(ID);
//		userMasterRepo.save(um);
//		companyMasterRepo.save(comMaster);
//
//		return new ResponseEntity<>("DATA UPDATED SUCCESSFULLY...!!!", HttpStatus.OK);
//	}

	// Ayush
	@PostMapping("/updateCompanyDetails")
	@ResponseBody
	public ResponseEntity<ApiResponse<String>> updateCompanyDetails(@RequestBody CompanyMaster companyMaster) {

		int result = configurationService.updateCompanyMaster(companyMaster);

		if (result > 0) {
			ApiResponse<String> response = new ApiResponse<>(HttpStatus.OK,
					"Company Details data updated successfully.", "success");
			return ResponseEntity.ok(response);
		} else {
			ApiResponse<String> response = new ApiResponse<>(HttpStatus.BAD_REQUEST,
					"Failed to update company details data.", "failure");
			return ResponseEntity.status(HttpStatus.BAD_REQUEST).body(response);
		}
	}

	@GetMapping("/FYMater")
	public String FYMater(Model model) {
		return "configuration/AddFinancialMaster";
	}

	@GetMapping("/talukaMaster")
	public String talukaMaster(Model model) {
		return "configuration/AddTaluka";
	}

	@GetMapping("/getRelativeDetails")
	@ResponseBody
	public List<RelativeRelationMaster> gettAllRelations(Model model) {
		return relationMasterRepo.findAll();
	}

	@GetMapping("/getCasteDetails")
	@ResponseBody
	public List<CasteMaster> getAllcaste(Model model) {
		return casteMasterRepo.findAll();
	}

//	@PostMapping("/updateFYDetails")
//	public String updateFYDetails(@ModelAttribute("updateFYDetails") FYMaster fyMaster, Model model,
//			HttpSession session) {
//		String createdBy = session.getAttribute("ID").toString();
//		fyMaster.setCreatedBy(createdBy);
//		fYMasterRepo.save(fyMaster);
//		session.setAttribute("createdBy", createdBy);
//		return "configuration/AddFinancialMaster";
//	}

	@PostMapping("/saveAndUpdateAllFinancialYear") // Ayush (without DTO)
	public ResponseEntity<ApiResponse<FYMaster>> saveFinancialYear(@RequestBody FYMaster financialYear) {
		boolean isCreate = (financialYear.getId() == null); // Check BEFORE saving
		FYMaster savedEntity = configurationService.saveFinancialYear(financialYear);
		ApiResponse<FYMaster> response;
		if (isCreate) {
			response = new ApiResponse<>(HttpStatus.CREATED, "Financial Year created successfully", savedEntity);
			return new ResponseEntity<>(response, HttpStatus.CREATED);
		} else {
			response = new ApiResponse<>(HttpStatus.OK, "Financial Year updated successfully", savedEntity);
			return new ResponseEntity<>(response, HttpStatus.OK);
		}
	}

	@GetMapping("/getAllFYDetails")
	@ResponseBody
	public List<FYMaster> getAllFYDetails(Model model) {
		return configurationService.fetchFYDetails();
	}

	@GetMapping("/getFinancialYearById") // Ayush
	public ResponseEntity<ApiResponse<FYMaster>> findFinancialYearById(@RequestParam("id") Long id) {
		Optional<FYMaster> fyear = configurationService.findFinancialYearById(id);
		if (fyear.isPresent()) {
			ApiResponse<FYMaster> response = new ApiResponse<>(HttpStatus.FOUND, "Financial Year fetched successfully",
					fyear.get());
			return ResponseEntity.ok(response);
		} else {
			ApiResponse<FYMaster> response = new ApiResponse<>(HttpStatus.NOT_FOUND,
					"Financial Year not found for ID: " + id, null);
			return ResponseEntity.status(404).body(response);
		}
	}

	@PostMapping("/deleteFinancialYearById") // Ayush
	public ResponseEntity<ApiResponse<String>> deleteFinancialYear(@RequestParam("id") Long id) {
		boolean isDeleted = configurationService.deleteFinancialYear(id);
		if (isDeleted) {
			ApiResponse<String> response = new ApiResponse<>(HttpStatus.OK, "Financial Year deleted successfully",
					"success");
			return ResponseEntity.ok(response);
		} else {
			ApiResponse<String> response = new ApiResponse<>(HttpStatus.NOT_FOUND, "Financial Year deletion failed",
					"failure");
			return ResponseEntity.badRequest().body(response);
		}
	}

//	@PostMapping("/SaveRelation")
//	public String saveRelativerelation(@ModelAttribute("Relationrelative") RelativeRelationMaster relationMaster,
//			Model model, HttpSession session) {
//		String createdBy = session.getAttribute("ID").toString();
//		relationMaster.setCreatedBy(createdBy);
//		relationMasterRepo.save(relationMaster);
//		session.setAttribute("createdBy", createdBy);
//		return "configuration/RelativeMaster";
//	}

	@PostMapping("/SaveRelation") // Ayush (without DTO)
	public ResponseEntity<ApiResponse<RelativeRelationMaster>> saveRelative(
			@RequestBody RelativeRelationMaster relativeModule) {
		boolean isCreate = (relativeModule.getId() == null); // Check BEFORE saving
		RelativeRelationMaster savedEntity = configurationService.saveRelativeModule(relativeModule);
		ApiResponse<RelativeRelationMaster> response;
		if (isCreate) {
			response = new ApiResponse<>(HttpStatus.CREATED, "Relative created successfully", savedEntity);
			return new ResponseEntity<>(response, HttpStatus.CREATED);
		} else {
			response = new ApiResponse<>(HttpStatus.OK, "Relative updated successfully", savedEntity);
			return new ResponseEntity<>(response, HttpStatus.OK);
		}
	}

//	@PostMapping("/SaveCaste")
//	public String saveCasteMaster(@ModelAttribute("CasteModel") CasteMaster casteMaster, Model model,
//			HttpSession session) {
//		String createdBy = session.getAttribute("ID").toString();
//		casteMaster.setCreatedBy(createdBy);
//		casteMasterRepo.save(casteMaster);
//		session.setAttribute("createdBy", createdBy);
//		return "configuration/CasteMaster";
//	}

	@PostMapping("/saveCasteModule")
	@ResponseBody
	public ResponseEntity<ApiResponse<CasteMaster>> saveCategory(@RequestBody CasteMaster casteMaster) {
		boolean isCreate = (casteMaster.getId() == null); // Check BEFORE saving
		CasteMaster savedEntity = configurationService.saveCasteModule(casteMaster);
		ApiResponse<CasteMaster> response;
		if (isCreate) {
			response = new ApiResponse<>(HttpStatus.CREATED, "Caste created successfully", savedEntity);
			return new ResponseEntity<>(response, HttpStatus.CREATED);
		} else {
			response = new ApiResponse<>(HttpStatus.OK, "Caste updated successfully", savedEntity);
			return new ResponseEntity<>(response, HttpStatus.OK);
		}
	}

//	@PostMapping("/SaveCategory")
//	public String saveCategoryMaster(@ModelAttribute("CategoryModel") CategoryMaster categoryMaster, Model model,
//			HttpSession session) {
//		String createdBy = session.getAttribute("ID").toString();
//		categoryMaster.setCreatedBy(createdBy);
//		categoryMasterRepo.save(categoryMaster);
//		session.setAttribute("createdBy", createdBy);
//		return "configuration/CategoryMaster";
//	}

	@PostMapping("/saveCategoryModule")
	@ResponseBody
	public ResponseEntity<ApiResponse<CategoryMaster>> saveCategory(@RequestBody CategoryMaster categoryModule) {
		boolean isCreate = (categoryModule.getId() == null); // Check BEFORE saving
		CategoryMaster savedEntity = configurationService.saveCategoryModule(categoryModule);
		ApiResponse<CategoryMaster> response;
		if (isCreate) {
			response = new ApiResponse<>(HttpStatus.CREATED, "Category created successfully", savedEntity);
			return new ResponseEntity<>(response, HttpStatus.CREATED);
		} else {
			response = new ApiResponse<>(HttpStatus.OK, "Category updated successfully", savedEntity);
			return new ResponseEntity<>(response, HttpStatus.OK);
		}
	}

	// In Configuration BranchMaster SubModule
	@GetMapping("/branchMaster")
	public String branch(Model model) {
		return "configuration/Branch";
	}

//	@GetMapping("getDataByidBranchMaster")
//	public String getDataByidBranchMaster(@RequestParam String id, Model model) {
//		List<BranchMaster> list = branchMasterRepo.findByid(Integer.parseInt(id));
//		model.addAttribute("list", list);
//		return "configuration/BranchFieldsShown";
//	}
//
//	@GetMapping("/getAllBranchMaster")
//	@ResponseBody
//	public List<BranchMaster> getAllBranchMaster(Model model) {
//		return branchMasterRepo.findAll(Sort.by(Sort.Direction.DESC, "id"));
//	}

//	@PostMapping("/saveAllBranchMaster")
//	@ResponseBody
//	public String saveBranchMaster(@RequestBody BranchMaster branchMaster, HttpSession session) {
//		String createdBy = session.getAttribute("ID").toString();
//		branchMaster.setCreatedBy(createdBy);
//		branchMasterRepo.save(branchMaster);
//		session.setAttribute("createdBy", createdBy);
//		return "configuration/Branch";
//	}

	@PostMapping("/saveAllBranchMaster")
	public ResponseEntity<ApiResponse<BranchMaster>> saveBranchMaster(@RequestBody BranchMaster branch) {

		BranchMaster savedBranch = configurationService.saveBranch(branch);

		ApiResponse<BranchMaster> response = new ApiResponse<>(HttpStatus.CREATED, "Branch saved successfully",
				savedBranch);

		return ResponseEntity.status(HttpStatus.CREATED).body(response);
	}

	@GetMapping("/getAllBranchMaster")
	public ResponseEntity<ApiResponse<List<BranchMaster>>> getAllBranches() {

		List<BranchMaster> list = configurationService.getAllBranches();

		ApiResponse<List<BranchMaster>> response = new ApiResponse<>(HttpStatus.OK,
				"Branch list fetched successfully", list);

		return ResponseEntity.ok(response);
	}
	
	@GetMapping("/getBranchModuleById") // Ayush
	public ResponseEntity<ApiResponse<BranchMaster>> findBranchModuleById(@RequestParam("id") Long id) {
		Optional<BranchMaster> branch = configurationService.findBranchDataById(id);
		if (branch.isPresent()) {
			ApiResponse<BranchMaster> response = new ApiResponse<>(HttpStatus.FOUND,
					"BranchModule fetched successfully", branch.get());
			return ResponseEntity.ok(response);
		} else {
			ApiResponse<BranchMaster> response = new ApiResponse<>(HttpStatus.NOT_FOUND,
					"BranchModule not found for ID: " + id, null);
			return ResponseEntity.status(404).body(response);
		}
	}
	
	@PostMapping("/deleteBranchModuleById") // Ayush
	public ResponseEntity<ApiResponse<String>> deleteBranchModule(@RequestParam("id") Long id) {
		boolean isDeleted = configurationService.deleteBranchModule(id);
		if (isDeleted) {
			ApiResponse<String> response = new ApiResponse<>(HttpStatus.OK, "Branch module deleted successfully",
					"success");
			return ResponseEntity.ok(response);
		} else {
			ApiResponse<String> response = new ApiResponse<>(HttpStatus.BAD_REQUEST, "Branch module deletion failed",
					"failure");
			return ResponseEntity.badRequest().body(response);
		}
	}

//	@PostMapping("/saveAndUpdateAllBranchModule") // Ayush (without DTO)
//	public ResponseEntity<ApiResponse<BranchMaster>> saveBranch(@RequestBody BranchMaster branchModule) {
//		boolean isCreate = (branchModule.getId() == null); // Check BEFORE saving
//
//		BranchMaster savedEntity = configurationService.saveBranchModule(branchModule);
//
//		ApiResponse<BranchMaster> response;
//
//		if (isCreate) {
//			response = new ApiResponse<>(HttpStatus.CREATED, "Branch created successfully", savedEntity);
//			return new ResponseEntity<>(response, HttpStatus.CREATED);
//		} else {
//			response = new ApiResponse<>(HttpStatus.OK, "Branch updated successfully", savedEntity);
//			return new ResponseEntity<>(response, HttpStatus.OK);
//		}
//	}

//	@PostMapping("/updateBranchMasterById")
//	@ResponseBody
//	public String updateBranchMasterById(@RequestBody BranchMaster branchMaster) {
//		BranchMaster branchObj = branchMasterRepo.getById(branchMaster.getId());
//		if (branchObj != null) {
//			branchMasterRepo.save(branchMaster);
//		}
//		return "configuration/BranchFieldsShown";
//	}

	@GetMapping("/AddBankAccount")
	public String AddBankAccount(Model model) {
		return "configuration/AddBankAccount";
	}

	@GetMapping("/getAllBankAccount")
	@ResponseBody
	public List<BankMaster> getAllBankAccount(Model model) {
		return bankMasterRepo.findAll();
	}

//	@PostMapping("/saveBankAccount")
//	public String saveBankAccount(@ModelAttribute("saveBankAccount") BankMaster bankMaster, Model model,
//			HttpSession session) {
//		String createdBy = session.getAttribute("ID").toString();
//		bankMaster.setCreatedBy(createdBy);
//		bankMasterRepo.save(bankMaster);
//		session.setAttribute("createdBy", createdBy);
//		return "configuration/AddBankAccount";
//	}

	@PostMapping("/saveAndUpdateAllBankModule") // Ayush (without DTO)
	public ResponseEntity<ApiResponse<BankMaster>> saveBank(@RequestBody BankMaster bankMaster) {
		boolean isCreate = (bankMaster.getId() == null); // Check BEFORE saving

		BankMaster savedEntity = configurationService.saveBankModule(bankMaster);

		ApiResponse<BankMaster> response;

		if (isCreate) {
			response = new ApiResponse<>(HttpStatus.CREATED, "Bank created successfully", savedEntity);
			return new ResponseEntity<>(response, HttpStatus.CREATED);
		} else {
			response = new ApiResponse<>(HttpStatus.OK, "Bank updated successfully", savedEntity);
			return new ResponseEntity<>(response, HttpStatus.OK);
		}
	}

	@GetMapping("/CodeSetting")
	public String CodeSetting(Model model) {
		return "configuration/CodeSetting";
	}

	@GetMapping("/getDeposistAC")
	@ResponseBody
	public List<DepositeAccountMaster> getDepositeAccountNo(Model model) {
		return depositeAccountMasterRepo.findAll();
	}

	@GetMapping("/getCategoryDetails")
	@ResponseBody
	public List<CategoryMaster> getCategoryMasters(Model model) {
		return categoryMasterRepo.findAll();
	}

	@GetMapping("/DirectorDetail")
	public String DirectorDetail(Model model, HttpSession session) {
		String userId = (String) session.getAttribute("loggedInUserName");
		String module = "Director";
		String type = "logo";
		String type2 = "signature";
		FileUploadDirectory logo = fileUploadDirectoryRepo.getIamges(module, type, userId);
		if (logo != null) {
			String encodedLogo = Base64.getEncoder().encodeToString(logo.getContent());
			model.addAttribute("directorLogo", encodedLogo);
		}
		FileUploadDirectory signature = fileUploadDirectoryRepo.getIamges(module, type2, userId);
		if (signature != null) {
			String encodedSignature = Base64.getEncoder().encodeToString(signature.getContent());
			model.addAttribute("directorSignature", encodedSignature);
		}
		return "configuration/DirectorDetail";
	}

	@PostMapping("/api/upload")
	public ResponseEntity<String> uploadLogoAndSignature(@RequestParam("module") String module,
			@RequestParam("type") String type, @RequestParam("file") MultipartFile file, HttpSession session) {
		try {
			String userId = (String) session.getAttribute("loggedInUserName");
			byte[] content = file.getBytes();
			System.out.println(content);
			FileUploadDirectory fileEntity = new FileUploadDirectory();
			fileEntity.setName(file.getOriginalFilename());
			fileEntity.setContent(content);
			fileEntity.setUserId(userId);
			fileEntity.setModule(module);
			fileEntity.setType(type);
			fileUploadDirectoryRepo.save(fileEntity);
			return new ResponseEntity<>("File uploaded successfully", HttpStatus.OK);
		} catch (Exception ex) {
			return new ResponseEntity<>("Failed to upload file", HttpStatus.INTERNAL_SERVER_ERROR);
		}
	}

//	@GetMapping("/deleterow")
//	public String getdeleterow(@RequestParam String id) {
//		int ID = Integer.parseInt(id);
//		directorMasterRepo.deleteById(ID);
//		return "configuration/DirectorDetail";
//	}
//
//	@GetMapping("/deleterowcategory")
//	public String getdeleterowCategory(@RequestParam String id) {
//		int ID = Integer.parseInt(id);
//		categoryMasterRepo.deleteById(ID);
//		return "configuration/CategoryMaster";
//	}
//
//	@GetMapping("/deleterowcaste")
//	public String getdeleterowCaste(@RequestParam String id) {
//		int ID = Integer.parseInt(id);
//		casteMasterRepo.deleteById(ID);
//		return "configuration/CasteMaster";
//	}
//
//	@GetMapping("/deleterowrelative")
//	public String getdeleterowrelative(@RequestParam String id) {
//		int ID = Integer.parseInt(id);
//		relationMasterRepo.deleteById(ID);
//		return "configuration/CasteMaster";
//	}

	@GetMapping("/getAllDirectorMaster")
	@ResponseBody
	public List<DirectorMaster> getAllDirectorMaster(Model model) {
		return directorMasterRepo.findAll();
	}

	@PostMapping("/saveDirectorMaster")
	@ResponseBody
	public int saveDirectorMaster(@RequestParam(value = "filetag", required = false) MultipartFile file,
			@RequestParam(value = "secondfiletag", required = false) MultipartFile file2,
			@RequestParam("type") String type, @RequestParam("branchName") String branchName,
			@RequestParam("prefix") String prefix, @RequestParam("directorName") String directorName,
			@RequestParam("dateOfBirth") String dateOfBirth, @RequestParam("dinNoPromoterNo") String dinNoPromoterNo,
			@RequestParam("appointmentDate") String appointmentDate, @RequestParam("relativeName") String relativeName,
			@RequestParam("address") String address, @RequestParam("district") String district,
			@RequestParam("state") String state, @RequestParam("pin") String pin,
			@RequestParam("aadharno") String aadharno, @RequestParam("panNo") String panNo,
			@RequestParam("mobileNo") String mobileNo, @RequestParam("emailId") String emailId,
			@RequestParam("shareNominalValue") String shareNominalValue,
			@RequestParam("shareAmount") String shareAmount, @RequestParam("noOfShare") String noOfShare,
			@RequestParam("paymode") String paymode, DirectorMaster dm, HttpSession session) {
		String createdBy = session.getAttribute("ID").toString();
		String fileName = fileStorageService.storeFile(file);
		String fileName2 = fileStorageService.storeFile(file2);

		dm.setType(type);
		dm.setType(branchName);
		dm.setType(prefix);
		dm.setType(directorName);
		dm.setType(dateOfBirth);
		dm.setType(dinNoPromoterNo);
		dm.setType(appointmentDate);
		dm.setType(relativeName);
		dm.setType(address);
		dm.setType(district);
		dm.setType(state);
		dm.setType(pin);
		dm.setType(aadharno);
		dm.setType(panNo);
		dm.setType(mobileNo);
		dm.setType(emailId);
		dm.setType(shareNominalValue);
		dm.setType(shareAmount);
		dm.setType(noOfShare);
		dm.setType(paymode);
		dm.setPhoto(fileName);
		dm.setSignature(fileName2);
		dm.setCreatedBy(createdBy);
		directorMasterRepo.save(dm);
		session.setAttribute("createdBy", createdBy);
		return 1;
	}

	@GetMapping("/UserCreate")
	public String UserCreate(Model model) {
		return "configuration/UserCreate";
	}

	@GetMapping("/getAllUserMaster")
	@ResponseBody
	public List<UserMaster> getAllUserMaster(Model model) {
		return userMasterRepo.findAll();
	}

	@PostMapping("/userCreation")
	public String userCreation(@ModelAttribute("userCreation") UserMaster userMaster, Model model,
			HttpSession session) {
		String createdBy = session.getAttribute("ID").toString();
		userMaster.setCreatedBy(createdBy);
		userMaster.setUserType("Admin");
		userMaster.setCompanyName("EQFI");
		userMasterRepo.save(userMaster);
		session.setAttribute("createdBy", createdBy);
		return "configuration/UserCreate";
	}

	@GetMapping("/UserMenuAccess")
	public String UserMenuAccess(Model model) {
		return "configuration/UserMenuAccess";
	}

	@PostMapping("/userToServiceMap")
	public String userToServiceMap(@ModelAttribute("userToServiceMap") UserToServiceMap userToServiceMap, Model model,
			HttpSession session) {
		String createdBy = session.getAttribute("ID").toString();
		userToServiceMap.setCreatedBy(createdBy);
		userToServiceMapRepo.save(userToServiceMap);
		session.setAttribute("createdBy", createdBy);
		return "configuration/UserMenuAccess";
	}

	@GetMapping("/getAllServiceMap")
	@ResponseBody
	public List<Submodule> getAllUserToServiceMap1(Model model) {
		List<Submodule> newList = new ArrayList<Submodule>();
		List<ModuleList> modList = moduleListRepo.findAll();
		List<Submodule> submodList = submoduleRepo.findAll();
		submodList.stream().forEach(p -> {
			modList.forEach(e -> {
				if (e.getId() == Integer.parseInt(p.getModule())) {
					Submodule subMod = new Submodule();
					subMod.setId(p.getId());
					subMod.setModule(e.getName());
					subMod.setName(p.getName());
					newList.add(subMod);
				}
			});
		});
		return newList;
	}

	@GetMapping("/UserActivityReport")
	public String UserActivityReport(Model model) {
		return "configuration/UserActivityReport";
	}

	@GetMapping("/callTheDepossiAccountNumber")
	@ResponseBody
	public List<BankMaster> callTheDepossitNumber(Model model) {
		List<BankMaster> data = bankMasterRepo.findAll();
		return data;
	}

	// Relative Master
	@GetMapping("/relativeMaster")
	public String ShowRelativeMAsterPage() {
		return "configuration/RelativeMaster";
	}

	@GetMapping("/casteMaster")
	public String showCasteRelation(Model model) {
		return "configuration/CasteMaster";
	}

	@GetMapping("/categoryMaster")
	public String CategoryMasterPage(Model model) {
		return "configuration/CategoryMaster";
	}

	// Savings -> New Scheme
	@GetMapping("/newScheme")
	public String newScheme(Model model) {
		long count = newSchemeRepo.count();
		long result = 3 * count + 1;
		// System.out.println(result);
		model.addAttribute("count", result);
		return "configuration/NewScheme";
	}

	// Save Operation For New Scheme
	@PostMapping("/saveGLHead")
	public String saveGLHead(@ModelAttribute("newSchemeModelAttribute") NewScheme newScheme, Model model) {
		long count = newSchemeRepo.count();
		long result = 3 * count + 1;
		// System.out.println(result);
		model.addAttribute("count", result);

		Integer a = Integer.parseInt(newScheme.getGlHeadNoSchemeNmae());
		Integer interest = a + 1;
		Integer interestPayable = a + 2;

		newScheme.setGlHeadNoSchemeNmae(newScheme.getGlHeadNoSchemeNmae());
		newScheme.setGlHeadNoInterest(interest.toString());
		newScheme.setGlHeadNoInterestPayable(interestPayable.toString());

		newScheme.setInterest(newScheme.getSchemeName() + " Interest");
		newScheme.setInterestPayable(newScheme.getSchemeName() + " Interest Payable");

		newScheme.setPostingDate(newScheme.getPostingDate());
		// System.out.println(newScheme.getPostingDate());

		newScheme.setFlag("1");

		newSchemeRepo.save(newScheme);
		return "redirect:/newScheme";
	}

	// Savings -> Scheme List
	@GetMapping("/schemeList")
	public String schemeList() {
		return "configuration/SchemeList";
	}

	// Fetch Data In Table Through Status
	@PostMapping("/fetchDataThroughStatus")
	@ResponseBody
	public List<NewScheme> fetchDataThroughStatus(@RequestBody NewScheme newScheme) {
		return newSchemeRepo.findBystatus(newScheme.getStatus());
	}

	// New Jsp For Update Operation
	@GetMapping("/newSchemeEdit")
	public String newSchemeEdit(@RequestParam String glHeadNoSchemeNmae) {
		// Use the glHeadNoSchemeNmae parameter as needed
		return "configuration/NewSchemeEdit";
	}

	// Fetching Data By G.L. Head No.
	@GetMapping("/getDataByGlHeadNoSchemeNmae")
	@ResponseBody
	public NewScheme getDataByGlHeadNoSchemeNmae(@RequestParam String glHeadNoSchemeNmae) {
		NewScheme data = newSchemeRepo.getDataByGlHeadNoSchemeNmae(glHeadNoSchemeNmae);
		return data;
	}

	// Delete G.L. Head No.
	@GetMapping("/deleteGLHeadNo")
	public String getdeleteGLHeadNo(@RequestParam String id) {
		Long ID = Long.parseLong(id);
		newSchemeRepo.deleteById(ID);
		return "configuration/SchemeList";
	}

	/*
	 * @GetMapping("/deleteGLHeadNo") public String getdeleteGLHeadNo(@RequestParam
	 * String id) { Long ID = Long.parseLong(id); newSchemeRepo.softDeleteById(ID);
	 * return "configuration/SchemeList"; }
	 */

	// Update G.L Head No.
	@PostMapping("/updateGLHeadNo")
	public ResponseEntity<Object> updateGLHeadNo(@ModelAttribute("NewSchemeModel") NewScheme newScheme) {
		try {
			NewScheme existingScheme = newSchemeRepo.getById(newScheme.getId());
			if (existingScheme != null) {
				// existingScheme.setGlHeadNoSchemeNmae(newScheme.getGlHeadNoSchemeNmae());
				existingScheme.setSchemeName(newScheme.getSchemeName());
				existingScheme.setSchemeType(newScheme.getSchemeType());
				existingScheme.setInterestRate(newScheme.getInterestRate());
				existingScheme.setMinimumAge(newScheme.getMinimumAge());
				existingScheme.setMinimumBalance(newScheme.getMinimumBalance());
				existingScheme.setStatus(newScheme.getStatus());
				existingScheme.setMinimumWithdrawlAmt(newScheme.getMinimumWithdrawlAmt());
				existingScheme.setMaximumWithdrawlAmt(newScheme.getMaximumWithdrawlAmt());
				existingScheme.setMinimumDepositAmt(newScheme.getMinimumDepositAmt());
				existingScheme.setMaximumDepositAmt(newScheme.getMaximumDepositAmt());
				existingScheme.setWeeklyDebitTransactionsNo(newScheme.getWeeklyDebitTransactionsNo());
				existingScheme.setWeeklyDebitTransactionsAmt(newScheme.getWeeklyDebitTransactionsAmt());
				existingScheme.setInterestCalculatioType(newScheme.getInterestCalculatioType());
				existingScheme.setMonthsStartDate(newScheme.getMonthsStartDate());
				existingScheme.setWithoutInterestMonth(newScheme.getWithoutInterestMonth());
				existingScheme.setPostingDate(newScheme.getPostingDate());

				Integer a = Integer.parseInt(newScheme.getGlHeadNoSchemeNmae());
				Integer interest = a + 1;
				Integer interestPayable = a + 2;

				existingScheme.setGlHeadNoSchemeNmae(newScheme.getGlHeadNoSchemeNmae());
				existingScheme.setGlHeadNoInterest(interest.toString());
				existingScheme.setGlHeadNoInterestPayable(interestPayable.toString());

				existingScheme.setInterest(newScheme.getSchemeName() + " Interest");
				existingScheme.setInterestPayable(newScheme.getSchemeName() + " Interest Payable");

				existingScheme.setPostingDate(newScheme.getPostingDate());

				/*
				 * String newPostingDate = newScheme.getPostingDate(); String
				 * existingPostingDates = existingScheme.getPostingDate();
				 * System.out.println(newPostingDate); System.out.println(existingPostingDates);
				 * 
				 * if(existingPostingDates == null || existingPostingDates.isEmpty()) {
				 * existingScheme.setPostingDate(newPostingDate); } else {
				 * existingScheme.setPostingDate(existingPostingDates + "," + newPostingDate); }
				 */

				existingScheme.setFlag("1");
				newSchemeRepo.save(existingScheme);
				return ResponseEntity.ok().body("{\"message\": \"Update successful\"}");
			} else {
				return ResponseEntity.notFound().build();
			}
		} catch (Exception e) {
			return ResponseEntity.status(500).body("{\"message\": \"Update failed\"}");
		}
	}

	/* ACCOUNTING */
	// Accounting 1 -> Branch Interest Calculation
	@GetMapping("/branchInterestCalculation")
	public String branchInterestCalculation() {
		return "configuration/BranchInterestCalculation";
	}

	// Acccounting 2 -> New GL Head
	@GetMapping("/newGLHead")
	public String newGLHead() {
		return "configuration/NewGLHead";
	}

	// Accounting 3 -> GL Head List
	@GetMapping("/glHeadList")
	public String glHeadList() {
		return "configuration/GLHeadList";
	}

	// Accounting 4 -> New GL Group
	@GetMapping("/newGLGroup")
	public String newGLGroup() {
		return "configuration/NewGLGroup";
	}

	// Accounting 5 -> GL Group List
	@GetMapping("/gLGroupList")
	public String gLGroupList() {
		return "configuration/GLGroupList";
	}

	// Accounting 6 -> Change Sequence
	@GetMapping("/changeSequence")
	public String changeSequence() {
		return "configuration/ChangeSequence";
	}

	// Accounting 7 -> Account Family
	@GetMapping("/accountFamily")
	public String accountFamily() {
		return "configuration/AccountFamily";
	}

	// Accounting 8 -> Voucher Type
	@GetMapping("/voucherType")
	public String voucherType() {
		return "configuration/VoucherType";
	}

	@GetMapping("/fetchMaxGLGroupNo")
	public ResponseEntity<Integer> fetchMaxGLGroupNo() {
		Integer gLGroupNo = glGroupMasterRepo.findMaxgLGroupNo();
		if (gLGroupNo == null) {
			gLGroupNo = 0;
		}
		return ResponseEntity.ok(gLGroupNo);
	}

	// Save operation for New GL Group
	@PostMapping("/saveNewGLGroupNo")
	public String saveNewGLGroupNo(@ModelAttribute("NewGLGroupNoModel") NewGLGroupMaster glGroupMaster, Model model) {
		glGroupMaster.setFlag("1");
		glGroupMaster.setModule("Accounting");

		Integer maxGLGroupNo = glGroupMasterRepo.findMaxgLGroupNo();
		if (maxGLGroupNo == null) {
			maxGLGroupNo = 0;
		}
		glGroupMaster.setgLGroupNo(maxGLGroupNo + 1); // Increment the value

		// System.out.println(glGroupMaster.getgLGroupNo());
		glGroupMasterRepo.save(glGroupMaster);
		return "redirect:/newGLGroup";
	}

	@PostMapping("/retrieveDataByPrimaryGroupAndSubGroup")
	@ResponseBody
	public List<NewGLGroupMaster> retrieveDataByPrimaryGroupAndSubGroup(
			@RequestBody NewGLGroupMaster newGLGroupMaster) {
		List<NewGLGroupMaster> list = glGroupMasterRepo.findByPrimaryGroupAndPrimarySubGroup(
				newGLGroupMaster.getPrimaryGroup(), newGLGroupMaster.getPrimarySubGroup());
		List<NewGLGroupMaster> list1 = glGroupMasterRepo.findAll();
		if (!list.isEmpty()) {
			return list;
		}
		return list1;
	}

	@PostMapping("/FetchAllNewGLGroupNo")
	@ResponseBody
	public List<NewGLGroupMaster> FetchAllNewGLGroupNo() {
		return glGroupMasterRepo.findAll();
	}

	@GetMapping("/fetchMaxGLHeadNo")
	public ResponseEntity<Integer> fetchMaxGLHeadNo() {
		Integer maxGLHeadNo = newGLHeadMasterRepo.findMaxGLHeadNo();
		if (maxGLHeadNo == null) {
			maxGLHeadNo = 0;
		}
		return ResponseEntity.ok(maxGLHeadNo);
	}

	// Method to generate a unique ID
	private String generateUniqueId() {
		// Implement your logic to generate a unique ID (e.g., timestamp, UUID, etc.)
		return "UNIQUE_ID_" + System.currentTimeMillis();
	}

	// Save New GL Head
	@PostMapping("/savetheNewGLHead")
	@ResponseBody
	public ResponseEntity<String> savetheNewGLHead(@RequestBody NewGLHeadMaster newGLHeadMaster) {
		try {
			String uniqueId = generateUniqueId();

			newGLHeadMaster.setModule("Accounting");
			newGLHeadMaster.setFlag("1");

			// Set accountValue based on the selected account type
			if ("commonAccount".equals(newGLHeadMaster.getAccountTypecheckBox())) {
				newGLHeadMaster.setAccountValue("1");
			} else {
				// Handle other cases if needed
				// You can set a default value or leave it as null
				newGLHeadMaster.setAccountValue(null);
			}

			String selectedBalanceType = newGLHeadMaster.getBalanceType();
			newGLHeadMaster.setBalanceType(selectedBalanceType);

			newGLHeadMaster.setUniqueId(uniqueId); // Set the uniqueId
			newGLHeadMasterRepo.save(newGLHeadMaster);

			return ResponseEntity.ok("Data Saved Successfully For GL Head No : " + newGLHeadMaster.getGlHeadNo());
		} catch (Exception e) {
			e.printStackTrace();
			return ResponseEntity.status(HttpStatus.INTERNAL_SERVER_ERROR).body("Error processing the request.");
		}
	}

	// New Jsp For Update Operation For New GL Group Edit
	@GetMapping("/getNewGLGroupEditByID")
	public ModelAndView getNewGLGroupEdit(@RequestParam String id) {
		Long glGroupId = Long.parseLong(id);
		NewGLGroupMaster glGroup = glGroupMasterRepo.findByid(glGroupId);
		ModelAndView modelAndView = new ModelAndView("configuration/NewGLGroupEdit");
		modelAndView.addObject("glGroup", glGroup);
		return modelAndView;
	}

	// Delete Data By ID Of GL Group List
	@PostMapping("/deleteGLGroupListById")
	public String deleteGLGroupListById(@RequestParam String id) {
		Long ID = Long.parseLong(id);
		glGroupMasterRepo.deleteById(ID);
		return "configuration/GLGroupList";
	}

	// Update New GL Group List By GL GroupNo
	@PostMapping("/updateNewGLGroupListByGLGroupNo")
	@ResponseBody
	public Map<String, String> updateNewGLGroupListByGLGroupNo(@RequestBody NewGLGroupMaster newGLGroupMaster) {
		NewGLGroupMaster glGroupMasterObj = glGroupMasterRepo.getBygLGroupNo(newGLGroupMaster.getgLGroupNo());
		if (glGroupMasterObj != null) {
			glGroupMasterObj.setPrimaryGroup(newGLGroupMaster.getPrimaryGroup());
			glGroupMasterObj.setPrimarySubGroup(newGLGroupMaster.getPrimarySubGroup());
			glGroupMasterObj.setGroupType(newGLGroupMaster.getGroupType());
			glGroupMasterObj.setAccountGroup(newGLGroupMaster.getAccountGroup());
			glGroupMasterObj.setAccountGroupUnicode(newGLGroupMaster.getAccountGroupUnicode());
			glGroupMasterRepo.save(glGroupMasterObj);
		}
		Map<String, String> response = new HashMap<>();
		response.put("message", "Data Updated Successfully..!!!");
		response.put("redirect", "/gLGroupList");
		return response;
	}

//	@PostMapping("/saveAllBranchMaster")
//	@ResponseBody
//	public ResponseEntity<String> saveAllBranchMaster(@RequestBody Map<String, String> requestBody, HttpSession session,
//			BranchMaster branchMaster, NewGLHeadMaster newGLHeadMaster) {
//		entryService.branchMasterSave(requestBody, session);
//		entryService.branchMasterSave2(requestBody, session);
//		return new ResponseEntity<>("Data Saved successfully", HttpStatus.OK);
//	}

	// Fetching All Data in Table of GL Head List Module
	@GetMapping("/getAllDataInGLHeadList")
	@ResponseBody
	public List<NewGLHeadMaster> getAllDataInGLHeadList() {
		return newGLHeadMasterRepo.findAll();
	}

	@GetMapping("/bankRegister")
	public String bankRegister(Model model) {
		return "configuration/BankRegister";
	}

	// Delete Branch Master Data by Id in (Bank Register Module)
//	@PostMapping("/deleteBankRegisterDataById")
//	public ResponseEntity<Map<String, String>> deleteBankRegisterDataById(@RequestBody List<BranchMaster> bankID) {
//		Map<String, String> response = new HashMap<>();
//		for (BranchMaster branchMaster : bankID) {
//			List<Receipt> obj = receiptRepo.findBybankId(branchMaster.getBankID());
//			if (obj.isEmpty()) {
//				branchMasterRepo.deleteBybankID(branchMaster.getBankID());
//				newGLHeadMasterRepo.deleteByuniqueId(branchMaster.getBankID());
//				response.put("message", "Data Deleted Successfully..!!");
//			} else {
//				response.put("message", "Transaction is there can not delete Data !!!!!");
//			}
//		}
//		return ResponseEntity.ok(response);
//	}

	// Fetch All Data of Branch Master in (Bank Register Module)
	@GetMapping("/getAllDataOfBranchMaster")
	@ResponseBody
	public List<BranchMaster> getAllDataOfBranchMaster() {
		return branchMasterRepo.findAll();
	}
	
	

}
