package com.society.application.controler;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class PageController {
	
	@GetMapping("/")
	public String login(Model model) {
		model.addAttribute("msg", "");
		return "index";
	}

	@GetMapping("/logout")
	public String logout() {
		return "index";
	}
	
	@GetMapping("/getHomePage")
	public String getHomePage() {
		return "dashboard/home";
	}
	
//	--------Dashboard--------
	
	@GetMapping("/dashboard")
	public String addMember() {
		return "dashboard/home";
	}

	
//	----------------Costmization-----------------------------

	@GetMapping("/CompanyDetails")
	public String getAllLoanId(Model model) {
		return "configuration/CompanyDetails";
	}

	@GetMapping("/FYMater")
	public String FYMater(Model model) {
		return "configuration/AddFinancialMaster";
	}

	@GetMapping("/AddBankAccount")
	public String AddBankAccount(Model model) {
//		long maxId = bankMasterRepo.getMaxId();
//		String bankId = "BK" + "000" + (maxId + 1);
//		model.addAttribute("bankId", bankId);
		return "configuration/AddBankAccount";
	}

	@GetMapping("/branchMaster")
	public String branch(Model model) {
		return "configuration/Branch";
	}

	@GetMapping("/talukaMaster")
	public String talukaMaster(Model model) {
		return "configuration/AddTaluka";
	}

	// Relative Master
	@GetMapping("/relativeMaster")
	public String ShowRelativeMAsterPage() {
		return "configuration/RelativeMaster";
	}

	@GetMapping("/categoryMaster")
	public String CategoryMasterPage(Model model) {
		return "configuration/CategoryMaster";
	}

	@GetMapping("/CodeSetting")
	public String CodeSetting(Model model) {
		return "configuration/CodeSetting";
	}

	@GetMapping("/DirectorDetail")
	public String DirectorDetail(Model model) {
		return "configuration/DirectorDetail";
	}

	@GetMapping("/UserCreate")
	public String UserCreate(Model model) {
		return "configuration/UserCreate";
	}

	@GetMapping("/UserMenuAccess")
	public String UserMenuAccess(Model model) {
		return "configuration/UserMenuAccess";
	}

//	---------------CUSTOMER MODULE ----------------

	@GetMapping("/newCustomer")
	public String getNewCustomer() {
		return "member/AddMember";
	}

	@GetMapping("/customerKyc")
	public String addMemberKyc(Model model) {
		return "member/AddMemberKYC";
	}

	@GetMapping("/memberAllDetails")
	public String memberAllDetails(Model model) {
		return "member/MemberAllDetails";
	}

	@GetMapping("/memberDetailRptt")
	public String getmemberDetailRptt() {
		return "member/MemberDetailRpt";
	}

	@GetMapping("/searchMember")
	public String searchMember(Model model) {
		return "member/SearchMember";
	}

//	--------------Manage Share -------------

	@GetMapping("/shareIssue")
	public String shareIssue(Model model) {
		return "memberShare/shareTransfer";
	}

	@GetMapping("/unallotedShareReport")
	public String unallotedShareReport(Model model) {
		return "memberShare/unallotedShareReport";
	}

	@GetMapping("/shareCertificate")
	public String shareCertificate(Model model) {
		return "memberShare/shareCertificate";
	}

	@GetMapping("/DNOGenerate")
	public String DNOGenerate() {
		return "memberShare/DNOGenerate";
	}

//	 -------------Financial Consultant-----------------
	@GetMapping("/addAdvisor")
	public String addAdvisor(Model model) {
		return "advisor/addAdvisor";
	}

	@GetMapping("/advisorTree")
	public String advisorTree() {
		return "advisor/advisorTree";
	}

	@GetMapping("/advisorDownLine")
	public String advisorDownLine() {
		return "advisor/advisorDownLine";
	}

	@GetMapping("/collectorPromotion")
	public String collectorPromotion() {
		return "advisor/collectorPromotion";
	}

	@GetMapping("/idCardPrinting")
	public String idCardPrinting() {
		return "advisor/idCardPrinting";
	}

//	=---------------------MANAGE TEAM------------------

	@GetMapping("/DesignationMaster")
	public String DesignationMaster() {
		return "employee/DesignationMaster";
	}

	@GetMapping("/DepartmentMaster")
	public String DepartmentMaster() {
		return "employee/DepartmentMaster";
	}

	@GetMapping("/addEmployee")
	public String addEmployee() {
		return "employee/AddEmployee";
	}

	@GetMapping("/EmployeeIDCardPrinting")
	public String EmployeeIDCardPrinting() {
		return "employee/EmployeeIDCardPrinting";
	}

	@GetMapping("/SearchEmployee")
	public String SearchEmployee() {
		return "employee/SearchEmployee";
	}

	// ------------------Accounting --------------

	// Cashier
	@GetMapping("/cashier")
	public String cashier(Model model) {
		return "accounting/Cashier";
	}

	// Payment
	@GetMapping("/payment")
	public String payment(Model model) {
		return "accounting/Payment";
	}

	// Receipt
	@GetMapping("/receipt")
	public String receipt(Model model) {
		return "accounting/Receipt";
	}

	// Transfer
	@GetMapping("/transfer")
	public String transfer() {
		return "accounting/Transfer";
	}

	// Denomination Exchange
	@GetMapping("/denominationExchange")
	public String denominationExchange() {
		return "accounting/DenominationExchange";
	}

	// Contra
	@GetMapping("/contra")
	public String contra(Model model) {
		return "accounting/Contra";
	}

	// Transaction List
	@GetMapping("/transactionList")
	public String transactionList() {
		return "accounting/TransactionList";
	}

//	--------SAVING OPENING--------

	@GetMapping("/savingsPlanMaster")
	public String SavingsPlanMaster() {
		return "savingsAccount/SavingsPlanMaster";
	}

	@GetMapping("/addSaving")
	public String AddSaving(Model model) {
		return "savingsAccount/AddSaving";
	}

	@GetMapping("/savingsTransactionEntry")
	public String SavingsTransactionEntry(Model model) {
		return "savingsAccount/SavingsTransactionEntry";
	}

	@GetMapping("/sBInterestGenerate")
	public String SBInterestGenerate() {
		return "savingsAccount/SBInterestGenerate";
	}

	@GetMapping("/sBPassbookPrint")
	public String SBPassbookPrint(Model model) {
		return "savingsAccount/SBPassbookPrint";
	}

	@GetMapping("/savingsStatement")
	public String savingsStatement(Model model) {
		return "savingsAccount/SavingsStatement";
	}

	@GetMapping("/accountCloser")
	public String AccountCloser(Model model) {
		return "savingsAccount/AccountCloser";
	}

	@GetMapping("/searchSavingsAccount")
	public String SearchSavingsAccount() {
		return "savingsAccount/SearchSavingsAccount";
	}

	@GetMapping("/sMSChargesDeduction")
	public String SMSChargesDeduction() {
		return "savingsAccount/SMSChargesDeduction";
	}

//	---------------------MANAGE POLICY-------------

	@GetMapping("/planMaster")
	public String planMaster(Model model) {
		return "investmentSection/PlanMaster";
	}

	@GetMapping("/addInvestment")
	public String addInvestment() {
		return "investmentSection/AddInvestment";
	}

	@GetMapping("/rDRenewal")
	public String rDRenewal() {
		return "investmentSection/RDRenewal";
	}

	@GetMapping("/dailyRenewalPayment")
	public String dailyRenewalPayment() {
		return "investmentSection/DailyRenewalPayment";
	}

	@GetMapping("/flexirenewal9828")
	public String flexirenewal9828() {
		return "investmentSection/Flexirenewal9828";
	}

	@GetMapping("/renewalPassbook")
	public String renewalPassbook() {
		return "investmentSection/RenewalPassbook";
	}

	@GetMapping("/policyRenewalReceiptf0be")
	public String policyRenewalReceiptf0be() {
		return "investmentSection/PolicyRenewalReceiptf0be";
	}

	@GetMapping("/policyRenewalReceiptb376")
	public String PolicyRenewalReceiptb376() {
		return "investmentSection/PolicyRenewalReceiptb376";
	}

	@GetMapping("/certificateIssue")
	public String CertificateIssue() {
		return "investmentSection/CertificateIssue";
	}

	@GetMapping("/investmentSearch")
	public String InvestmentSearch() {
		return "investmentSection/InvestmentSearch";
	}

//	-----------------ADMINISTRATION-------------------

	@GetMapping("/LoanPlan")
	public String LoanPlan(Model model) {
		return "Loan_Section/LoanPlan";
	}

	@GetMapping("/LoanCalculator")
	public String LoanCalculator() {
		return "Loan_Section/LoanCalculator";
	}

	@GetMapping("/LoanApplication")
	public String LoanApplication(Model model) {
		return "Loan_Section/LoanApplication";
	}

	@GetMapping("/loanApplication9c5a")
	public String loanApplication9c5a(Model model) {
		return "Loan_Section/LoanApplication9c5a";
	}

	@GetMapping("/loanRepaymentf159")
	public String loanRepaymentf159(Model model) {
		return "Loan_Section/LoanRepaymentf159";
	}

	@GetMapping("/irregularEMIPaymentEntryf159")
	public String irregularEMIPaymentEntryf159(Model model) {
		return "Loan_Section/IrregularEMIPaymentEntryf159";
	}

	@GetMapping("/regularLoanStatementf159")
	public String regularLoanStatementf159(Model model) {
		return "Loan_Section/RegularLoanStatementf159";
	}

	@GetMapping("/irregularLoanStatementf159")
	public String irregularLoanStatementf159(Model model) {
		return "Loan_Section/IrregularLoanStatementf159";
	}

	@GetMapping("/regularLoanDocumentPrint")
	public String regularLoanDocumentPrint(Model model) {
		return "Loan_Section/RegularLoanDocumentPrint";
	}

	@GetMapping("/closedLoanReportf159")
	public String closedLoanReportf159(Model model) {
		return "Loan_Section/ClosedLoanReportf159";
	}

	@GetMapping("/loanPreSettlementf159")
	public String loanPreSettlementf159(Model model) {
		return "Loan_Section/LoanPreSettlementf159";
	}

	@GetMapping("/loanNocf159")
	public String loanNocf159(Model model) {
		return "Loan_Section/LoanNocf159";
	}

	@GetMapping("/loanSearch")
	public String loanSearch(Model model) {
		return "Loan_Section/LoanSearch";
	}

//	GOLD OPERATIONS-------------------

	@GetMapping("/goldLoanPlan")
	public String goldLoanPlan() {
		return "Gold_Loan/Gold_LoanPlan";
	}

	@GetMapping("/LoanPlan9d5e")
	public String AllLoanId(Model model) {
		return "Gold_Loan/LoanPlan9d5e";
	}

	// GoldLoanApplication7475
	@GetMapping("/goldLoanApplication7475")
	public String goldLoanApplication7475(Model model) {
		return "Gold_Loan/GoldLoanApplication7475";
	}

	// GoldLoanApplication9c5a
	@GetMapping("/goldLoanApplication9c5a")
	public String goldLoanApplication9c5a(Model model) {
		return "Gold_Loan/GoldLoanApplication9c5a";
	}

	@GetMapping("/goldLoanApplicationf780")
	public String goldLoanApplicationf780(Model model) {
		return "Gold_Loan/GoldLoanApplicationf780";
	}

	@GetMapping("/loanRepayment9d5e")
	public String loanRepayment9d5e(Model model) {
		return "Gold_Loan/LoanRepayment9d5e";
	}

	// GoldLoanDocumentPrint
	@GetMapping("/goldLoanDocumentPrint")
	public String goldLoanDocumentPrint(Model model) {
		return "Gold_Loan/GoldLoanDocumentPrint";
	}

	// LoanPreSettlement9d5e.html
	@GetMapping("/loanPreSettlement9d5e")
	public String loanPreSettlement9d5e(Model model) {
		return "Gold_Loan/LoanPreSettlement9d5e";
	}

	// ClosedLoanReport9d5e.html
	@GetMapping("/closedLoanReport9d5e")
	public String closedLoanReport9d5e(Model model) {
		return "Gold_Loan/ClosedLoanReport9d5e";
	}

	// LoanNoc9d5e
	@GetMapping("/loanNoc9d5e")
	public String loanNoc9d5e(Model model) {
		return "Gold_Loan/LoanNoc9d5e";
	}

	// GoldLoanSearch.jsp
	@GetMapping("/goldLoanSearch")
	public String goldLoanSearch(Model model) {
		return "Gold_Loan/GoldLoanSearch";
	}

//---------------GROUP MANAGEMENT-----------------

	@GetMapping("/LoanPlan5c22")
	public String LoanPlan5c22(Model model) {
		return "group_loan/LoanPlan5c22";
	}

	@GetMapping("/LoanGroupMaster")
	public String LoanGroupMaster(Model model) {
		return "group_loan/LoanGroupMaster";
	}

	@GetMapping("/GroupLoanApplication")
	public String GroupLoanApplication(Model model) {
		return "group_loan/GroupLoanApplication";
	}

	@GetMapping("/GroupLoanApproval9c5a")
	public String GroupLoanApproval9c5a(Model model) {
		return "group_loan/GroupLoanApproval9c5a";
	}

	@GetMapping("/GroupLoanApprovalf780")
	public String GroupLoanApprovalf780(Model model) {
		return "group_loan/GroupLoanApprovalf780";
	}

	@GetMapping("/LoanRepayment5c22")
	public String LoanRepayment5c22(Model model) {
		return "group_loan/LoanRepayment5c22";
	}

	@GetMapping("/RegularLoanStatement5c22")
	public String RegularLoanStatement5c22(Model model) {
		return "group_loan/RegularLoanStatement5c22";
	}

	@GetMapping("/ClosedLoanReportf159")
	public String ClosedLoanReportf159(Model model) {
		return "group_loan/ClosedLoanReportf159";
	}

	@GetMapping("/LoanPreSettlement5c22")
	public String LoanPreSettlement5c22(Model model) {
		return "group_loan/LoanPreSettlement5c22";
	}

	@GetMapping("/GroupLoanSearch")
	public String GroupLoanSearch(Model model) {
		return "group_loan/GroupLoanSearch";
	}

//	-------------APPROVALS--------

	@GetMapping("/addMemberApproval")
	public String addMemberApproval(Model model) {
		return "approvalSection/AddMemberApproval";
	}

	@GetMapping("/shareIssueApproval")
	public String shareIssueApproval(Model model) {
		return "approvalSection/ShareIssueApproval";
	}

	@GetMapping("/advisorApproval")
	public String advisorApproval(Model model) {
		return "approvalSection/AdvisorApproval";
	}

	@GetMapping("/investmentApproval")
	public String investmentApproval(Model model) {
		return "approvalSection/InvestmentApproval";
	}
	
	@GetMapping("/Approvedd")
	public String Approvedd(Model model) {
		return "approvalSection/Approvedd";
	}

	@GetMapping("/recurringApproval")
	public String recurringApproval(Model model) {
		return "approvalSection/RecurringApproval";
	}
	
	@GetMapping("/Approvefd")
	public String Approvefd(Model model) {
		return "approvalSection/Approvefd";
	}

	@GetMapping("/SBTxnApproval")
	public String SBTxnApproval(Model model) {
		return "approvalSection/SBTxnApproval";
	}

	@GetMapping("/intraTransferApproval")
	public String intraTransferApproval(Model model) {
		return "approvalSection/IntraTransferApproval";
	}

	@GetMapping("/regularEMIApproval")
	public String regularEMIApproval(Model model) {
		return "approvalSection/RegularEMIApproval";
	}

	@GetMapping("/paymentEntryApproval")
	public String paymentEntryApproval(Model model) {
		return "approvalSection/PaymentEntryApproval";
	}

	@GetMapping("/maturityApplicationApproval")
	public String maturityApplicationApproval(Model model) {
		return "approvalSection/MaturityApplicationApproval";
	}

	@GetMapping("/CSPCashTransferApproval")
	public String CSPCashTransferApproval(Model model) {
		return "approvalSection/CSPCashTransferApproval";
	}

//	---------------Review & Fix -----------------

	@GetMapping("/getMemberRectification")
	public String getMemberRectification() {
		return "rectificationSection/MemberRectification";
	}

	@GetMapping("/ShareRectification")
	public String getShareRectification() {
		return "rectificationSection/ShareRectification";
	}

	@GetMapping("/advisorRectification")
	public String getAdvisorRectification() {
		return "rectificationSection/AdvisorRectification";
	}

	@GetMapping("InvestmentRectification")
	public String showInvestmentRectificationPage() {
		return "rectificationSection/InvestmentRectification";
	}

	@GetMapping("/renewalRectification")
	public String getrenewalRectification() {
		return "rectificationSection/RenewalRectification";
	}

	@GetMapping("/DailyRenewalPaymentbbb6")
	public String DailyRenewalPaymentbbb6() {
		return "rectificationSection/DailyRenewalPaymentbbb6";
	}

	@GetMapping("/FlexiRenewalbbb6")
	public String FlexiRenewalbbb6() {
		return "rectificationSection/FlexiRenewalbbb6";
	}

	@GetMapping("/AddSavingbbb6")
	public String AddSavingbbb6() {
		return "rectificationSection/AddSavingbbb6";
	}

	@GetMapping("/SavingTransactionDelete")
	public String getSavingTransactionDelete() {
		return "rectificationSection/SavingTransactionDelete";
	}

	@GetMapping("/loanRectification")
	public String getloanRectification() {
		return "rectificationSection/LoanApplication";
	}

	@GetMapping("/getGoldLoanRectification")
	public String getGoldLoanRectification() {
		return "rectificationSection/GoldLoanRectification";
	}

	@GetMapping("GroupLoanRectification")
	public String showGroupLoanRectificationPage() {
		return "rectificationSection/GroupLoanRectification";
	}

//	--------------------PAYOFF SECTION-------------------

	@GetMapping("/maturityMaster")
	public String getMaturityMaster() {
		return "maturitySection/MaturityMaster";
	}

	@GetMapping("/addMaturityApplication")
	public String addMaturityApplication(Model model) {
		return "maturitySection/MaturityApplication";
	}

	@GetMapping("/addMaturityPayment")
	public String addMaturityPayment(Model model) {
		return "maturitySection/MaturityPayment";
	}

	@GetMapping("/maturityPartPayment")
	public String maturityPartPayment() {
		return "maturitySection/MaturityPartPayment";
	}

	@GetMapping("/MatApplicationStatus")
	public String getMatApplicationStatus() {
		return "maturitySection/MatApplicationStatus";
	}

	@GetMapping("/matPaymentStatusPartly")
	public String matPaymentStatusPartly() {
		return "maturitySection/MatPaymentStatusPartly";
	}

	@GetMapping("/MaturityTrackingView")
	public String showMatpaymentststus(Model model) {
		return "maturitySection/MaturityTrackingPage";
	}

	@GetMapping("/approvedStatus")
	public String getApprovedStatus() {
		return "maturitySection/ApprovedStatus";
	}

//	---------------------BONUS MANAGEMENT-----------

	@GetMapping("/incentiveMaster")
	public String incentiveMaster(Model model) {
		return "incentiveSection/IncentiveMaster";
	}

	@GetMapping("/incentiveGeneration")
	public String incentiveGeneration(Model model) {
		return "incentiveSection/IncentiveGeneration";
	}

	@GetMapping("/incentiveDetailsPrint")
	public String incentiveDetailsPrint(Model model) {
		return "incentiveSection/IncentiveDetailsPrint";
	}

	@GetMapping("/incentiveListPrint")
	public String incentiveListPrint(Model model) {
		return "incentiveSection/IncentiveListPrint";
	}

//	---------------GENERATE REPORT------------

	@GetMapping("/InvestmentReport")
	public String getInvestmentReport() {
		return "reportSection/InvestmentReport";
	}

	@GetMapping("/addEmployeeCollection")
	public String addLedgerMaster(Model model) {
		return "reportSection/EmployeeCollection";
	}

	@GetMapping("/Chequeclearancestatus")
	public String getChequeClear() {
		return "reportSection/ChequeClear";
	}

	@GetMapping("/IncentivePaymentReport")
	public String getIncentivePaymentReport() {
		return "reportSection/IncentivePaymentReport";
	}

	@GetMapping("/RecurringDueReportView")
	public String ShowRecuringPage(Model model) {
		return "reportSection/RecurringDueReportPage";
	}

	@GetMapping("/approvedLoan")
	public String approvedLoan() {
		return "reportSection/ApprovedLoan";
	}

	@GetMapping("/LoanPaymentReport")
	public String getLoanPaymentReport() {
		return "reportSection/LoanPaymentReport";
	}

	@GetMapping("/DueEmiReport")
	public String getDueEmiReport() {
		return "reportSection/DueEmiReport";
	}

	@GetMapping("/EMIOverDueReportView")
	public String showPage(Model model) {
		return "reportSection/EmiOverDuePage";
	}

	@GetMapping("/regularEmiReport")
	public String regularEmiReport() {
		return "reportSection/RegularEmiReport";
	}

	@GetMapping("/LoanSheetPrint")
	public String getLoanSheetPrint() {
		return "reportSection/LoanSheetPrint";
	}

	@GetMapping("/policystatement")
	public String policystatement() {
		return "reportSection/PolicyStatement";
	}

	@GetMapping("/addProjectionReport")
	public String addProjectionReport(Model model) {
		return "reportSection/ProjectionReport";
	}

	@GetMapping("/MaturityStatusReportView")
	public String showmaturityPage(Model model) {
		return "reportSection/MaturityStatusReportPage";
	}

//	-----------------PAYROLL MANAGEMENT------------

	@GetMapping("/DesignationMasterPayroll")
	public String designationMaster(Model model) {
		return "payrollManagement/DesignationMaster";
	}

	@GetMapping("/DepartmentMasterPayroll")
	public String departmentMaster(Model model) {
		return "payrollManagement/DepartmentMaster";
	}

	@GetMapping("/EmployeeMasterPayroll")
	public String employeeMaster(Model model) {
		return "payrollManagement/EmployeeMaster";
	}

	@GetMapping("/EmployeeLeaveDetails")
	public String employeeLeaveDetails(Model model) {
		return "payrollManagement/EmployeeLeaveDetails";
	}

	@GetMapping("/SalarySetupMaster")
	public String salarySetupMaster(Model model) {
		return "payrollManagement/SalarySetupMaster";
	}

	@GetMapping("/HrmAppointmentLetter")
	public String hrmAppointmentLetter(Model model) {
		return "payrollManagement/HrmAppointmentLetter";
	}

	@GetMapping("/HrmOfferLetter")
	public String hrmOfferLetter(Model model) {
		return "payrollManagement/HrmOfferLetter";
	}

	@GetMapping("/OffDaySetting")
	public String offDaySetting(Model model) {
		return "payrollManagement/OffDaySetting";
	}

	@GetMapping("/LeaveAdjustment")
	public String leaveAdjustment(Model model) {
		return "payrollManagement/LeaveAdjustment";
	}

	@GetMapping("/HrmAttendance")
	public String hrmAttendance(Model model) {
		return "payrollManagement/HrmAttendance";
	}

	@GetMapping("/HrmSalaryGenerate")
	public String hrmSalaryGenerate(Model model) {
		return "payrollManagement/HrmSalaryGenerate";
	}

	@GetMapping("/HrmSalaryPayment")
	public String hrmSalaryPayment(Model model) {
		return "payrollManagement/HrmSalaryPayment";
	}

	@GetMapping("/HrmSalarySlipPrint")
	public String hrmSalarySlipPrint(Model model) {
		return "payrollManagement/HrmSalarySlipPrint";
	}

	@GetMapping("/AttendanceReport")
	public String attendanceReport(Model model) {
		return "payrollManagement/AttendanceReport";
	}

	@GetMapping("/HrmSalaryPaymentReport")
	public String hrmSalaryPaymentReport(Model model) {
		return "payrollManagement/HrmSalaryPaymentReport";
	}

	@GetMapping("/HRMEmployeeSearch")
	public String hRMEmployeeSearch(Model model) {
		return "payrollManagement/HRMEmployeeSearch";
	}

	@GetMapping("/HrmEmployeeIDCard")
	public String hrmEmployeeIDCard(Model model) {
		return "payrollManagement/HrmEmployeeIDCard";
	}
}
