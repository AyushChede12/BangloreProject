<%@ page import="java.util.List"%>
<aside class="main-sidebar">
	<!-- sidebar: style can be found in sidebar.less -->
	<section class="sidebar" style="height: auto;">
		<!-- Sidebar user panel -->
		<div class="user-panel">
			<div class="txt">
				<%
				String userCompanyName = (String) session.getAttribute("userCompanyName");
				%>
				<%=userCompanyName%>
			</div>
		</div>
		<ul class="sidebar-menu tree" data-widget="tree">
			<li class="active"><a href="dashboard"> <img
					src="dist/img/icon/ico-1.png" style="margin-right: 5px;" /> <span>DASHBOARD</span>
			</a></li>
			<li class="treeview">
				<a href="#"> 
					<i class="fa fa-cogs"></i> 
					<span>CUSTOMIZATION</span>
					<span class="pull-right-container"> 
					<i class="fa fa-angle-left pull-right"></i>
				</span>
			</a>
				<ul class="treeview-menu">
					<li><a href="CompanyDetails"><i class="fa fa-circle-o"></i>
							COMPANY MANAGE</a></li>
					<li><a href="FYMater"><i class="fa fa-circle-o"></i>
							FINANCIAL YEAR</a></li>
					<li><a href="branchMaster"><i class="fa fa-circle-o"></i>
							ADD BRANCH</a></li>
					<li><a href="AddBankAccount"><i class="fa fa-circle-o"></i>
							MANAGE BANK</a></li>
					<li><a href="talukaMaster"><i class="fa fa-circle-o"></i>
							ADD TALUKA</a></li>
					<li><a href="relativeMaster"><i class="fa fa-circle-o"></i>
							ADD RELATIVES</a></li>
					<li><a href="categoryMaster"><i class="fa fa-circle-o"></i>
							CATEGORY/CASTE</a></li>
					<li><a href="CodeSetting"><i class="fa fa-circle-o"></i>
							CODE MODULE</a></li>
					<li><a href="DirectorDetail"><i class="fa fa-circle-o"></i>
							EXECUTIVE/FOUNDER</a></li>
					<li><a href="UserCreate"><i class="fa fa-circle-o"></i>
							USER CREATION</a></li>
					<li><a href="UserMenuAccess"><i class="fa fa-circle-o"></i>
							USER MENU ACCESS</a></li>
				</ul></li>
			<li class="treeview"><a href="#"> <i class="fa fa-users sidebar-icon"></i> <span>CUSTOMER
						MODULE</span> <span class="pull-right-container"> <i
						class="fa fa-angle-left pull-right"></i>
				</span>
			</a>
				<ul class="treeview-menu">
					<li><a href="newCustomer"><i class="fa fa-circle-o"></i>
							New Customer</a></li>
					<li><a href="customerKyc"><i class="fa fa-circle-o"></i>
							Customer KYC</a></li>
					<li><a href="memberAllDetails"><i class="fa fa-circle-o"></i>
							View Summary</a></li>
					<li><a href="memberDetailRptt"><i class="fa fa-circle-o"></i>
							Print Report</a></li>
					<li><a href="searchMember"><i class="fa fa-circle-o"></i>
							Find Customer</a></li>
				</ul></li>
			<li class="treeview"><a href="#"> <i class="fa fa-share-alt"></i> <span>MANAGE
						SHARES</span> <span class="pull-right-container"> <i
						class="fa fa-angle-left pull-right"></i>
				</span>
			</a>
				<ul class="treeview-menu">
					<li><a href="shareIssue"><i class="fa fa-circle-o"></i>
							TRANSFER SHARE</a></li>
					<li><a href="unallotedShareReport"><i
							class="fa fa-circle-o"></i> UNALLOTED SHARES</a></li>
					<li><a href="shareCertificate"><i class="fa fa-circle-o"></i>
							SHARE CERTIFICATE</a></li>
					<li><a href="DNOGenerate"><i class="fa fa-circle-o"></i>
							GENERATE DNO</a></li>

				</ul></li>
			<li class="treeview"><a href="#"> <i class="fa fa-line-chart"></i> <span>FINANCIAL/CONSULTANT
				</span> <span class="pull-right-container"> <i
						class="fa fa-angle-left pull-right"></i>
				</span>
			</a>
				<ul class="treeview-menu">
					<li><a href="addAdvisor"><i class="fa fa-circle-o"></i>
							ADD NEW CONSULTANT </a></li>
					<li><a href="advisorTree"><i class="fa fa-circle-o"></i>
							FINANCIAL HIERARCHY</a></li>
					<li><a href="advisorDownLine"><i class="fa fa-circle-o"></i>
							VIEW DOWNLINE</a></li>
					<li><a href="collectorPromotion"><i class="fa fa-circle-o"></i>
							PROMOTION MANAGEMENT</a></li>
					<li><a href="idCardPrinting"><i class="fa fa-circle-o"></i>
							IDENTITY CARD</a></li>

				</ul></li>
			<li class="treeview"><a href="#"> <i class="fa fa-sitemap"></i> <span>MANAGE
						TEAM </span> <span class="pull-right-container"> <i
						class="fa fa-angle-left pull-right"></i>
				</span>
			</a>
				<ul class="treeview-menu">
					<li><a href="DesignationMaster"><i class="fa fa-circle-o"></i>
							MANAGE DESIGNATIONS </a></li>
					<li><a href="DepartmentMaster"><i class="fa fa-circle-o"></i>
							MANAGE DEPARTMENTS</a></li>
					<li><a href="addEmployee"><i class="fa fa-circle-o"></i>
							ADD NEW TEAM MEMBER</a></li>
					<li><a href="EmployeeIDCardPrinting"><i
							class="fa fa-circle-o"></i> IDENTITY CARD</a></li>
					<li><a href="SearchEmployee"><i class="fa fa-circle-o"></i>
							SEARCH TEAM MEMBER</a></li>

				</ul></li>
			<li class="treeview"><a href="#"> <i class="fa fa-book"></i> <span>MANAGE
						ACCOUNTS </span> <span class="pull-right-container"> <i
						class="fa fa-angle-left pull-right"></i>
				</span>
			</a>
				<ul class="treeview-menu">
					<li><a href="cashier"><i class="fa fa-circle-o"></i> NEW
							LEDGER </a></li>
					<li><a href="payment"><i class="fa fa-circle-o"></i>
							OUTGOING PAYMENT</a></li>
					<li><a href="receipt"><i class="fa fa-circle-o"></i>
							INCOMING RECEIPT</a></li>
					<li><a href="transfer"><i class="fa fa-circle-o"></i>
							BANK/CASH TRANSFER</a></li>
					<li><a href="denominationExchange"><i
							class="fa fa-circle-o"></i> MANUAL JOURNAL</a></li>
					<li><a href="payment"><i class="fa fa-circle-o"></i>
							INCENTIVE PAYMENT </a></li>
					<li><a href="payment"><i class="fa fa-circle-o"></i> MIS
							INTEREST PAYMENT</a></li>
					<li><a href="contra"><i class="fa fa-circle-o"></i> CHEQUE
							CLEARING PROCESSING</a></li>
					<li><a href="transactionList"><i class="fa fa-circle-o"></i>
							MANDATE DEPOSIT TO BANK</a></li>
					<li><a href="transfer"><i class="fa fa-circle-o"></i> BANK
							STATEMENT</a></li>
					<li><a href="cashier"><i class="fa fa-circle-o"></i> CASH
							BOOK </a></li>
					<li><a href="transactionList"><i class="fa fa-circle-o"></i>
							FUNDS TRANSFER REGISTER</a></li>
					<li><a href="contra"><i class="fa fa-circle-o"></i> DAILY
							TRANSACTION BOOK</a></li>
					<li><a href="denominationExchange"><i
							class="fa fa-circle-o"></i> LEDGER SUMMARY REPORT</a></li>
					<li><a href="payment"><i class="fa fa-circle-o"></i>
							JOURNAL ENTRY REPORT</a></li>

				</ul></li>
			<li class="treeview"><a href="#"> <i class="fa fa-bank"></i> <span>SAVING
						OPENING </span> <span class="pull-right-container"> <i
						class="fa fa-angle-left pull-right"></i>
				</span>
			</a>
				<ul class="treeview-menu">
					<li><a href="savingsPlanMaster"><i class="fa fa-circle-o"></i>
							SAVING SCHEME CATALOG </a></li>
					<li><a href="addSaving"><i class="fa fa-circle-o"></i>
							CREATE S/C ACCOUNT</a></li>
					<li><a href="savingsTransactionEntry"><i
							class="fa fa-circle-o"></i> SAVING ACCOUNT ACTIVITY</a></li>
					<!-- <li><a href="companySetting"><i class="fa fa-circle-o"></i>
							SAVING ACCOUNT FUND TRANSFER</a></li> -->
					<li><a href="sBInterestGenerate"><i class="fa fa-circle-o"></i>
							SAVING A/C INTEREST TRANSFER</a></li>
					<li><a href="sBPassbookPrint"><i class="fa fa-circle-o"></i>
							SAVING RECORD BOOK </a></li>
					<li><a href="savingsStatement"><i class="fa fa-circle-o"></i>
							SAVING STATEMENT</a></li>
					<li><a href="accountCloser"><i class="fa fa-circle-o"></i>
							SAVING ACCOUNT CLOSER</a></li>
					<li><a href="searchSavingsAccount"><i
							class="fa fa-circle-o"></i> SAVING ACCOUNT ENQUIRY</a></li>
					<li><a href="sMSChargesDeduction"><i
							class="fa fa-circle-o"></i> SMS SERVICE FEE</a></li>
				</ul></li>
			<li class="treeview"><a href="#"> <i class="fa fa-file-text"></i> <span>MANAGE
						POLICY </span> <span class="pull-right-container"> <i
						class="fa fa-angle-left pull-right"></i>
				</span>
			</a>
				<ul class="treeview-menu">
					<li><a href="planMaster"><i class="fa fa-circle-o"></i>
							CREATE NEW PLAN </a></li>
					<li><a href="addInvestment"><i class="fa fa-circle-o"></i>
							ADD NEW POLICY</a></li>
					<li><a href="rDRenewal"><i class="fa fa-circle-o"></i>
							POLICY RENEWAL FEE</a></li>
					<li><a href="dailyRenewalPayment"><i
							class="fa fa-circle-o"></i> DAILY PREMIUM RENEWAL</a></li>
					<li><a href="flexirenewal9828"><i class="fa fa-circle-o"></i>
							FLEXIBLE PREMIUM RENEWAL</a></li>
					<li><a href="renewalPassbook"><i class="fa fa-circle-o"></i>
							INSTALLMENT RECORD BOOK </a></li>
					<li><a href="policyRenewalReceiptf0be"><i
							class="fa fa-circle-o"></i> INVESTMENT TRANSACTION SLIP</a></li>
					<li><a href="policyRenewalReceiptb376"><i
							class="fa fa-circle-o"></i> RECURRING PAYMENT RECEIPT</a></li>
					<li><a href="certificateIssue"><i class="fa fa-circle-o"></i>
							ISSUE CERTIFICATE</a></li>
					<li><a href="investmentSearch"><i class="fa fa-circle-o"></i>
							SEARCH POLICY</a></li>
				</ul></li>
			<li class="treeview"><a href="#"> <i class="fa fa-money"></i><span>LOAN
						ADMINISTRATION </span> <span class="pull-right-container"> <i
						class="fa fa-angle-left pull-right"></i>
				</span>
			</a>
				<ul class="treeview-menu">
					<li><a href="LoanPlan"><i class="fa fa-circle-o"></i> LOAN
							SCHEME CATALOG </a></li>
					<li><a href="LoanCalculator"><i class="fa fa-circle-o"></i>
							EMI CALCULATOR</a></li>
					<li><a href="LoanApplication"><i class="fa fa-circle-o"></i>
							NEW LOAN APPLICATION</a></li>
					<li><a href="loanApplication9c5a"><i
							class="fa fa-circle-o"></i> LOAN APPROVAL</a></li>
					<li><a href="loanRepaymentf159"><i class="fa fa-circle-o"></i>
							LOAN PAYMENT</a></li>
					<li><a href="irregularEMIPaymentEntryf159"><i
							class="fa fa-circle-o"></i> REGULAR INSTALLMENT PAYMENT </a></li>
					<li><a href="#"><i class="fa fa-circle-o"></i> IRREGULAR
							INSTALLMENT PAYMENT</a></li>
					<li><a href="regularLoanStatementf159"><i
							class="fa fa-circle-o"></i> REGULAR LOAN STATEMENT</a></li>
					<li><a href="irregularLoanStatementf159"><i
							class="fa fa-circle-o"></i> IRREGULAR LOAN STATEMENT</a></li>
					<li><a href="regularLoanDocumentPrint"><i
							class="fa fa-circle-o"></i> GENERATE LOAN DOCUMENTS</a></li>
					<li><a href="closedLoanReportf159"><i
							class="fa fa-circle-o"></i> EARLY LOAN CLOSER</a></li>
					<li><a href="loanPreSettlementf159"><i
							class="fa fa-circle-o"></i> SETTLED LOAN RECORDS</a></li>
					<li><a href="loanNocf159"><i class="fa fa-circle-o"></i>
							GENERATE NOC CERTIFICATE</a></li>
					<li><a href="loanSearch"><i class="fa fa-circle-o"></i>
							SEARCH LOAN ACCOUNTS</a></li>
				</ul></li>
			<li class="treeview"><a href="#"> <i class="fa fa-diamond"></i> <span>GOLD
						OPERATIONS </span> <span class="pull-right-container"> <i
						class="fa fa-angle-left pull-right"></i>
				</span>
			</a>
				<ul class="treeview-menu">
					<li><a href="LoanPlan"><i class="fa fa-circle-o"></i> GOLD
							DIRECTORY </a></li>
					<li><a href="goldLoanApplication7475"><i
							class="fa fa-circle-o"></i> APPLY FOR GOLD</a></li>
					<li><a href="goldLoanApplication9c5a"><i
							class="fa fa-circle-o"></i> GOLD LOAN APPROVAL</a></li>
					<li><a href="goldLoanApplicationf780"><i
							class="fa fa-circle-o"></i> GOLD LOAN PAYMENT</a></li>
					<li><a href="loanRepayment9d5e"><i class="fa fa-circle-o"></i>
							EMI INSTALLMENT PAYMENT</a></li>
					<li><a href="goldLoanDocumentPrint"><i
							class="fa fa-circle-o"></i> GOLD LOAN DOCUMENT </a></li>
					<li><a href="loanPreSettlement9d5e"><i
							class="fa fa-circle-o"></i> GOLD LOAN STATEMENT</a></li>
					<li><a href="closedLoanReport9d5e"><i
							class="fa fa-circle-o"></i> GOLD LOAN CLOSURE</a></li>
					<li><a href="loanNoc9d5e"><i class="fa fa-circle-o"></i>
							GENERATE NOC CERTIFICATE</a></li>
					<li><a href="goldLoanSearch"><i class="fa fa-circle-o"></i>
							SEARCH GOLD LOAN</a></li>
				</ul></li>
			<li class="treeview"><a href="#"> <i class="fa fa-object-group"></i> <span>GROUP
						MANAGEMENT </span> <span class="pull-right-container"> <i
						class="fa fa-angle-left pull-right"></i>
				</span>
			</a>
				<ul class="treeview-menu">
					<li><a href="LoanPlan"><i class="fa fa-circle-o"></i>
							CREATE LENDING GROUP </a></li>
					<li><a href="LoanGroupMaster"><i class="fa fa-circle-o"></i>
							GROUP DIRECTORY</a></li>
					<li><a href="GroupLoanApplication"><i
							class="fa fa-circle-o"></i> APPLY FOR GROUP LOAN</a></li>
					<li><a href="GroupLoanApproval9c5a"><i
							class="fa fa-circle-o"></i> GROUP LOAN APPROVAL</a></li>
					<li><a href="GroupLoanApprovalf780"><i
							class="fa fa-circle-o"></i> GROUP LOAN PAYMENT</a></li>
					<li><a href="LoanRepayment5c22"><i class="fa fa-circle-o"></i>
							INSTALLMENT RE-PAYMENT </a></li>
					<li><a href="RegularLoanStatement5c22"><i
							class="fa fa-circle-o"></i> GENERATE STATEMENT</a></li>
					<li><a href="ClosedLoanReportf159"><i
							class="fa fa-circle-o"></i> EARLY LOAN CLOSURE</a></li>
					<li><a href="LoanPreSettlement5c22"><i
							class="fa fa-circle-o"></i> COMPLETED LOAN RECORD</a></li>
					<li><a href="GroupLoanSearch"><i class="fa fa-circle-o"></i>
							FIND GROUP RECORD</a></li>
				</ul></li>
			<li class="treeview"><a href="#"> <i class="fa fa-check-circle"></i> <span>APPROVALS
				</span> <span class="pull-right-container"> <i
						class="fa fa-angle-left pull-right"></i>
				</span>
			</a>
				<ul class="treeview-menu">
					<li><a href="addMemberApproval"><i class="fa fa-circle-o"></i>
							APPROVE CUSTOMER </a></li>
					<li><a href="shareIssueApproval"><i class="fa fa-circle-o"></i>
							APPROVE SHARE TRANSACTIONS</a></li>
					<li><a href="advisorApproval"><i class="fa fa-circle-o"></i>
							APPROVE CONSULTANT</a></li>
					<li><a href="investmentApproval"><i class="fa fa-circle-o"></i>
							APPROVE POLICY</a></li>
					<li><a href="Approvedd"><i class="fa fa-circle-o"></i>
							APPROVE DD</a></li>
					<li><a href="recurringApproval"><i class="fa fa-circle-o"></i>
							APPROVE RD</a></li>
					<li><a href="Approvefd"><i class="fa fa-circle-o"></i>
							APPROVE FD</a></li>
					<li><a href="SBTxnApproval"><i class="fa fa-circle-o"></i>
							APPROVE SAVING TRANSACTIONS</a></li>
					<li><a href="intraTransferApproval"><i
							class="fa fa-circle-o"></i> APPROVE SAVING ACCOUNT TRANSFERS</a></li>
					<li><a href="regularEMIApproval"><i class="fa fa-circle-o"></i>
							APPROVE REGULAR EMI PAYMENTS</a></li>
					<li><a href="paymentEntryApproval"><i
							class="fa fa-circle-o"></i> APPROVE MANUAL PAYMENT ENTRIES</a></li>
					<li><a href="maturityApplicationApproval"><i
							class="fa fa-circle-o"></i> APPROVE MATURITY APPLICATIONS</a></li>
					<li><a href="CSPCashTransferApproval"><i
							class="fa fa-circle-o"></i> APPROVE INTER-BRANCH CASH TRANSFER</a></li>
				</ul></li>
			<li class="treeview"><a href="#"> <i class="fa fa-edit"></i> <span>Review
						& Fix </span> <span class="pull-right-container"> <i
						class="fa fa-angle-left pull-right"></i>
				</span>
			</a>
				<ul class="treeview-menu">
					<li><a href="getMemberRectification"><i
							class="fa fa-circle-o"></i> CUSTOMER DATA UPDATE</a></li>
					<li><a href="ShareRectification"><i class="fa fa-circle-o"></i>
							SHAREHOLDING ADJUSTMENT</a></li>
					<li><a href="advisorRectification"><i
							class="fa fa-circle-o"></i> FINANCIAL ENTRY CORRECTION</a></li>
					<li><a href="InvestmentRectification"><i
							class="fa fa-circle-o"></i> POLICY DETAILS UPDATE</a></li>
					<li><a href="renewalRectification"><i
							class="fa fa-circle-o"></i> RENEWAL DATA CORRECTION</a></li>
					<li><a href="DailyRenewalPaymentbbb6"><i
							class="fa fa-circle-o"></i> DAILY RENEWAL UPDATE</a></li>
					<li><a href="FlexiRenewalbbb6"><i class="fa fa-circle-o"></i>
							FLEXIBLE TRANSACTION REMOVAL</a></li>
					<li><a href="AddSavingbbb6"><i class="fa fa-circle-o"></i>
							SAVING ACCOUNT CORRECTION</a></li>
					<li><a href="SavingTransactionDelete"><i
							class="fa fa-circle-o"></i> SAVING TRANSACTION REMOVAL</a></li>
					<li><a href="loanRectification"><i class="fa fa-circle-o"></i>
							LOAN ACCOUNT CORRECTION</a></li>
					<li><a href="getGoldLoanRectification"><i
							class="fa fa-circle-o"></i> GOLD LOAN CORRECTION</a></li>
					<li><a href="GroupLoanRectification"><i
							class="fa fa-circle-o"></i> JOINT LIABILITY UPDATE</a></li>
				</ul></li>
			<li class="treeview"><a href="#"> <i class="fa fa-credit-card"></i> <span>PAYOFF
						SECTION </span> <span class="pull-right-container"> <i
						class="fa fa-angle-left pull-right"></i>
				</span>
			</a>
				<ul class="treeview-menu">
					<li><a href="maturityMaster"><i class="fa fa-circle-o"></i>
							MATURITY SCHEME MASTER</a></li>
					<li><a href="addMaturityApplication"><i
							class="fa fa-circle-o"></i> APPLY FOR MATURITY</a></li>
					<li><a href="addMaturityPayment"><i class="fa fa-circle-o"></i>
							MATURITY APPLICATION STATUS</a></li>
					<li><a href="maturityPartPayment"><i
							class="fa fa-circle-o"></i> FULL MATURITY PAYMENT</a></li>
					<li><a href="MatApplicationStatus"><i
							class="fa fa-circle-o"></i> FULL PAYMENT STATUS</a></li>
					<li><a href="matPaymentStatusPartly"><i
							class="fa fa-circle-o"></i> PARTIAL MATURITY PAYMENT</a></li>
					<li><a href="MaturityTrackingView"><i
							class="fa fa-circle-o"></i> PARTIAL PAYMENT STATUS</a></li>
					<li><a href="approvedStatus"><i class="fa fa-circle-o"></i>
							APPROVED STATUS</a></li>
				</ul></li>
			<li class="treeview"><a href="#"> <i class="fa fa-gift"></i> <span>BONUS
						MANAGEMENT </span> <span class="pull-right-container"> <i
						class="fa fa-angle-left pull-right"></i>
				</span>
			</a>
				<ul class="treeview-menu">
					<li><a href="incentiveMaster"><i class="fa fa-circle-o"></i>
							INCENTIVE SCHEME MASTER</a></li>
					<li><a href="incentiveGeneration"><i
							class="fa fa-circle-o"></i> GENERATE INCENTIVE PAYMENTS</a></li>
					<li><a href="incentiveDetailsPrint"><i
							class="fa fa-circle-o"></i> INCENTIVE PAYMENT DETAILS</a></li>
					<li><a href="incentiveListPrint"><i class="fa fa-circle-o"></i>
							INCENTIVE SUMMARY REPORT</a></li>
				</ul></li>
			<li class="treeview"><a href="#"> <i class="fa fa-bar-chart"></i> <span>GENERATE
						REPORT </span> <span class="pull-right-container"> <i
						class="fa fa-angle-left pull-right"></i>
				</span>
			</a>
				<ul class="treeview-menu">
					<li><a href="InvestmentReport"><i class="fa fa-circle-o"></i>
							POLICY REPORT</a></li>
					<li><a href="addEmployeeCollection"><i
							class="fa fa-circle-o"></i> FINANCIAL CONSULTANT REPORT</a></li>
					<li><a href="Chequeclearancestatus"><i
							class="fa fa-circle-o"></i> CHEQUE TRANSACTION REPORT</a></li>
					<li><a href="IncentivePaymentReport"><i
							class="fa fa-circle-o"></i> INCENTIVE PAYMENT SUMMARY</a></li>
					<li><a href="RecurringDueReportView"><i
							class="fa fa-circle-o"></i> RECURRING INSTALLMENT DUE REPORT</a></li>
					<li><a href="approvedLoan"><i class="fa fa-circle-o"></i>
							LOAN REPORT</a></li>
					<li><a href="LoanPaymentReport"><i class="fa fa-circle-o"></i>
							LOAN PAYMENT REPORT</a></li>
					<li><a href="DueEmiReport"><i class="fa fa-circle-o"></i>
							UPCOMING EMI DUE REPORT</a></li>
					<li><a href="EMIOverDueReportView"><i
							class="fa fa-circle-o"></i> OVERDUE REPAYMENT ANALYSIS</a></li>
					<li><a href="regularEmiReport"><i class="fa fa-circle-o"></i>
							LOAN INSTALLMENT PENDING REPORT</a></li>
					<li><a href="LoanSheetPrint"><i class="fa fa-circle-o"></i>
							LOAN CONFIRMATON DOCUMENT</a></li>
					<li><a href="policystatement"><i class="fa fa-circle-o"></i>
							GOLD LOAN DOCUMENT</a></li>
					<li><a href="addProjectionReport"><i
							class="fa fa-circle-o"></i> JOINT LIABILITY DOCUMENT</a></li>
					<li><a href="MaturityStatusReportView"><i
							class="fa fa-circle-o"></i> MATURITY STATUS REPORT</a></li>
				</ul></li>
			<li class="treeview"><a href="#"> <i class="fa fa-id-badge"></i> <span>PAYROLL
						MANAGEMENT </span> <span class="pull-right-container"> <i
						class="fa fa-angle-left pull-right"></i>
				</span>
			</a>
				<ul class="treeview-menu">
					<li><a href="companySetting"><i class="fa fa-circle-o"></i>
							ADD DESIGNATION</a></li>
					<li><a href="branchMaster"><i class="fa fa-circle-o"></i>
							ADD DEPARTMENT</a></li>
					<li><a href="categoryMaster"><i class="fa fa-circle-o"></i>
							ADD TEAM MEMBER</a></li>
					<li><a href="companySetting"><i class="fa fa-circle-o"></i>
							TEAM MEMBER LEAVE</a></li>
					<li><a href="branchMaster"><i class="fa fa-circle-o"></i>
							SALARY DETAILS</a></li>
					<li><a href="companySetting"><i class="fa fa-circle-o"></i>
							APPOINTMENT LETTER</a></li>
					<li><a href="branchMaster"><i class="fa fa-circle-o"></i>
							OFFER LETTER ISSUE</a></li>
					<li><a href="categoryMaster"><i class="fa fa-circle-o"></i>
							HOLIDAY MASTER</a></li>
					<li><a href="companySetting"><i class="fa fa-circle-o"></i>
							LEAVE ADJUSTMENT</a></li>
					<li><a href="branchMaster"><i class="fa fa-circle-o"></i>
							ATTENDANCE</a></li>
					<li><a href="branchMaster"><i class="fa fa-circle-o"></i>
							SALARY GENERATE</a></li>
					<li><a href="branchMaster"><i class="fa fa-circle-o"></i>
							SALARY PAYMENT</a></li>
					<li><a href="branchMaster"><i class="fa fa-circle-o"></i>
							SALARY SLIP PRINT</a></li>
					<li><a href="branchMaster"><i class="fa fa-circle-o"></i>
							ATTENDANCE REPORT</a></li>
					<li><a href="branchMaster"><i class="fa fa-circle-o"></i>
							SALARY PAYMENT REPORT</a></li>
					<li><a href="branchMaster"><i class="fa fa-circle-o"></i>
							TEAM MEMBER SEARCH</a></li>
					<li><a href="branchMaster"><i class="fa fa-circle-o"></i>
							TEAM MEMBER ID CARD</a></li>

				</ul></li>
		</ul>

		<%
		List<String> serviceList = (List<String>) session.getAttribute("user");
		%>
		<%-- <li class="treeview">
				<%if(serviceList!=null && serviceList.contains("Company Setting")
           ||
           serviceList.contains("Company Setting")
           ||
           serviceList.contains("Bank Creation")
           ||
           serviceList.contains("Relative Master")
           ||
           serviceList.contains("Category Master")
        		   ){ %> <a href='#'><img src="dist/img/icon/ico-3.png"
					style="margin-right: 5px;" /><span>Configuration</span><span
					class="pull-right-container"> <i
						class="fa fa-angle-left pull-right"></i></span></a> <%} %>
				<ul class="treeview-menu">
					<%if(serviceList!=null && serviceList.contains("Company Setting")){ %>
					<li><a href="CompanyDetails"><i class="fa fa-circle-o"></i>Company
							Setting</a></li>
					<%} %>
					<%if(serviceList!=null &&  serviceList.contains("Bank Creation")){ %>
					<li><a href="branchMaster"><i class="fa fa-circle-o"></i>Bank Creation
							</a></li>
					<%} %>
					<%if(serviceList!=null &&  serviceList.contains("Relative Master")){ %>
					<li><a href="relativeMaster"><i class="fa fa-circle-o"></i>Relative Master
							</a></li>
					<%} %>
					<%if(serviceList!=null &&  serviceList.contains("Caste Master")){ %>
					<li><a href="casteMaster"><i class="fa fa-circle-o"></i>Caste Master
							</a></li>
					<%} %>
					<%if(serviceList!=null &&  serviceList.contains("Category Master")){ %>
					<li><a href="categoryMaster"><i class="fa fa-circle-o"></i>Category Master
							</a></li>
					<%} %>
					<%if(serviceList!=null &&  serviceList.contains("Taluka Master")){ %>
					<li><a href="talukaMaster"><i class="fa fa-circle-o"></i>Taluka Master
							</a></li>
					<%} %>
				</ul>
			</li> --%>

		<%-- <li class="treeview">
				<%if(serviceList!=null &&  serviceList.contains("Share Transfer") || serviceList.contains("Share Transfer")
          ||serviceList.contains("Un-allotted Shares")||serviceList.contains("Share Certificate")||
          serviceList.contains("Share Report")||
          serviceList.contains("DNO Re-Generate")){ %> <a href='#'><img
					src="dist/img/icon/ico-4.png" style="margin-right: 5px;" /><span>Member
						Share</span><span class="pull-right-container"> <i
						class="fa fa-angle-left pull-right"></i></span></a> <%} %>
				<ul class="treeview-menu">
					<%if(serviceList!=null &&  serviceList.contains("Share Transfer")){ %>
					<li><a href="shareIssue?ismodify=false"><i
							class="fa fa-circle-o"></i>New Membership </a></li>
					<%} %>
					<%if(serviceList!=null &&  serviceList.contains("Un-allotted Shares")){ %>
					<li><a href="unallotedShareReport"><i
							class="fa fa-circle-o"></i>Allotted Extra Shares</a></li>
					<%} %>
					<%if(serviceList!=null &&  serviceList.contains("Share Report")){ %>
					<li><a href="memberRegister"><i class="fa fa-circle-o"></i>Member
							Register</a></li>
					<%}%>
					<%if(serviceList!=null &&  serviceList.contains("Share Certificate")){ %>
					<li><a href="shareCertificate"><i class="fa fa-circle-o"></i>Share
							Transfer</a></li>
					<%} %>
					<%if(serviceList!=null &&  serviceList.contains("DNO Re-Generate")){ %>
					<li><a href="DNOGenerate"><i class="fa fa-circle-o"></i>Add
							Member Report </a></li>
					<%} %>
				</ul>
			</li> --%>
		<%-- <li class="treeview">
				<%if(serviceList!=null &&  serviceList.contains("Cashier") || serviceList.contains("Denomination Exchange")
          ||serviceList.contains("Payment")||serviceList.contains("Receipt")||serviceList.contains("Transfer")||
          serviceList.contains("Contra")||serviceList.contains("Ledger")||
          serviceList.contains("Transaction List")){ %> <a href='#'><img
					src="dist/img/icon/ico-4.png" style="margin-right: 5px;" /><span>Accounting
				</span><span class="pull-right-container"> <i
						class="fa fa-angle-left pull-right"></i></span></a> <%} %>
				<ul class="treeview-menu">
					<%if(serviceList!=null &&  serviceList.contains("Cashier")){ %>
					<li><a href="cashier"><i class="fa fa-circle-o"></i>Cashier</a></li>
					<%} %>
					<%if(serviceList!=null &&  serviceList.contains("Denomination Exchange")){ %>
					<li><a href="denominationExchange"><i
							class="fa fa-circle-o"></i>Denomination Exchange</a></li>
					<%} %>
					<%if(serviceList!=null &&  serviceList.contains("Payment")){ %>
					<li><a href="payment"><i class="fa fa-circle-o"></i>Payment
					</a></li>
					<%}%>
					<%if(serviceList!=null &&  serviceList.contains("Receipt")){ %>
					<li><a href="receipt"><i class="fa fa-circle-o"></i>Receipt
					</a></li>
					<%} %>
					<%if(serviceList!=null &&  serviceList.contains("Transfer")){ %>
					<li><a href="transfer"><i class="fa fa-circle-o"></i>Transfer
					</a></li>
					<%} %>
					<%if(serviceList!=null &&  serviceList.contains("Contra")){ %>
					<li><a href="contra"><i class="fa fa-circle-o"></i>Contra
					</a></li>
					<%} %>
					<%if(serviceList!=null &&  serviceList.contains("Ledger")){ %>
					<li><a href=""><i class="fa fa-circle-o"></i>Ledger </a></li>
					<%} %>
					<%if(serviceList!=null &&  serviceList.contains("Transaction List")){ %>
					<li><a href="transactionList"><i class="fa fa-circle-o"></i>Transaction
							List </a></li>
					<%} %>
				</ul>
			</li> --%>
		<%-- <li class="treeview">
				<%if(serviceList!=null &&  serviceList.contains("Add Collector/Advisor")||
        		 serviceList.contains("Collector/Advisor Tree")
        		 || serviceList.contains("Collector/Advisor Downline") || serviceList.contains("Collector/Advisor Promotion")
        		 || serviceList.contains("Collector/Advisor I-Card")
        		 ||serviceList.contains("Collector/Advisor Search")){ %> <a
				href='#'><img src="dist/img/icon/ico-5.png"
					style="margin-right: 5px;" /><span>Collector/Advisor</span><span
					class="pull-right-container"> <i
						class="fa fa-angle-left pull-right"></i></span></a> <%} %>
				<ul class="treeview-menu">
					<%if(serviceList!=null &&  serviceList.contains("Add Collector/Advisor")){ %>
					<li><a href="addAdvisor"><i class="fa fa-circle-o"></i>Add
							Collector/Advisor</a></li>
					<%} %>
					<%if(serviceList!=null &&  serviceList.contains("Collector/Advisor Tree")){ %>
					<li><a href="advisorTree"><i class="fa fa-circle-o"></i>Collector/Advisor
							Tree</a></li>
					<%} %>
					<%if(serviceList!=null &&  serviceList.contains("Collector/Advisor Downline")){ %>
					<li><a href="advisorDownLine"><i class="fa fa-circle-o"></i>Collector/Advisor
							Downline</a></li>
					<%} %>
					<%if(serviceList!=null &&  serviceList.contains("Collector/Advisor Promotion")){ %>
					<li><a href="collectorPromotion"><i class="fa fa-circle-o"></i>Collector/Advisor
							Promotion</a></li>
					<%} %>
					<%if(serviceList!=null &&  serviceList.contains("Collector/Advisor I-Card")){ %>
					<li><a href="idCardPrinting"><i class="fa fa-circle-o"></i>Collector/Advisor
							I-Card</a></li>
					<%} %>
					<%if(serviceList!=null &&  serviceList.contains("Collector/Advisor Search")){ %>
					<li><a href="advisorSearch"><i class="fa fa-circle-o"></i>Collector/Advisor
							Search</a></li>
					<%} %>
				</ul>
			</li> --%>
		<%-- <li class="treeview">
				<%if(serviceList!=null &&  serviceList.contains("Add Designation")||
        		 serviceList.contains("Add Department")||
        		 serviceList.contains("Add Employee")||
        		 serviceList.contains("Employee I-Card")||
        		 serviceList.contains("Search Employee")){ %> <a href='#'><img
					src="dist/img/icon/ico-3.png" style="margin-right: 5px;" /><span>Employee
						Section</span><span class="pull-right-container"> <i
						class="fa fa-angle-left pull-right"></i></span></a> <%} %>
				<ul class="treeview-menu">
					<%if(serviceList!=null &&  serviceList.contains("Add Designation")){ %>
					<li><a href="DesignationMaster"><i class="fa fa-circle-o"></i>Add
							Designation</a></li>
					<%} %>
					<%if(serviceList!=null &&  serviceList.contains("Add Department")){ %>
					<li><a href="DepartmentMaster"><i class="fa fa-circle-o"></i>Add
							Department</a></li>
					<%} %>
					<%if(serviceList!=null &&  serviceList.contains("Add Employee")){ %>
					<li><a href="addEmployee"><i class="fa fa-circle-o"></i>Add
							Employee</a></li>
					<%} %>
					<%if(serviceList!=null &&  serviceList.contains("Employee I-Card")){ %>
					<li><a href="EmployeeIDCardPrinting"><i
							class="fa fa-circle-o"></i>Employee I-Card</a></li>
					<%} %>
					<%if(serviceList!=null &&  serviceList.contains("Search Employee")){ %>
					<li><a href="SearchEmployee"><i class="fa fa-circle-o"></i>Search
							Employee</a></li>
					<%} %>
				</ul>
			</li> --%>
		<%-- <li class="treeview">
				<%if(serviceList!=null &&  serviceList.contains("New Account")||
				 serviceList.contains("Plan Master")||
        		 serviceList.contains("New Investment")||
        		 serviceList.contains("Renewal Payment")||
        		 serviceList.contains("Daily Renewal Payment")||
        		 serviceList.contains("Flexi Renewal Payment")||
        		 serviceList.contains("Daily/RD Passbook")||
        		 serviceList.contains("Investment Receipt")||
        		 serviceList.contains("Recurring Receipt")||
        		 serviceList.contains("Certificate Issue")||
        		 serviceList.contains("Certificate Re-Issue")||
        		 serviceList.contains("Interest Details")||
        		 serviceList.contains("Interest Payable")||
        		 serviceList.contains("Investment Search")
        		 ){ %> <a href='#'><img src="dist/img/icon/ico-6.png"
					style="margin-right: 5px;" /><span>Investment Section</span><span
					class="pull-right-container"> <i
						class="fa fa-angle-left pull-right"></i></span></a> <%} %>
				<ul class="treeview-menu">
					<%if(serviceList!=null &&  serviceList.contains("New Account")){ %>
					<li><a href="newAccount"><i class="fa fa-circle-o"></i>New
							Account</a></li>
					<%} %>
					<%if(serviceList!=null &&  serviceList.contains("Plan Master")){ %>
					<li><a href="planMaster"><i class="fa fa-circle-o"></i>Plan
							Master</a></li>
					<%} %>
					<%if(serviceList!=null &&  serviceList.contains("New Investment")){ %>
					<li><a href="addInvestment"><i class="fa fa-circle-o"></i>New
							Investment</a></li>
					<%} %>
					<%if(serviceList!=null &&  serviceList.contains("Renewal Payment")){ %>
					<li><a href="rDRenewal"><i class="fa fa-circle-o"></i>Renewal
							Payment</a></li>
					<%} %>
					<%if(serviceList!=null &&  serviceList.contains("Daily Renewal Payment")){ %>
					<li><a href="dailyRenewalPayment"><i
							class="fa fa-circle-o"></i>Daily Renewal Payment</a></li>
					<%} %>
					<%if(serviceList!=null &&  serviceList.contains("Flexi Renewal Payment")){ %>
					<li><a href="flexirenewal9828"><i class="fa fa-circle-o"></i>Flexi
							Renewal Payment</a></li>
					<%} %>
					<%if(serviceList!=null &&  serviceList.contains("Daily/RD Passbook")){ %>
					<li><a href="renewalPassbook"><i class="fa fa-circle-o"></i>Daily/RD
							Passbook</a></li>
					<%} %>
					<%if(serviceList!=null &&  serviceList.contains("Investment Receipt")){ %>
					<li><a href="policyRenewalReceiptf0be"><i
							class="fa fa-circle-o"></i>Investment Receipt</a></li>
					<%} %>
					<%if(serviceList!=null &&  serviceList.contains("Recurring Receipt")){ %>
					<li><a href="policyRenewalReceiptb376"><i
							class="fa fa-circle-o"></i>Recurring Receipt</a></li>
					<%} %>
					<%if(serviceList!=null &&  serviceList.contains("Certificate Issue")){ %>
					<li><a href="certificateIssue"><i class="fa fa-circle-o"></i>Certificate
							Issue</a></li>
					<%} %>
					<%if(serviceList!=null &&  serviceList.contains("Certificate Re-Issue")){ %>
					<li><a href="certificateIssue46b3"><i
							class="fa fa-circle-o"></i>Certificate Re-Issue</a></li>
					<%} %>
					<%if(serviceList!=null &&  serviceList.contains("Interest Details")){ %>
					<li><a href="investmentInterestDetails"><i
							class="fa fa-circle-o"></i>Interest Details</a></li>
					<%} %>
					<%if(serviceList!=null &&  serviceList.contains("Interest Payable")){ %>
					<li><a href="investmentInterestPayable"><i
							class="fa fa-circle-o"></i>Interest Payable</a></li>
					<%} %>
					<%if(serviceList!=null &&  serviceList.contains("Investment Search")){ %>
					<li><a href="investmentSearch"><i class="fa fa-circle-o"></i>Investment
							Search</a></li>
					<%} %>
				</ul>
			</li> --%>
		<%-- <li class="treeview">
				<%if(serviceList!=null &&  serviceList.contains("Savings Plan Master")||
            		serviceList.contains("Savings Opening")||
            		serviceList.contains("Savings Transaction")||
            		serviceList.contains("SB Intra Transfer")||
            		serviceList.contains("SB Interest Transfer")||
            		serviceList.contains("Savings Passbook")||
            		serviceList.contains("Savings Statement")||
            		serviceList.contains("Account Closer")||
            		serviceList.contains("Search Savings AC")||
            		serviceList.contains("SMS Charges Deduction")||
            		serviceList.contains("Service Charges Deduction")){ %> <a
				href='#'><img src="dist/img/icon/ico-9.png"
					style="margin-right: 5px;" /><span>Savings Account</span><span
					class="pull-right-container"> <i
						class="fa fa-angle-left pull-right"></i></span></a> <%} %>
				<ul class="treeview-menu">
					<%if(serviceList!=null &&  serviceList.contains("Savings Plan Master")){ %>
					<li><a href="savingsPlanMaster"><i class="fa fa-circle-o"></i>Savings
							Plan Master</a></li>
					<%} %>
					<%if(serviceList!=null &&  serviceList.contains("Savings Opening")){ %>
					<li><a href="addSaving"><i class="fa fa-circle-o"></i>Savings
							Opening</a></li>
					<%} %>
					<%if(serviceList!=null &&  serviceList.contains("Savings Transaction")){ %>
					<li><a href="savingsTransactionEntry"><i
							class="fa fa-circle-o"></i>Savings Transaction</a></li>
					<%} %>
					<%if(serviceList!=null &&  serviceList.contains("SB Interest Transfer")){ %>
					<li><a href="sBInterestGenerate"><i class="fa fa-circle-o"></i>SB
							Interest Transfer</a></li>
					<%} %>
					<%if(serviceList!=null &&  serviceList.contains("Savings Passbook")){ %>
					<li><a href="sBPassbookPrint"><i class="fa fa-circle-o"></i>Savings
							Passbook</a></li>
					<%} %>
					<%if(serviceList!=null &&  serviceList.contains("Savings Statement")){ %>
					<li><a href="savingsStatement"><i class="fa fa-circle-o"></i>Savings
							Statement</a></li>
					<%} %>
					<%if(serviceList!=null &&  serviceList.contains("Account Closer")){ %>
					<li><a href="accountCloser"><i class="fa fa-circle-o"></i>Account
							Closer</a></li>
					<%} %>
					<%if(serviceList!=null &&  serviceList.contains("Search Savings AC")){ %>
					<li><a href="searchSavingsAccount"><i
							class="fa fa-circle-o"></i>Search Savings AC</a></li>
					<%} %>
					<%if(serviceList!=null &&  serviceList.contains("SMS Charges Deduction")){ %>
					<li><a href="sMSChargesDeduction"><i
							class="fa fa-circle-o"></i>SMS Charges Deduction</a></li>
					<%} %>
					<%if(serviceList!=null &&  serviceList.contains("Service Charges Deduction")){ %>
					<li><a href="serviceChargesDeduction"><i
							class="fa fa-circle-o"></i>Service Charges Deduction</a></li>
					<%} %>
				</ul>
			</li>
			<li class="treeview">
				<%if(serviceList!=null &&  serviceList.contains("Loan Plan Creation")||
        		  serviceList.contains("Loan Calculator")||
        		  serviceList.contains("Loan Application")||
        		  serviceList.contains("Loan Authorized")||
        		  serviceList.contains("Loan Payment Section")||
        		  serviceList.contains("Regular Emi Re-payment")||
        		  serviceList.contains("Irregular Emi Re-payment")||
        		  serviceList.contains("Regular Loan Statement")||
        		  serviceList.contains("Irregular Loan Statement")||
        		  serviceList.contains("Loan Document Print")||
        		  serviceList.contains("Closed loan Details")||
        		  serviceList.contains("NOC Certificate")||
        		  serviceList.contains("Search Loan")
        		  ){ %> <a href='dashboard'><img
					src="dist/img/icon/ico-7.png" style="margin-right: 5px;" /><span>Loan
						Section</span><span class="pull-right-container"> <i
						class="fa fa-angle-left pull-right"></i></span></a> <%} %>
				<ul class="treeview-menu">
					<%if(serviceList!=null &&  serviceList.contains("Loan Plan Creation")){ %>
					<li><a href="LoanPlan"><i class="fa fa-circle-o"></i>Loan
							Plan Creation</a></li>
					<%} %>
					<%if(serviceList!=null &&  serviceList.contains("Loan Calculator")){ %>
					<li><a href="LoanCalculator"><i class="fa fa-circle-o"></i>Loan
							Calculator</a></li>
					<%} %>
					<%if(serviceList!=null &&  serviceList.contains("Loan Application")){ %>
					<li><a href="LoanApplication"><i class="fa fa-circle-o"></i>Loan
							Application</a></li>
					<%} %>
					<%if(serviceList!=null &&  serviceList.contains("Loan Authorized")){ %>
					<li><a href="loanApplication9c5a"><i
							class="fa fa-circle-o"></i>Loan Authorized</a></li>
					<%} %>
					<%if(serviceList!=null &&  serviceList.contains("Loan Payment Section")){ %>
					<li><a href="loanApplicationf780"><i
							class="fa fa-circle-o"></i>Loan Payment Section</a></li>
					<%} %>
					<%if(serviceList!=null &&  serviceList.contains("Regular Emi Re-payment")){ %>
					<li><a href="loanRepaymentf159"><i class="fa fa-circle-o"></i>Regular
							Emi Re-payment</a></li>
					<%} %>
					<%if(serviceList!=null &&  serviceList.contains("Irregular Emi Re-payment")){ %>
					<li><a href="irregularEMIPaymentEntryf159"><i
							class="fa fa-circle-o"></i>Irregular Emi Re-payment</a></li>
					<%} %>
					<%if(serviceList!=null &&  serviceList.contains("Regular Loan Statement")){ %>
					<li><a href="regularLoanStatementf159"><i
							class="fa fa-circle-o"></i>Regular Loan Statement</a></li>
					<%} %>
					<%if(serviceList!=null &&  serviceList.contains("Irregular Loan Statement")){ %>
					<li><a href="irregularLoanStatementf159"><i
							class="fa fa-circle-o"></i>Irregular Loan Statement</a></li>
					<%} %>
					<%if(serviceList!=null &&  serviceList.contains("Loan Document Print")){ %>
					<li><a href="regularLoanDocumentPrint"><i
							class="fa fa-circle-o"></i>Loan Document Print</a></li>
					<%} %>
					<%if(serviceList!=null &&  serviceList.contains("Pre Settlement")){ %>
					<li><a href="loanPreSettlementf159"><i
							class="fa fa-circle-o"></i>Pre Settlement</a></li>
					<%} %>
					<%if(serviceList!=null &&  serviceList.contains("Closed loan Details")){ %>
					<li><a href="closedLoanReportf159"><i
							class="fa fa-circle-o"></i>Closed loan Details</a></li>
					<%} %>
					<%if(serviceList!=null &&  serviceList.contains("NOC Certificate")){ %>
					<li><a href="loanNocf159"><i class="fa fa-circle-o"></i>NOC
							Certificate</a></li>
					<%} %>
					<%if(serviceList!=null &&  serviceList.contains("Search Loan")){ %>
					<li><a href="loanSearch"><i class="fa fa-circle-o"></i>Search
							Loan</a></li>
					<%} %>
				</ul>
			</li>
			<li class="treeview">
				<%if(serviceList!=null &&  serviceList.contains("Gold Plan Creation")||
         		  serviceList.contains("Gold Loan Master")||
        		  serviceList.contains("Gold Loan Master")||
        		  serviceList.contains("Gold Loan Application")||
        		  serviceList.contains("Gold Loan Authorized")||
        		  serviceList.contains("Loan Payment Section")||
        		  serviceList.contains("Regular Emi Re-payment")||
        		  serviceList.contains("Irregular Emi Re-payment")||
        		  serviceList.contains("Regular Loan Statement")||
        		  serviceList.contains("Irregular Loan Statement")||
        		  serviceList.contains("Loan Documents Print")||
        		  serviceList.contains("Pre Settlement")||
        		  serviceList.contains("Closed loan Details")||
        		  serviceList.contains("NOC Certificate")||
        		  serviceList.contains("Search Loan")
        		  ){ %> <a href='dashboard'><img
					src="dist/img/icon/ico-8.png" style="margin-right: 5px;" /><span>Gold
						Loan</span><span class="pull-right-container"> <i
						class="fa fa-angle-left pull-right"></i></span></a> <%} %>
				<ul class="treeview-menu">
					<%if(serviceList!=null &&  serviceList.contains("Gold Plan Creation")){ %>
					<li><a href="LoanPlan"><i class="fa fa-circle-o"></i>Gold
							Plan Creation</a></li>
					<%} %>
					<%if(serviceList!=null &&  serviceList.contains("Gold Loan Master")){ %>
					<li><a href="goldLoanMaster"><i class="fa fa-circle-o"></i>Gold
							Loan Master</a></li>
					<%} %>
					<%if(serviceList!=null &&  serviceList.contains("Gold Loan Application")){ %>
					<li><a href="goldLoanApplication7475?Type=Application"><i
							class="fa fa-circle-o"></i>Gold Loan Application</a></li>
					<%} %>
					<%if(serviceList!=null &&  serviceList.contains("Gold Loan Authorized")){ %>
					<li><a href="goldLoanApplication9c5a?Type=Approval"><i
							class="fa fa-circle-o"></i>Gold Loan Authorized</a></li>
					<%} %>
					<%if(serviceList!=null &&  serviceList.contains("Loan Payment Section")){ %>

					<li><a href="goldLoanApplicationf780?Type=Payment"><i
							class="fa fa-circle-o"></i>Loan Payment Section</a></li>
					<%} %>
					<%if(serviceList!=null &&  serviceList.contains("Regular Emi Re-payment")){ %>

					<li><a href="loanRepayment9d5e?Type=Gold"><i
							class="fa fa-circle-o"></i>Regular Emi Re-payment</a></li>
					<%} %>
					<%if(serviceList!=null &&  serviceList.contains("Irregular Emi Re-payment")){ %>

					<li><a href="irregularEMIPaymentEntry9d5e?Type=Gold"><i
							class="fa fa-circle-o"></i>Irregular Emi Re-payment</a></li>
					<%} %>
					<%if(serviceList!=null &&  serviceList.contains("Regular Loan Statement")){ %>

					<li><a href="regularLoanStatement9d5e?Type=Gold"><i
							class="fa fa-circle-o"></i>Regular Loan Statement</a></li>
					<%} %>
					<%if(serviceList!=null &&  serviceList.contains("Irregular Loan Statement")){ %>

					<li><a href="irregularLoanStatement9d5e?Type=Gold"><i
							class="fa fa-circle-o"></i>Irregular Loan Statement</a></li>
					<%} %>
					<%if(serviceList!=null &&  serviceList.contains("Loan Documents Print")){ %>

					<li><a href="goldLoanDocumentPrint"><i
							class="fa fa-circle-o"></i>Loan Documents Print</a></li>
					<%} %>
					<%if(serviceList!=null &&  serviceList.contains("Pre Settlement")){ %>

					<li><a href="loanPreSettlement9d5e?Type=Gold"><i
							class="fa fa-circle-o"></i>Pre Settlement</a></li>
					<%} %>
					<%if(serviceList!=null &&  serviceList.contains("Closed loan Details")){ %>

					<li><a href="closedLoanReport9d5e?Type=Gold"><i
							class="fa fa-circle-o"></i>Closed loan Details</a></li>
					<%} %>
					<%if(serviceList!=null &&  serviceList.contains("NOC Certificate")){ %>

					<li><a href="loanNoc9d5e?Type=Gold"><i
							class="fa fa-circle-o"></i>NOC Certificate</a></li>
					<%} %>
					<%if(serviceList!=null &&  serviceList.contains("Search Loan")){ %>

					<li><a href="goldLoanSearch"><i class="fa fa-circle-o"></i>Search
							Loan</a></li>
					<%} %>
				</ul>
			</li>
			<li class="treeview">
				<%if(serviceList!=null &&  serviceList.contains("Group Plan Creation")||
         		  serviceList.contains("Group Master")||
        		  serviceList.contains("Group Loan Master")||
        		  serviceList.contains("Group Loan Application")||
        		  serviceList.contains("Group Loan Authorized")||
        		  serviceList.contains("Loan Payment Section")||
        		  serviceList.contains("Emi Re-payment")||
        		  serviceList.contains("Daily Repayment Sheet")||
        		  serviceList.contains("Demand Sheet")||
        		  serviceList.contains("Loan Statement")||
        		  serviceList.contains("Pre Settlement")||
        		  serviceList.contains("Closed loan Details")||
        		  serviceList.contains("Search Loan")
        		  ){ %> <a href='dashboard'><img
					src="dist/img/icon/ico-16.png" style="margin-right: 5px;" /><span>Group
						Loan</span><span class="pull-right-container"> <i
						class="fa fa-angle-left pull-right"></i></span></a> <%} %>
				<ul class="treeview-menu">
					<%if(serviceList!=null &&  serviceList.contains("Group Plan Creation")){ %>
					<li><a href="LoanPlan"><i class="fa fa-circle-o"></i>Group
							Plan Creation</a></li>
					<%} %>
					<%if(serviceList!=null &&  serviceList.contains("Group Master")){ %>
					<li><a href="LoanGroupMaster"><i class="fa fa-circle-o"></i>Group
							Master</a></li>
					<%} %>
					<%if(serviceList!=null &&  serviceList.contains("Group Loan Application")){ %>
					<li><a href="GroupLoanApplication"><i
							class="fa fa-circle-o"></i>Group Loan Application</a></li>
					<%} %>
					<%if(serviceList!=null &&  serviceList.contains("Group Loan Authorized")){ %>
					<li><a href="GroupLoanApproval9c5a?Type=Approval"><i
							class="fa fa-circle-o"></i>Group Loan Authorized</a></li>
					<%} %>
					<%if(serviceList!=null &&  serviceList.contains("Loan Payment Section")){ %>
					<li><a href="GroupLoanApprovalf780?Type=Payment"><i
							class="fa fa-circle-o"></i>Loan Payment Section</a></li>
					<%} %>
					<%if(serviceList!=null &&  serviceList.contains("Emi Re-payment")){ %>
					<li><a href="LoanRepayment5c22?Type=Group"><i
							class="fa fa-circle-o"></i>Emi Re-payment</a></li>
					<%} %>
					<%if(serviceList!=null &&  serviceList.contains("Loan Statement")){ %>
					<li><a href="RegularLoanStatement5c22?Type=Group"><i
							class="fa fa-circle-o"></i>Loan Statement</a></li>
					<%} %>
					<%if(serviceList!=null &&  serviceList.contains("Pre Settlement")){ %>
					<li><a href="LoanPreSettlement5c22?Type=Group"><i
							class="fa fa-circle-o"></i>Pre Settlement</a></li>
					<%} %>
					<%if(serviceList!=null &&  serviceList.contains("Closed loan Details")){ %>
					<li><a href="ClosedLoanReportf159?Type=Normal"><i
							class="fa fa-circle-o"></i>Closed loan Details</a></li>
					<%} %>
					<%if(serviceList!=null &&  serviceList.contains("Search Loan")){ %>
					<li><a href="GroupLoanSearch"><i class="fa fa-circle-o"></i>Search
							Loan</a></li>
					<%} %>
				</ul>
			</li>
			<li class="treeview">
				<%if(serviceList!=null && 
         		  serviceList.contains("Member Approval")||
        		  serviceList.contains("Share Approval")||
        		  serviceList.contains("Advisor/Collector Approval")||
        		  serviceList.contains("Investment Approval")||
        		  serviceList.contains("Recurring Approval")||
        		  serviceList.contains("Saving Transaction Approval")||
        		  serviceList.contains("SB Transfer Approval")||
        		  serviceList.contains("Regular EMI Approval")||
        		  serviceList.contains("Irregular EMI Approval")||
        		  serviceList.contains("Payment Entry Approval")||
        		  serviceList.contains("Maturity Application Approval")||
        		  serviceList.contains("Maturity Application Delete")||
                  serviceList.contains("Branch Cash Transfer Approval")             
        		  ){ %><a href='#'><img src="dist/img/icon/ico-12.png"
					style="margin-right: 5px;" /><span>Approval Section</span><span
					class="pull-right-container"> <i
						class="fa fa-angle-left pull-right"></i></span></a> <%} %>
				<ul class="treeview-menu">
					<%if(serviceList!=null &&  serviceList.contains("Member Approval")){ %>
					<li><a href="addMemberApproval"><i class="fa fa-circle-o"></i>Member
							Approval</a></li>
					<%} %>
					<%if(serviceList!=null &&  serviceList.contains("Share Approval")){ %>
					<li><a href="shareIssueApproval"><i class="fa fa-circle-o"></i>Share
							Approval</a></li>
					<%} %>
					<%if(serviceList!=null &&  serviceList.contains("Advisor/Collector Approval")){ %>
					<li><a href="advisorApproval"><i class="fa fa-circle-o"></i>Advisor/Collector
							Approval</a></li>
					<%} %>
					<%if(serviceList!=null &&  serviceList.contains("Investment Approval")){ %>
					<li><a href="investmentApproval"><i class="fa fa-circle-o"></i>Investment
							Approval</a></li>
					<%} %>
					<%if(serviceList!=null &&  serviceList.contains("Recurring Approval")){ %>
					<li><a href="recurringApproval"><i class="fa fa-circle-o"></i>Recurring
							Approval</a></li>
					<%} %>
					<%if(serviceList!=null &&  serviceList.contains("Saving Transaction Approval")){ %>
					<li><a href="SBTxnApproval"><i class="fa fa-circle-o"></i>Saving
							Transaction Approval</a></li>
					<%} %>
					<%if(serviceList!=null &&  serviceList.contains("SB Transfer Approval")){ %>
					<li><a href="intraTransferApproval"><i
							class="fa fa-circle-o"></i>SB Transfer Approval</a></li>
					<%} %>
					<%if(serviceList!=null &&  serviceList.contains("Regular EMI Approval")){ %>
					<li><a href="regularEMIApproval"><i class="fa fa-circle-o"></i>Regular
							EMI Approval</a></li>
					<%} %>
					<%if(serviceList!=null &&  serviceList.contains("Irregular EMI Approval")){ %>
					<li><a href="irrularEMIApproval"><i class="fa fa-circle-o"></i>Irregular
							EMI Approval</a></li>
					<%} %>
					<%if(serviceList!=null &&  serviceList.contains("Payment Entry Approval")){ %>
					<li><a href="paymentEntryApproval"><i
							class="fa fa-circle-o"></i>Payment Entry Approval</a></li>
					<%} %>
					<%if(serviceList!=null &&  serviceList.contains("Maturity Application Approval")){ %>
					<li><a href="maturityApplicationApproval"><i
							class="fa fa-circle-o"></i>Maturity Application Approval</a></li>
					<%} %>
					<%if(serviceList!=null &&  serviceList.contains("Maturity Application Delete")){ %>
					<li><a href="maturityApplicationDelete"><i
							class="fa fa-circle-o"></i>Maturity Application Delete</a></li>
					<%} %>
					<%if(serviceList!=null &&  serviceList.contains("Branch Cash Transfer Approval")){ %>
					<li><a href="CSPCashTransferApproval"><i
							class="fa fa-circle-o"></i>Branch Cash Transfer Approval</a></li>
					<%} %>
				</ul>
			</li>
			<li class="treeview">
				<%if(serviceList!=null && 
         		  serviceList.contains("Rectification Section")||
        		  serviceList.contains("Member Rectification")||
        		  serviceList.contains("Share Rectification")||
        		  serviceList.contains("Advisor/Collector Rectification")||
        		  serviceList.contains("Investment Rectification")||
        		  serviceList.contains("Renewal Rectification")||
        		  serviceList.contains("Daily Renewal Rectification")||
        		  serviceList.contains("Regular EMI Approval")||
        		  serviceList.contains("Irregular EMI Approval")||
        		  serviceList.contains("Flexi Transaction Delete")||
        		  serviceList.contains("Savings Rectification")||
        		  serviceList.contains("Savings Transaction Delete")||
                  serviceList.contains("Loan Rectification")||
                  serviceList.contains("Gold Loan Rectification")||
                  serviceList.contains("Group Loan Rectification")||
                  serviceList.contains("Employee Modification")
        		  ){ %> <a href='#'><img src="dist/img/icon/ico-10.png"
					style="margin-right: 5px;" /><span>Rectification Section</span><span
					class="pull-right-container"> <i
						class="fa fa-angle-left pull-right"></i></span></a> <%} %>
				<ul class="treeview-menu">
					<%if(serviceList!=null &&  serviceList.contains("Member Rectification")){ %>
					<li><a href="getMemberRectification"><i
							class="fa fa-circle-o"></i>Member Rectification</a></li>
					<%} %>
					<%if(serviceList!=null &&  serviceList.contains("Share Rectification")){ %>
					<li><a href="ShareRectification"><i class="fa fa-circle-o"></i>Share
							Rectification</a></li>
					<%} %>
					<%if(serviceList!=null &&  serviceList.contains("Advisor/Collector Rectification")){ %>
					<li><a href="advisorRectification"><i
							class="fa fa-circle-o"></i>Advisor/Collector Rectification</a></li>
					<%} %>
					<%if(serviceList!=null &&  serviceList.contains("Investment Rectification")){ %>
					<li><a href="InvestmentRectification"><i
							class="fa fa-circle-o"></i>Investment Rectification</a></li>
					<%} %>
					<%if(serviceList!=null &&  serviceList.contains("Renewal Rectification")){ %>
					<li><a href="renewalRectification"><i
							class="fa fa-circle-o"></i>Renewal Rectification</a></li>
					<%} %>
					<%if(serviceList!=null &&  serviceList.contains("Daily Renewal Rectification")){ %>
					<li><a href="DailyRenewalPaymentbbb6"><i
							class="fa fa-circle-o"></i>Daily Renewal Rectification</a></li>
					<%} %>
					<%if(serviceList!=null &&  serviceList.contains("Flexi Transaction Delete")){ %>
					<li><a href="FlexiRenewalbbb6"><i class="fa fa-circle-o"></i>Flexi
							Transaction Delete</a></li>
					<%} %>
					<%if(serviceList!=null &&  serviceList.contains("Savings Rectification")){ %>
					<li><a href="AddSavingbbb6"><i class="fa fa-circle-o"></i>Savings
							Rectification</a></li>
					<%} %>
					<%if(serviceList!=null &&  serviceList.contains("Savings Transaction Delete")){ %>
					<li><a href="SavingTransactionDelete"><i
							class="fa fa-circle-o"></i>Savings Transaction Delete</a></li>
					<%} %>
					<%if(serviceList!=null &&  serviceList.contains("Loan Rectification")){ %>
					<li><a href="loanRectification"><i class="fa fa-circle-o"></i>Loan
							Rectification</a></li>
					<%} %>
					<%if(serviceList!=null &&  serviceList.contains("Gold Loan Rectification")){ %>
					<li><a href="getGoldLoanRectification"><i
							class="fa fa-circle-o"></i>Gold Loan Rectification</a></li>
					<%} %>
					<%if(serviceList!=null &&  serviceList.contains("Group Loan Rectification")){ %>
					<li><a href="GroupLoanRectification"><i
							class="fa fa-circle-o"></i>Group Loan Rectification</a></li>
					<%} %>
					<%if(serviceList!=null &&  serviceList.contains("Employee Employee")){ %>
					<li><a href="AddEmployeebbb6.html?IsModification=true"><i
							class="fa fa-circle-o"></i>Employee c</a></li>
					<%} %>
				</ul>
			</li>
			<li class="treeview">
				<%if(serviceList!=null && 
         		  serviceList.contains("Ledger Master")||
        		  serviceList.contains("Payment Entry ")||
        		  serviceList.contains("Receive Entry")||
        		  serviceList.contains("Contra Entry")||
        		  serviceList.contains("Journal Entry")||
        		  serviceList.contains("Incentive Payment")||
        		  serviceList.contains("MIS int. Payment")||
        		  serviceList.contains("Cheque Clearing")||
        		  serviceList.contains("Mandate Deposit to Bank")||
        		  serviceList.contains("Bank Statement")||
        		  serviceList.contains("Cash Book")||
        		  serviceList.contains("Transfer Book")||
                  serviceList.contains("Day Book")||
                  serviceList.contains("Ledger Report")||
                  serviceList.contains("Journal Report")||
                  serviceList.contains("Trail Balance")||
                  serviceList.contains("P&L Statement (FY)")||
                  serviceList.contains("Balance Sheet (FY)")||
                  serviceList.contains("P&L Statement")||
                  serviceList.contains("Balance Sheet")||
                  serviceList.contains("Branch Cash Transfer")
        		  ){ %> <a href='#'><img src="dist/img/icon/ico-11.png"
					style="margin-right: 5px;" /><span>Accounts Section</span><span
					class="pull-right-container"> <i
						class="fa fa-angle-left pull-right"></i></span></a> <%} %>
				<ul class="treeview-menu">
					<%if(serviceList!=null &&  serviceList.contains("Ledger Master")){ %>
					<li><a href="accountLegMaster"><i class="fa fa-circle-o"></i>Ledger
							Master</a></li>
					<%} %>
					<%if(serviceList!=null &&  serviceList.contains("Payment Entry")){ %>
					<li><a href="paymentEntryView"><i class="fa fa-circle-o"></i>Payment
							Entry</a></li>
					<%} %>
					<%if(serviceList!=null &&  serviceList.contains("Receive Entry")){ %>
					<li><a href="addrecievceVoucher"><i class="fa fa-circle-o"></i>Receive
							Entry</a></li>
					<%} %>
					<%if(serviceList!=null &&  serviceList.contains("Contra Entry")){ %>
					<li><a href="contraEntry"><i class="fa fa-circle-o"></i>Contra
							Entry</a></li>
					<%} %>
					<%if(serviceList!=null &&  serviceList.contains("Journal Entry")){ %>
					<li><a href="journalEntry"><i class="fa fa-circle-o"></i>Journal
							Entry</a></li>
					<%} %>
					<%if(serviceList!=null &&  serviceList.contains("Incentive Payment")){ %>
					<li><a href="incentivepayment"><i class="fa fa-circle-o"></i>Incentive
							Payment</a></li>
					<%} %>
					<%if(serviceList!=null &&  serviceList.contains("MIS int. Payment")){ %>
					<li><a href="misIntPayment"><i class="fa fa-circle-o"></i>MIS
							int. Payment</a></li>
					<%} %>
					<%if(serviceList!=null &&  serviceList.contains("Cheque Clearing")){ %>
					<li><a href="ChequeClear"><i class="fa fa-circle-o"></i>Cheque
							Clearing</a></li>
					<%} %>
					<%if(serviceList!=null &&  serviceList.contains("Mandate Deposit to Bank")){ %>
					<li><a href="mandateDeposit"><i class="fa fa-circle-o"></i>Mandate
							Deposit to Bank</a></li>
					<%} %>
					<%if(serviceList!=null &&  serviceList.contains("Bank Statement")){ %>
					<li><a href="bankstatement"><i class="fa fa-circle-o"></i>Bank
							Statement</a></li>
					<%} %>
					<%if(serviceList!=null &&  serviceList.contains("Cash Book")){ %>
					<li><a href="cashbook"><i class="fa fa-circle-o"></i>Cash
							Book</a></li>
					<%} %>
					<%if(serviceList!=null &&  serviceList.contains("Transfer Book")){ %>
					<li><a href="transferBook"><i class="fa fa-circle-o"></i>Transfer
							Book</a></li>
					<%} %>
					<%if(serviceList!=null &&  serviceList.contains("Day Book")){ %>
					<li><a href="DayBook"><i class="fa fa-circle-o"></i>Day
							Book</a></li>
					<%} %>
					<%if(serviceList!=null &&  serviceList.contains("Ledger Report")){ %>
					<li><a href="ledgerReport"><i class="fa fa-circle-o"></i>Ledger
							Report</a></li>
					<%} %>
					<%if(serviceList!=null &&  serviceList.contains("Journal Report")){ %>
					<li><a href="journalReport"><i class="fa fa-circle-o"></i>Journal
							Report</a></li>
					<%} %>
					<%if(serviceList!=null &&  serviceList.contains("Trail Balance")){ %>
					<li><a href="trialBalance"><i class="fa fa-circle-o"></i>Trail
							Balance</a></li>
					<%} %>
					<%if(serviceList!=null &&  serviceList.contains("P&L Statement (FY)")){ %>
					<li><a href="PLStatementView"><i class="fa fa-circle-o"></i>P&L
							Statement (FY)</a></li>
					<%} %>
					<%if(serviceList!=null &&  serviceList.contains("Balance Sheet (FY)")){ %>
					<li><a href="FinancialBalanceSheet"><i
							class="fa fa-circle-o"></i>Balance Sheet (FY)</a></li>
					<%} %>
					<%if(serviceList!=null &&  serviceList.contains("P&L Statement")){ %>
					<li><a href="pandlstatement"><i class="fa fa-circle-o"></i>P&L
							Statement</a></li>
					<%} %>
					<%if(serviceList!=null &&  serviceList.contains("Balance Sheet")){ %>
					<li><a href="Balancesheet"><i class="fa fa-circle-o"></i>Balance
							Sheet</a></li>
					<%} %>
					<%if(serviceList!=null &&  serviceList.contains("Branch Cash Transfer")){ %>
					<li><a href="branchCashTransfer"><i class="fa fa-circle-o"></i>Branch
							Cash Transfer</a></li>
					<%} %>
				</ul>
			</li>
			<li class="treeview">
				<%if(serviceList!=null && 
         		  serviceList.contains("Incentive Section")||
        		  serviceList.contains("Incentive Master")||
        		  serviceList.contains("Incentive Generate")||
        		  serviceList.contains("Incentive Details")||
        		  serviceList.contains("Incentive List")
        		  ){ %> <a href='#'><img src="dist/img/icon/ico-13.png"
					style="margin-right: 5px;" /><span>Incentive Section</span><span
					class="pull-right-container"> <i
						class="fa fa-angle-left pull-right"></i></span></a> <%} %>
				<ul class="treeview-menu">
					<%if(serviceList!=null &&  serviceList.contains("Incentive Master")){ %>
					<li><a href="incentiveMaster"><i class="fa fa-circle-o"></i>Incentive
							Master</a></li>
					<%} %>
					<%if(serviceList!=null &&  serviceList.contains("Incentive Generate")){ %>
					<li><a href="incentiveGeneration"><i
							class="fa fa-circle-o"></i>Incentive Generate</a></li>
					<%} %>
					<%if(serviceList!=null &&  serviceList.contains("Incentive Details")){ %>
					<li><a href="incentiveDetailsPrint"><i
							class="fa fa-circle-o"></i>Incentive Details</a></li>
					<%} %>
					<%if(serviceList!=null &&  serviceList.contains("Incentive List")){ %>
					<li><a href="incentiveListPrint"><i class="fa fa-circle-o"></i>Incentive
							List</a></li>
					<%} %>
				</ul>
			</li>
			<li class="treeview">
				<%if(serviceList!=null && 
         		  serviceList.contains("Maturity Master")||
        		  serviceList.contains("Maturity Application")||
        		  serviceList.contains("Maturity Payment")||
        		  serviceList.contains("Maturity Payment (Partly)")||
        		  serviceList.contains("Mat. Application Status")||
        		  serviceList.contains("Approved Status")||
        		  serviceList.contains("Mat. Payment Status")||
        		  serviceList.contains("Mat. Payment Status (Partly)")||
        		  serviceList.contains("Maturity Receipt Print")
        		  ){ %> <a href='#'><img src="dist/img/icon/ico-14.png"
					style="margin-right: 5px;" /><span>Maturity Section</span><span
					class="pull-right-container"> <i
						class="fa fa-angle-left pull-right"></i></span></a> <%} %>
				<ul class="treeview-menu">
					<%if(serviceList!=null &&  serviceList.contains("Maturity Master")){ %>
					<li><a href="maturityMaster"><i class="fa fa-circle-o"></i>Maturity
							Master</a></li>
					<%} %>
					<%if(serviceList!=null &&  serviceList.contains("Maturity Application")){ %>
					<li><a href="addMaturityApplication"><i
							class="fa fa-circle-o"></i>Maturity Application</a></li>
					<%} %>
					<%if(serviceList!=null &&  serviceList.contains("Maturity Payment")){ %>
					<li><a href="addMaturityPayment"><i class="fa fa-circle-o"></i>Maturity
							Payment</a></li>
					<%} %>
					<%if(serviceList!=null &&  serviceList.contains("Maturity Payment (Partly)")){ %>
					<li><a href="maturityPartPayment"><i
							class="fa fa-circle-o"></i>Maturity Payment (Partly)</a></li>
					<%} %>
					<%if(serviceList!=null &&  serviceList.contains("Mat. Application Status")){ %>
					<li><a href="MatApplicationStatus"><i
							class="fa fa-circle-o"></i>Mat. Application Status</a></li>
					<%} %>
					<%if(serviceList!=null &&  serviceList.contains("Approved Status")){ %>
					<li><a href="approvedStatus"><i class="fa fa-circle-o"></i>Approved
							Status</a></li>
					<%} %>
					<%if(serviceList!=null &&  serviceList.contains("Mat. Payment Status")){ %>
					<li><a href="MaturityTrackingView"><i
							class="fa fa-circle-o"></i>Mat. Payment Status</a></li>
					<%} %>
					<%if(serviceList!=null &&  serviceList.contains("Mat. Payment Status (Partly)")){ %>
					<li><a href="matPaymentStatusPartly"><i
							class="fa fa-circle-o"></i>Mat. Payment Status (Partly)</a></li>
					<%} %>
					<%if(serviceList!=null &&  serviceList.contains("Maturity Receipt Print")){ %>
					<li><a href="MaturityReceiptPrint"><i
							class="fa fa-circle-o"></i>Maturity Receipt Print</a></li>
					<%} %>
				</ul>
			</li>
			<li class="treeview">
				<%if(serviceList!=null && 
         		  serviceList.contains("Investment Report")||
        		  serviceList.contains("Investment Summary")||
        		  serviceList.contains("Advisor Collection")||
        		  serviceList.contains("Advisor Team Collection")||
        		  serviceList.contains("Cheque Clearance Status")||
        		  serviceList.contains("Incentive Payment report")||
        		  serviceList.contains("Recurring Due Report")||
        		  serviceList.contains("Loan Not approved Report")||
        		  serviceList.contains("Approved Loan")||
        		  serviceList.contains("Loan Payment Report")||
        		  serviceList.contains("Due Emi Report")||
        		  serviceList.contains("Emi Over Due Report")||
        		  serviceList.contains("Emi Outstanding Report")||
        		  serviceList.contains("Regular EMI Report")||
        		  serviceList.contains("Loan Sheet Print")||
        		  serviceList.contains("Maturity Status")||
        		  serviceList.contains("Projection Report")||
        		  serviceList.contains("Maturity Liability Report")||
        		  serviceList.contains("TDS Deduction Report")||
        		  serviceList.contains("Policy Statement")
        		  ){ %> <a href='#'><img src="dist/img/icon/ico-15.png"
					style="margin-right: 5px;" /><span>Report Section</span><span
					class="pull-right-container"> <i
						class="fa fa-angle-left pull-right"></i></span></a> <%} %>
				<ul class="treeview-menu">
					<%if(serviceList!=null &&  serviceList.contains("Investment Report")){ %>
					<li><a href="InvestmentReport"><i class="fa fa-circle-o"></i>Investment
							Report</a></li>
					<%} %>
					<%if(serviceList!=null &&  serviceList.contains("Investment - Summary")){ %>
					<li><a href="investmentReportSummaryView"><i
							class="fa fa-circle-o"></i>Investment - Summary</a></li>
					<%} %>
					<%if(serviceList!=null &&  serviceList.contains("Advisor Collection")){ %>
					<li><a href="addEmployeeCollection"><i
							class="fa fa-circle-o"></i>Advisor Collection</a></li>
					<%} %>
					<%if(serviceList!=null &&  serviceList.contains("Advisor Team Collection")){ %>
					<li><a href="getAdvisorTeamCollection"><i
							class="fa fa-circle-o"></i>Advisor Team Collection</a></li>
					<%} %>
					<%if(serviceList!=null &&  serviceList.contains("Cheque Clearance Status")){ %>
					<li><a href="Chequeclearancestatus"><i
							class="fa fa-circle-o"></i>Cheque Clearance Status</a></li>
					<%} %>
					<%if(serviceList!=null &&  serviceList.contains("Incentive Payment report")){ %>
					<li><a href="IncentivePaymentReport"><i
							class="fa fa-circle-o"></i>Incentive Payment report</a></li>
					<%} %>
					<%if(serviceList!=null &&  serviceList.contains("Recurring Due Report")){ %>
					<li><a href="RecurringDueReportView"><i
							class="fa fa-circle-o"></i>Recurring Due Report</a></li>
					<%} %>
					<%if(serviceList!=null &&  serviceList.contains("Loan Not approved Report")){ %>
					<li><a href="LoanNotApprovedReport"><i
							class="fa fa-circle-o"></i>Loan Not approved Report</a></li>
					<%} %>
					<%if(serviceList!=null &&  serviceList.contains("Approved Loan")){ %>
					<li><a href="approvedLoan"><i class="fa fa-circle-o"></i>Approved
							Loan </a></li>
					<%} %>
					<%if(serviceList!=null &&  serviceList.contains("Loan Payment Report")){ %>
					<li><a href="LoanPaymentReport"><i class="fa fa-circle-o"></i>Loan
							Payment Report</a></li>
					<%} %>
					<%if(serviceList!=null &&  serviceList.contains("Due Emi Report")){ %>
					<li><a href="DueEmiReport"><i class="fa fa-circle-o"></i>Due
							Emi Report</a></li>
					<%} %>
					<%if(serviceList!=null &&  serviceList.contains("Emi Over Due Report")){ %>
					<li><a href="EMIOverDueReportView"><i
							class="fa fa-circle-o"></i>Emi Over Due Report</a></li>
					<%} %>
					<%if(serviceList!=null &&  serviceList.contains("Emi Outstanding Report")){ %>
					<li><a href="addLoanEMIOutstandingReport"><i
							class="fa fa-circle-o"></i>Emi Outstanding Report</a></li>
					<%} %>
					<%if(serviceList!=null &&  serviceList.contains("Regular EMI Report")){ %>
					<li><a href="regularEmiReport"><i class="fa fa-circle-o"></i>Regular
							EMI Report</a></li>
					<%} %>
					<%if(serviceList!=null &&  serviceList.contains("Irregular EMI Report")){ %>
					<li><a href="irrregularEMIReport"><i
							class="fa fa-circle-o"></i>Irregular EMI Report</a></li>
					<%} %>
					<%if(serviceList!=null &&  serviceList.contains("Loan Sheet Print")){ %>
					<li><a href="LoanSheetPrint"><i class="fa fa-circle-o"></i>Loan
							Sheet Print</a></li>
					<%} %>
					<%if(serviceList!=null &&  serviceList.contains("Maturity Status")){ %>
					<li><a href="MaturityStatusReportView"><i
							class="fa fa-circle-o"></i>Maturity Status</a></li>
					<%} %>
					<%if(serviceList!=null &&  serviceList.contains("Projection Report")){ %>
					<li><a href="addProjectionReport"><i
							class="fa fa-circle-o"></i>Projection Report</a></li>
					<%} %>
					<%if(serviceList!=null &&  serviceList.contains("Maturity Liability Report")){ %>
					<li><a href="maturityLiabilityReport"><i
							class="fa fa-circle-o"></i>Maturity Liability Report</a></li>
					<%} %>
					<%if(serviceList!=null &&  serviceList.contains("TDS Deduction Report")){ %>
					<li><a href="TDSDeductionReport"><i class="fa fa-circle-o"></i>TDS
							Deduction Report</a></li>
					<%} %>
					<%if(serviceList!=null &&  serviceList.contains("Policy Statement")){ %>
					<li><a href="policystatement"><i class="fa fa-circle-o"></i>Policy
							Statement</a></li>
					<%} %>
				</ul>
			</li>
			<li class="treeview">
				<%if(serviceList!=null && 
         		  serviceList.contains("Add Designation")||
        		  serviceList.contains("Add Department")||
        		  serviceList.contains("Add Employee")||
        		  serviceList.contains("Employee Leave")||
        		  serviceList.contains("Salary Details")||
        		  serviceList.contains("Appointment Letter")||
        		  serviceList.contains("Offer Letter Issue")||
        		  serviceList.contains("Holiday Master")||
        		  serviceList.contains("Leave Adjustment")||
        		  serviceList.contains("Attendance")||
        		  serviceList.contains("Salary Payment Report")||
        		  serviceList.contains("Salary Payment")||
        		  serviceList.contains("Attendance Report")||
        		  serviceList.contains("Employee Search")||
        		  serviceList.contains("Employee ID Card")
        		  ){ %> <a href='#'><img src="dist/img/icon/ico-17.png"
					style="margin-right: 5px;" /><span>Payroll Management</span><span
					class="pull-right-container"> <i
						class="fa fa-angle-left pull-right"></i></span></a> <%} %>
				<ul class="treeview-menu">
					<%if(serviceList!=null &&  serviceList.contains("Add Designation")){ %>
					<li><a href="DesignationMasterPayroll"><i
							class="fa fa-circle-o"></i>Add Designation</a></li>
					<%} %>
					<%if(serviceList!=null &&  serviceList.contains("Add Department")){ %>
					<li><a href="DepartmentMasterPayroll"><i
							class="fa fa-circle-o"></i>Add Department</a></li>
					<%} %>
					<%if(serviceList!=null &&  serviceList.contains("Add Employee")){ %>
					<li><a href="EmployeeMasterPayroll"><i
							class="fa fa-circle-o"></i>Add Employee</a></li>
					<%} %>
					<%if(serviceList!=null &&  serviceList.contains("Employee Leave")){ %>
					<li><a href="EmployeeLeaveDetails"><i
							class="fa fa-circle-o"></i>Employee Leave</a></li>
					<%} %>
					<%if(serviceList!=null &&  serviceList.contains("Salary Details")){ %>
					<li><a href="SalarySetupMaster"><i class="fa fa-circle-o"></i>Salary
							Details</a></li>
					<%} %>
					<%if(serviceList!=null &&  serviceList.contains("Appointment Letter")){ %>
					<li><a href="HrmAppointmentLetter"><i
							class="fa fa-circle-o"></i>Appointment Letter</a></li>
					<%} %>
					<%if(serviceList!=null &&  serviceList.contains("Offer Letter Issue")){ %>
					<li><a href="HrmOfferLetter"><i class="fa fa-circle-o"></i>Offer
							Letter Issue</a></li>
					<%} %>
					<%if(serviceList!=null &&  serviceList.contains("Holiday Master")){ %>
					<li><a href="OffDaySetting"><i class="fa fa-circle-o"></i>Holiday
							Master</a></li>
					<%} %>
					<%if(serviceList!=null &&  serviceList.contains("Leave Adjustment")){ %>
					<li><a href="LeaveAdjustment"><i class="fa fa-circle-o"></i>Leave
							Adjustment</a></li>
					<%} %>
					<%if(serviceList!=null &&  serviceList.contains("Attendance")){ %>
					<li><a href="HrmAttendance"><i class="fa fa-circle-o"></i>Attendance</a></li>
					<%} %>
					<%if(serviceList!=null &&  serviceList.contains("Salary Generate")){ %>
					<li><a href="HrmSalaryGenerate"><i class="fa fa-circle-o"></i>Salary
							Generate</a></li>
					<%} %>
					<%if(serviceList!=null &&  serviceList.contains("Salary Payment")){ %>
					<li><a href="HrmSalaryPayment"><i class="fa fa-circle-o"></i>Salary
							Payment</a></li>
					<%} %>
					<%if(serviceList!=null &&  serviceList.contains("Salary Slip Print")){ %>
					<li><a href="HrmSalarySlipPrint"><i class="fa fa-circle-o"></i>Salary
							Slip Print</a></li>
					<%} %>
					<%if(serviceList!=null &&  serviceList.contains("Attendance Report")){ %>
					<li><a href="AttendanceReport"><i class="fa fa-circle-o"></i>Attendance
							Report</a></li>
					<%} %>
					<%if(serviceList!=null &&  serviceList.contains("Salary Payment Report")){ %>
					<li><a href="HrmSalaryPaymentReport"><i
							class="fa fa-circle-o"></i>Salary Payment Report</a></li>
					<%} %>
					<%if(serviceList!=null &&  serviceList.contains("Employee Search")){ %>
					<li><a href="HRMEmployeeSearch"><i class="fa fa-circle-o"></i>Employee
							Search</a></li>
					<%} %>
					<%if(serviceList!=null &&  serviceList.contains("Employee ID Card")){ %>
					<li><a href="HrmEmployeeIDCard"><i class="fa fa-circle-o"></i>Employee
							ID Card</a></li>
					<%} %>
				</ul>
			</li> 
		</ul>--%>
	</section>
	<!-- /.sidebar -->

</aside>