package com.society.application.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class InvestmentNewAccount {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private long id;
	private String branchCode;
	private String bankName;
	private String accountNo;
	private String account;
	private String bankAccountNo;
	private String fund;
	private String depositType;
	private String interestType;
	private String postingType;
	private String interestCalculation;
	private String startDate;
	private String tenureMonths;
	private String tenureDays;
	private String interestStartDate;
	private String amount;
	private String interestRate;
	private String receiptNo;
	private String maturityDate;
	private String maturityAmt;
	private String status;
	private String description;

	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}

	public String getBranchCode() {
		return branchCode;
	}

	public void setBranchCode(String branchCode) {
		this.branchCode = branchCode;
	}

	public String getBankName() {
		return bankName;
	}

	public void setBankName(String bankName) {
		this.bankName = bankName;
	}

	public String getAccountNo() {
		return accountNo;
	}

	public void setAccountNo(String accountNo) {
		this.accountNo = accountNo;
	}

	public String getAccount() {
		return account;
	}

	public void setAccount(String account) {
		this.account = account;
	}

	public String getBankAccountNo() {
		return bankAccountNo;
	}

	public void setBankAccountNo(String bankAccountNo) {
		this.bankAccountNo = bankAccountNo;
	}

	public String getFund() {
		return fund;
	}

	public void setFund(String fund) {
		this.fund = fund;
	}

	public String getDepositType() {
		return depositType;
	}

	public void setDepositType(String depositType) {
		this.depositType = depositType;
	}

	public String getInterestType() {
		return interestType;
	}

	public void setInterestType(String interestType) {
		this.interestType = interestType;
	}

	public String getPostingType() {
		return postingType;
	}

	public void setPostingType(String postingType) {
		this.postingType = postingType;
	}

	public String getInterestCalculation() {
		return interestCalculation;
	}

	public void setInterestCalculation(String interestCalculation) {
		this.interestCalculation = interestCalculation;
	}

	public String getStartDate() {
		return startDate;
	}

	public void setStartDate(String startDate) {
		this.startDate = startDate;
	}

	public String getTenureMonths() {
		return tenureMonths;
	}

	public void setTenureMonths(String tenureMonths) {
		this.tenureMonths = tenureMonths;
	}

	public String getTenureDays() {
		return tenureDays;
	}

	public void setTenureDays(String tenureDays) {
		this.tenureDays = tenureDays;
	}

	public String getInterestStartDate() {
		return interestStartDate;
	}

	public void setInterestStartDate(String interestStartDate) {
		this.interestStartDate = interestStartDate;
	}

	public String getAmount() {
		return amount;
	}

	public void setAmount(String amount) {
		this.amount = amount;
	}

	public String getInterestRate() {
		return interestRate;
	}

	public void setInterestRate(String interestRate) {
		this.interestRate = interestRate;
	}

	public String getReceiptNo() {
		return receiptNo;
	}

	public void setReceiptNo(String receiptNo) {
		this.receiptNo = receiptNo;
	}

	public String getMaturityDate() {
		return maturityDate;
	}

	public void setMaturityDate(String maturityDate) {
		this.maturityDate = maturityDate;
	}

	public String getMaturityAmt() {
		return maturityAmt;
	}

	public void setMaturityAmt(String maturityAmt) {
		this.maturityAmt = maturityAmt;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

}
