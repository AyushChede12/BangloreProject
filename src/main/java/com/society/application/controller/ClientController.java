/*
 * package com.society.application.controller;
 * 
 * import java.io.IOException; import java.nio.ByteBuffer; import
 * java.util.Base64; import java.util.List; import java.util.stream.Collectors;
 * 
 * import javax.persistence.Entity; import
 * javax.servlet.http.HttpServletRequest; import javax.servlet.http.HttpSession;
 * 
 * import org.springframework.beans.factory.annotation.Autowired; import
 * org.springframework.http.HttpStatus; import
 * org.springframework.http.ResponseEntity; import
 * org.springframework.stereotype.Controller; import
 * org.springframework.ui.Model; import
 * org.springframework.web.bind.annotation.GetMapping; import
 * org.springframework.web.bind.annotation.PathVariable; import
 * org.springframework.web.bind.annotation.PostMapping; import
 * org.springframework.web.bind.annotation.RequestBody; import
 * org.springframework.web.bind.annotation.RequestParam; import
 * org.springframework.web.bind.annotation.ResponseBody; import
 * org.springframework.web.multipart.MultipartFile;
 * 
 * import com.fasterxml.jackson.core.util.ByteArrayBuilder; import
 * com.society.application.dto.ApiResponse; import
 * com.society.application.model.CasteMaster; import
 * com.society.application.model.CategoryMaster; import
 * com.society.application.model.ClientMaster; import
 * com.society.application.model.DistrictMaster; import
 * com.society.application.model.Loan; import
 * com.society.application.model.MappingClientAndModules; import
 * com.society.application.model.Member; import
 * com.society.application.model.ShareAllocationMaster; import
 * com.society.application.model.ShareTransferDto; import
 * com.society.application.model.StateMaster; import
 * com.society.application.model.TalukaModel; import
 * com.society.application.repository.CasteMasterRepo; import
 * com.society.application.repository.ClientMasterRepo; import
 * com.society.application.repository.DistrictMasterRepo; import
 * com.society.application.repository.LoanRepo; import
 * com.society.application.repository.MappingClientAndModulesRepo; import
 * com.society.application.repository.MemberRepo; import
 * com.society.application.repository.ShareAllocationMasterRepo; import
 * com.society.application.repository.ShareTransferDtoRepo; import
 * com.society.application.repository.StateMasterRepo; import
 * com.society.application.repository.TalukaMasterRepo;
 * 
 * @Controller public class ClientController {
 * 
 * @Autowired private ClientMasterRepo clientMasterRepo;
 * 
 * @Autowired private ShareTransferDtoRepo shareTransferDtoRepo;
 * 
 * @Autowired private LoanRepo loanRepo;
 * 
 * @Autowired private MappingClientAndModulesRepo mappingClientAndModulesRepo;
 * 
 * @Autowired CasteMasterRepo casteMasterRepo;
 * 
 * @Autowired private ShareAllocationMasterRepo shareAllocationMasterRepo;
 * 
 * @Autowired StateMasterRepo stateMasterRepo;
 * 
 * @Autowired DistrictMasterRepo districtMasterRepo;
 * 
 * @Autowired TalukaMasterRepo talukaMasterRepo;
 * 
 * @PostMapping("/addClient") public ResponseEntity<String>
 * addClient(@RequestParam(name = "clientId", required = false) long clientId,
 * 
 * @RequestParam(name = "registrationDate", required = false) String
 * registrationDate,
 * 
 * @RequestParam(name = "memberNamePrefix", required = false) String
 * memberberNamePrefix,
 * 
 * @RequestParam(name = "memberName", required = false) String memberberName,
 * 
 * @RequestParam(name = "relativeName", required = false) String relativeName,
 * 
 * @RequestParam(name = "relativeRelation", required = false) String
 * relativeRelation,
 * 
 * @RequestParam(name = "gender", required = false) String gender,
 * 
 * @RequestParam(name = "dob", required = false) String dob,
 * 
 * @RequestParam(name = "age", required = false) String age,
 * 
 * @RequestParam(name = "maritalStatus", required = false) String maritalStatus,
 * 
 * @RequestParam(name = "address", required = false) String address,
 * 
 * @RequestParam(name = "district", required = false) String district,
 * 
 * @RequestParam(name = "state", required = false) String state,
 * 
 * @RequestParam(name = "branchName", required = false) String branchName,
 * 
 * @RequestParam(name = "loginID", required = false) String loginID,
 * 
 * @RequestParam(name = "password", required = false) String password,
 * 
 * @RequestParam(name = "memberIncome", required = false) String memberIncome,
 * 
 * @RequestParam(name = "pinCode", required = false) String pinCode,
 * 
 * @RequestParam(name = "aadharNo", required = false) String aadharNo,
 * 
 * @RequestParam(name = "pan", required = false) String pan,
 * 
 * @RequestParam(name = "voterNo", required = false) String voterNo,
 * 
 * @RequestParam(name = "phoneno", required = false) String phoneno,
 * 
 * @RequestParam(name = "emailid", required = false) String emailid,
 * 
 * @RequestParam(name = "occupation", required = false) String occupation,
 * 
 * @RequestParam(name = "education", required = false) String education,
 * 
 * @RequestParam(name = "clientPurpose", required = false) String clientPurpose,
 * 
 * @RequestParam(name = "passportNumber", required = false) String
 * passportNumber,
 * 
 * @RequestParam(name = "casteName", required = false) String casteName,
 * 
 * @RequestParam(name = "religionName", required = false) String religionName,
 * 
 * @RequestParam(name = "categoryName", required = false) String categoryName,
 * 
 * @RequestParam(name = "riskCategory", required = false) String riskCategory,
 * 
 * @RequestParam(name = "nationality", required = false) String nationality,
 * 
 * @RequestParam(name = "nomineeName", required = false) String nomineeName,
 * 
 * @RequestParam(name = "nRelation", required = false) String nRelation,
 * 
 * @RequestParam(name = "nomineeAddress", required = false) String
 * nomineeAddress,
 * 
 * @RequestParam(name = "nomineeKycNumber", required = false) String
 * nomineeKycNumber,
 * 
 * @RequestParam(name = "nomineeMobileNo", required = false) String
 * nomineeMobileNo,
 * 
 * @RequestParam(name = "nomineeAge", required = false) String nomineeAge,
 * 
 * @RequestParam(name = "nomineePanNo", required = false) String nomineePanNo,
 * 
 * @RequestParam(name = "nomineeKycType", required = false) String
 * nomineeKycType,
 * 
 * @RequestParam(name = "memberberJoiningFess", required = false) String
 * memberberJoiningFess,
 * 
 * @RequestParam(name = "shareAllotedfrm", required = false) String
 * shareAllotedfrm,
 * 
 * @RequestParam(name = "noOfShared", required = false) String noOfShared,
 * 
 * @RequestParam(name = "enterShareAmount", required = false) String
 * enterShareAmount,
 * 
 * @RequestParam(name = "paymode", required = false) String paymode,
 * 
 * @RequestParam(name = "remarks", required = false) String remarks,
 * 
 * @RequestParam(name = "memberStatusIsActive", required = false) String
 * memberberStatusIsActive,
 * 
 * @RequestParam(name = "chkmobile", required = false) String chkmobile,
 * 
 * @RequestParam(name = "chknetBanking", required = false) String chknetBanking,
 * 
 * @RequestParam(name = "chkisSms", required = false) String chkisSms,
 * 
 * @RequestParam(name = "chkMinor", required = false) String chkMinor,
 * 
 * @RequestParam(name = "filetag", required = false) MultipartFile file,
 * 
 * @RequestParam(name = "secondfiletag", required = false) MultipartFile file1,
 * 
 * @RequestParam(name = "taluka", required = false) String taluka,
 * 
 * @RequestParam(name = "village", required = false) String village,
 * 
 * @RequestParam(name = "caste", required = false) String caste, HttpSession
 * session, Model model) { try {
 * 
 * String nextClientNo = calculateNextClientNo(); String nextClientId =
 * calculateNextClientId();
 * 
 * model.addAttribute("clientNo", nextClientNo); // Display in the JSP
 * model.addAttribute("clientId", nextClientId); // Display in the JSP
 * 
 * ClientMaster client = new ClientMaster(); String createdBy =
 * session.getAttribute("ID").toString(); client.setCreatedBy(createdBy);
 * 
 * // System.out.println(createdBy); byte[] image = file.getBytes(); byte[]
 * signature = file1.getBytes(); // client.setClientNo(clientNo); //
 * client.setClientId(clientId); //
 * client.setClientNo(String.valueOf(nextClientNo)); //
 * client.setClientId(String.valueOf(nextClientNo));
 * client.setRegistrationDate(registrationDate);
 * client.setMemberNamePrefix(memberberNamePrefix);
 * client.setMemberName(memberberName); client.setRelativeName(relativeName);
 * client.setRelativeRelation(relativeRelation); client.setGender(gender);
 * client.setDob(dob); client.setAge(age);
 * client.setMaritalStatus(maritalStatus); client.setAddress(address);
 * client.setDistrict(district); client.setState(state);
 * client.setBranchName(branchName); client.setLoginID(loginID);
 * client.setPassword(password); client.setMemberIncome(memberIncome);
 * client.setPinCode(pinCode); client.setAadharNo(aadharNo); client.setPan(pan);
 * client.setVoterNo(voterNo); client.setPhoneno(phoneno);
 * client.setEmailid(emailid); client.setOccupation(occupation);
 * client.setEducation(education); client.setClientPurpose(clientPurpose);
 * client.setPassportNumber(passportNumber); client.setCasteName(casteName);
 * client.setReligionName(religionName); client.setCategoryName(categoryName);
 * client.setRiskCategory(riskCategory); client.setNationality(nationality);
 * client.setNomineeName(nomineeName); client.setnRelation(nRelation);
 * client.setNomineeAddress(nomineeAddress);
 * client.setNomineeKycNumber(nomineeKycNumber);
 * client.setNomineeMobileNo(nomineeMobileNo); client.setNomineeAge(nomineeAge);
 * client.setNomineePanNo(nomineePanNo);
 * client.setNomineeKycType(nomineeKycType);
 * client.setMemberJoiningFess(memberberJoiningFess);
 * client.setShareAllotedfrm(shareAllotedfrm); client.setNoOfShared(noOfShared);
 * client.setEnterShareAmount(enterShareAmount); client.setPaymode(paymode);
 * client.setRemarks(remarks);
 * client.setMemberStatusIsActive(memberberStatusIsActive);
 * client.setChkmobile(chkmobile); client.setChknetBanking(chknetBanking);
 * client.setChkisSms(chkisSms); client.setChkMinor(chkMinor);
 * client.setFlag("1"); client.setImage(image); client.setSignature(signature);
 * client.setTaluka(taluka); client.setVillage(village); client.setCaste(caste);
 * clientMasterRepo.save(client); session.setAttribute("createdBy", createdBy);
 * return new ResponseEntity<>("Data uploaded successfully", HttpStatus.OK); }
 * catch (Exception ex) { System.out.println(ex); return new
 * ResponseEntity<>("Data uploaded Failed !!!!",
 * HttpStatus.INTERNAL_SERVER_ERROR); } }
 * 
 * private String calculateNextClientNo() { Integer maxClientNo =
 * clientMasterRepo.findMaxClientNo(); // Calculate the next clientNo int
 * nextClientNo = maxClientNo != null ? maxClientNo + 1 : 1; return
 * String.format("%06d", nextClientNo); }
 * 
 * private String calculateNextClientId() { Integer maxClientId =
 * clientMasterRepo.findMaxClientId(); // Calculate the next clientId int
 * nextClientId = maxClientId != null ? maxClientId + 1 : 1; // Format the next
 * clientId as needed (e.g., zero-padded) return String.format("%06d",
 * nextClientId); }
 * 
 * @GetMapping("/getAllClient")
 * 
 * @ResponseBody public List<ClientMaster> getValueInEditClient() { return
 * clientMasterRepo.findAll(); }
 * 
 * @PostMapping("/appenddatainfields")
 * 
 * @ResponseBody public List<ClientMaster> appenddatainfields(@RequestBody
 * ClientMaster cm) { List<ClientMaster> data1 =
 * clientMasterRepo.findByid(cm.getId()); data1.forEach(s -> { if (data1 !=
 * null) { String encodedPhoto =
 * Base64.getEncoder().encodeToString(s.getImage()); //
 * model.addAttribute("memberSummaryPhoto", encodedPhoto);
 * s.setFrontEndPhoto(encodedPhoto); } }); return data1; }
 * 
 * @PostMapping("/addClientEdit")
 * 
 * @ResponseBody public List<ClientMaster> addClientEdit(@RequestBody
 * ClientMaster cm) { List<ClientMaster> list =
 * clientMasterRepo.findByid(cm.getId()); // model.addAttribute("list", list);
 * // return "member/AddMemberEdit";
 * 
 * list.forEach(s -> { if (s.getImage() != null && s.getSignature() != null) {
 * String encodedPhoto = Base64.getEncoder().encodeToString(s.getImage());
 * String encodedSignature =
 * Base64.getEncoder().encodeToString(s.getSignature());
 * s.setFrontEndPhoto(encodedPhoto); s.setFrontEndSignature(encodedSignature); }
 * });
 * 
 * return list; }
 * 
 * @PostMapping("/addUpdateClient") public ResponseEntity<String>
 * addUpdateClient(
 * 
 * @RequestParam(name = "registrationDate", required = false) String
 * registrationDate,
 * 
 * @RequestParam(name = "memberNamePrefix", required = false) String
 * memberberNamePrefix,
 * 
 * @RequestParam(name = "memberName", required = false) String memberberName,
 * 
 * @RequestParam(name = "relativeName", required = false) String relativeName,
 * 
 * @RequestParam(name = "relativeRelation", required = false) String
 * relativeRelation,
 * 
 * @RequestParam(name = "gender", required = false) String gender,
 * 
 * @RequestParam(name = "dob", required = false) String dob,
 * 
 * @RequestParam(name = "age", required = false) String age,
 * 
 * @RequestParam(name = "maritalStatus", required = false) String maritalStatus,
 * 
 * @RequestParam(name = "address", required = false) String address,
 * 
 * @RequestParam(name = "district", required = false) String district,
 * 
 * @RequestParam(name = "state", required = false) String state,
 * 
 * @RequestParam(name = "branchName", required = false) String branchName,
 * 
 * @RequestParam(name = "loginID", required = false) String loginID,
 * 
 * @RequestParam(name = "password", required = false) String password,
 * 
 * @RequestParam(name = "memberIncome", required = false) String memberIncome,
 * 
 * @RequestParam(name = "pinCode", required = false) String pinCode,
 * 
 * @RequestParam(name = "aadharNo", required = false) String aadharNo,
 * 
 * @RequestParam(name = "pan", required = false) String pan,
 * 
 * @RequestParam(name = "voterNo", required = false) String voterNo,
 * 
 * @RequestParam(name = "phoneno", required = false) String phoneno,
 * 
 * @RequestParam(name = "emailid", required = false) String emailid,
 * 
 * @RequestParam(name = "occupation", required = false) String occupation,
 * 
 * @RequestParam(name = "education", required = false) String education,
 * 
 * @RequestParam(name = "clientPurpose", required = false) String clientPurpose,
 * 
 * @RequestParam(name = "passportNumber", required = false) String
 * passportNumber,
 * 
 * @RequestParam(name = "casteName", required = false) String casteName,
 * 
 * @RequestParam(name = "religionName", required = false) String religionName,
 * 
 * @RequestParam(name = "categoryName", required = false) String categoryName,
 * 
 * @RequestParam(name = "riskCategory", required = false) String riskCategory,
 * 
 * @RequestParam(name = "nationality", required = false) String nationality,
 * 
 * @RequestParam(name = "nomineeName", required = false) String nomineeName,
 * 
 * @RequestParam(name = "nRelation", required = false) String nRelation,
 * 
 * @RequestParam(name = "nomineeAddress", required = false) String
 * nomineeAddress,
 * 
 * @RequestParam(name = "nomineeKycNumber", required = false) String
 * nomineeKycNumber,
 * 
 * @RequestParam(name = "nomineeMobileNo", required = false) String
 * nomineeMobileNo,
 * 
 * @RequestParam(name = "nomineeAge", required = false) String nomineeAge,
 * 
 * @RequestParam(name = "nomineePanNo", required = false) String nomineePanNo,
 * 
 * @RequestParam(name = "nomineeKycType", required = false) String
 * nomineeKycType,
 * 
 * @RequestParam(name = "memberJoiningFess", required = false) String
 * memberberJoiningFess,
 * 
 * @RequestParam(name = "shareAllotedfrm", required = false) String
 * shareAllotedfrm,
 * 
 * @RequestParam(name = "noOfShared", required = false) String noOfShared,
 * 
 * @RequestParam(name = "enterShareAmount", required = false) String
 * enterShareAmount,
 * 
 * @RequestParam(name = "paymode", required = false) String paymode,
 * 
 * @RequestParam(name = "remarks", required = false) String remarks,
 * 
 * @RequestParam(name = "memberStatusIsActive", required = false) String
 * memberberStatusIsActive,
 * 
 * @RequestParam(name = "chkmobile", required = false) String chkmobile,
 * 
 * @RequestParam(name = "chknetBanking", required = false) String chknetBanking,
 * 
 * @RequestParam(name = "chkisSms", required = false) String chkisSms,
 * 
 * @RequestParam(name = "chkMinor", required = false) String chkMinor,
 * 
 * @RequestParam(name = "filetag", required = false) MultipartFile file,
 * 
 * @RequestParam(name = "clientId", required = false) long clientId,
 * 
 * @RequestParam(name = "clientNo", required = false) long clientNo,
 * 
 * @RequestParam(name = "secondfiletag", required = false) MultipartFile file1,
 * 
 * @RequestParam(name = "taluka", required = false) String taluka,
 * 
 * @RequestParam(name = "village", required = false) String village,
 * 
 * @RequestParam(name = "caste", required = false) String caste, HttpSession
 * session) { try { List<ClientMaster> client =
 * clientMasterRepo.findByclientNo(clientNo); String createdBy =
 * session.getAttribute("ID").toString(); session.setAttribute("createdBy",
 * createdBy); client.forEach(s -> { if (file != null && file1 != null) { try {
 * // System.out.println("Updating Photo..."); byte[] image = file.getBytes();
 * byte[] signature = file1.getBytes(); s.setImage(image);
 * s.setSignature(signature); // System.out.println("Photo Updated"); } catch
 * (IOException e) { // TODO Auto-generated catch block e.printStackTrace(); } }
 * s.setRegistrationDate(registrationDate);
 * s.setMemberNamePrefix(memberberNamePrefix); s.setMemberName(memberberName);
 * s.setRelativeName(relativeName); s.setGender(gender); s.setDob(dob);
 * s.setAge(age); s.setMaritalStatus(maritalStatus); s.setAddress(address);
 * s.setDistrict(district); s.setState(state); s.setBranchName(branchName);
 * s.setLoginID(loginID); s.setPassword(password);
 * s.setMemberIncome(memberIncome); s.setPinCode(pinCode);
 * s.setAadharNo(aadharNo); s.setPan(pan); s.setVoterNo(voterNo);
 * s.setPhoneno(phoneno); s.setEmailid(emailid); s.setOccupation(occupation);
 * s.setEducation(education); s.setClientPurpose(clientPurpose);
 * s.setPassportNumber(passportNumber); s.setCasteName(casteName);
 * s.setReligionName(religionName); s.setCategoryName(categoryName);
 * s.setRiskCategory(riskCategory); s.setNationality(nationality);
 * s.setNomineeName(nomineeName); s.setnRelation(nRelation);
 * s.setNomineeAddress(nomineeAddress); s.setNomineeKycNumber(nomineeKycNumber);
 * s.setNomineeMobileNo(nomineeMobileNo); s.setNomineeAge(nomineeAge);
 * s.setNomineePanNo(nomineePanNo); s.setNomineeKycType(nomineeKycType);
 * s.setMemberJoiningFess(memberberJoiningFess);
 * s.setShareAllotedfrm(shareAllotedfrm); s.setNoOfShared(noOfShared);
 * s.setEnterShareAmount(enterShareAmount); s.setPaymode(paymode);
 * s.setRemarks(remarks); s.setMemberStatusIsActive(memberberStatusIsActive);
 * s.setChkmobile(chkmobile); s.setChknetBanking(chknetBanking);
 * s.setChkisSms(chkisSms); s.setChkMinor(chkMinor); s.setTaluka(taluka);
 * s.setVillage(village); s.setCaste(caste); s.setFlag("1");
 * clientMasterRepo.save(s); }); return new
 * ResponseEntity<>("Data Updated  successfully!!!!", HttpStatus.OK); } catch
 * (Exception ex) { System.out.println(ex); return new
 * ResponseEntity<>("Data Updated Failed !!!!",
 * HttpStatus.INTERNAL_SERVER_ERROR); } }
 * 
 * @GetMapping("/clientDepulication") public String clientDepulication(Model
 * model) { List<ClientMaster> options = clientMasterRepo.findAll();
 * model.addAttribute("options", options); return "member/clientduplicate"; }
 * 
 * @GetMapping("/getDataOfShare") public String
 * getDataOfShare(@RequestParam("ID") String id, Model model) {
 * List<ShareTransferDto> data = shareTransferDtoRepo.findBymemberData(id);
 * List<Loan> data2 = loanRepo.findBymemberData(id); List<ClientMaster> options
 * = clientMasterRepo.findAll(); model.addAttribute("options", options);
 * model.addAttribute("data", data); model.addAttribute("data2", data2); return
 * "member/clientduplicate"; }
 * 
 * @PostMapping("/addmappingClientAndModules") public ResponseEntity<String>
 * addUpdateClient(@RequestParam(name = "id2", required = false) String id2,
 * 
 * @RequestParam(name = "memberName2", required = false) String memberName2,
 * 
 * @RequestParam(name = "table2input1", required = false) String shareID,
 * 
 * @RequestParam(name = "table2input2", required = false) String shareHolding,
 * 
 * @RequestParam(name = "table2input3", required = false) String shareValues,
 * 
 * @RequestParam(name = "table2input11", required = false) String loanID,
 * 
 * @RequestParam(name = "table2input12", required = false) String loanHolding,
 * 
 * @RequestParam(name = "table2input13", required = false) String loanValues,
 * HttpSession session) { try { MappingClientAndModules mcam = new
 * MappingClientAndModules(); String createdBy =
 * session.getAttribute("ID").toString(); mcam.setCreatedBy(createdBy);
 * System.out.println(createdBy); mcam.setClientid(id2);
 * mcam.setClientName(memberName2); mcam.setShareID(shareID);
 * mcam.setShareHolding(shareHolding); mcam.setShareValues(shareValues);
 * mcam.setLoanID(loanID); mcam.setLoanHolding(loanHolding);
 * mcam.setLoanValues(loanValues); mappingClientAndModulesRepo.save(mcam);
 * session.setAttribute("createdBy", createdBy); return new
 * ResponseEntity<>("Data Saved  successfully!!!!", HttpStatus.OK); } catch
 * (Exception ex) { System.out.println(ex); return new
 * ResponseEntity<>("Data Saved Failed !!!!", HttpStatus.INTERNAL_SERVER_ERROR);
 * } }
 * 
 * // Client Report Module
 * 
 * @GetMapping("/fetchDropdownMemerReportClient")
 * 
 * @ResponseBody public List<ClientMaster> fetchDropdownMemerReportClient() {
 * List<ClientMaster> client3 = clientMasterRepo.findAll(); return client3; }
 * 
 * @GetMapping("/getCasteDetailsfordropdown")
 * 
 * @ResponseBody public List<CasteMaster> getAllcastefordropdown(Model model) {
 * return casteMasterRepo.findAll(); }
 * 
 * // get data in dropdown of share allotated from
 * 
 * @GetMapping("/getDropDownShareAllotedFrom")
 * 
 * @ResponseBody public List<ShareAllocationMaster>
 * getDropDownShareAllotedFrom() { return shareAllocationMasterRepo.findAll(); }
 * 
 * @PostMapping("/memberReportSearch1233")
 * 
 * @ResponseBody public List<ClientMaster> getClientReportSearch(@RequestBody
 * ClientMaster clientMaster) { List<ClientMaster> branchName =
 * clientMasterRepo.findBybranchName(clientMaster.getBranchName());
 * List<ClientMaster> date =
 * clientMasterRepo.findByregistrationDateBetween(clientMaster.getfDate(),
 * clientMaster.gettDate()); if (!branchName.isEmpty()) { return branchName; }
 * else return date; }
 * 
 * // Branch Dropdown Data of Search Client
 * 
 * @GetMapping("/getAllBranchDataInDropDown")
 * 
 * @ResponseBody public List<ClientMaster> getAllBranchDataInDropDown() {
 * List<ClientMaster> list = clientMasterRepo.findAll(); return list; }
 * 
 * // Search Client of client module
 * 
 * @PostMapping("/searchInTheMemeberSection")
 * 
 * @ResponseBody public List<ClientMaster>
 * searchInTheMemeberSection(@RequestBody ClientMaster clientMaster) {
 * List<ClientMaster> data1 =
 * clientMasterRepo.findBybranchName(clientMaster.getBranchName());
 * List<ClientMaster> data2 =
 * clientMasterRepo.findByregistrationDateBetween(clientMaster.getfDate(),
 * clientMaster.gettDate()); List<ClientMaster> data3 =
 * clientMasterRepo.findBymemberName(clientMaster.getMemberName());
 * 
 * List<ClientMaster> data4 =
 * clientMasterRepo.findByintroMCode(clientMaster.getIntroMCode());
 * 
 * List<ClientMaster> data5 =
 * clientMasterRepo.findByphoneno(clientMaster.getPhoneno()); List<ClientMaster>
 * data6 = clientMasterRepo.findByaadharNo(clientMaster.getAadharNo());
 * List<ClientMaster> data4 = clientMasterRepo.findBypan(clientMaster.getPan());
 * List<ClientMaster> data7 =
 * clientMasterRepo.findByclientNo(clientMaster.getClientNo()); if
 * (!data1.isEmpty()) { return data1; } else if (!data2.isEmpty()) { return
 * data2; } else if (!data3.isEmpty()) { return data3; } else if
 * (!data4.isEmpty()) { return data4; } else if (!data5.isEmpty()) { return
 * data5; } else if (!data6.isEmpty()) { return data6; } return data7; }
 * 
 * @GetMapping("/getStates")
 * 
 * @ResponseBody public List<StateMaster> getStates() { return
 * stateMasterRepo.findAll(); }
 * 
 * @GetMapping("/getDistrictByStatesId")
 * 
 * @ResponseBody public List<DistrictMaster>
 * getDistrictByStatesId(@RequestParam("stateId") int stateId) { return
 * districtMasterRepo.findAllByStateId(stateId); }
 * 
 * // save taluka
 * 
 * @PostMapping("/addTaluka") public ApiResponse saveTaluka(@RequestBody
 * TalukaModel talukaModel) { ApiResponse resp = new ApiResponse();
 * resp.setStatus("Not Success.."); resp.setMessage("Data Not Saved..!!");
 * 
 * TalukaModel taluka = talukaMasterRepo.save(talukaModel); if (taluka != null)
 * { resp.setStatus("Success.."); resp.setMessage("Data Saved..!!");
 * resp.setData(taluka); } return resp; }
 * 
 * @GetMapping("/getTalukaByDistrictId")
 * 
 * @ResponseBody public List<TalukaModel>
 * getTalukaByDistrictId(@RequestParam("districtId") int districtId) { return
 * talukaMasterRepo.findAllByDistrictId(districtId); }
 * 
 * @GetMapping("/getTalukaDetails")
 * 
 * @ResponseBody public List<TalukaModel> getTalukaDetails() { return
 * talukaMasterRepo.findAll(); }
 * 
 * @GetMapping("/deleterowtaluka") public String deleterowtaluka(@RequestParam
 * Integer id) { try { int i = talukaMasterRepo.deleteById(id); return
 * "configuration/AddTaluka"; } catch (Exception e) { System.out.println(e);
 * return e.toString(); } }
 * 
 * }
 */