package com.society.application.model;

import java.time.LocalDate;

import javax.persistence.*;

import org.springframework.format.annotation.DateTimeFormat;

@Entity
public class Receipt {
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private long id;
	private Long voucherNo;
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private LocalDate entryDate;
	private String branch;
	private String branchCode;
	private Long scroll;
	private String glHeadNo;
	private String selectGlHead;
	private String accountNo;
	private String selectAccountHolder;
	private String amount;
	private String typeCashBank;
	private String selectCashBank;
	private String balance;
	private String debitBalance;
	private String unclearBalance;
	private String details;
	private String transactionType;
	private String searchAccountHolder;
	private String instrumentType;
	private Double instrumentAmount;
	private String amountInWords;
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private LocalDate instrumentDate;
	private String instrumentNo;
	private String inFavourOf;
	private String bankName;
	private String bankBranch;
	private String drawnOnBank;
	private String drawnOnBranch;
	private String flag;
	@Column(name = "bank_id")
	private String bankId;
	private String uniqueTransactionId;
	private String module;
	private String moduleType;
	@Column(name = "cheque_register")
	private String chequeRegister;

	private String denominationCash;
	private String cashierID;

	public String getDenominationCash() {
		return denominationCash;
	}

	public void setDenominationCash(String denominationCash) {
		this.denominationCash = denominationCash;
	}

	public String getCashierID() {
		return cashierID;
	}

	public void setCashierID(String cashierID) {
		this.cashierID = cashierID;
	}

	public String getChequeRegister() {
		return chequeRegister;
	}

	public void setChequeRegister(String chequeRegister) {
		this.chequeRegister = chequeRegister;
	}

	public String getModule() {
		return module;
	}

	public void setModule(String module) {
		this.module = module;
	}

	public String getModuleType() {
		return moduleType;
	}

	public void setModuleType(String moduleType) {
		this.moduleType = moduleType;
	}

	public String getUniqueTransactionId() {
		return uniqueTransactionId;
	}

	public void setUniqueTransactionId(String uniqueTransactionId) {
		this.uniqueTransactionId = uniqueTransactionId;
	}

	public String getBankId() {
		return bankId;
	}

	public void setBankId(String bankId) {
		this.bankId = bankId;
	}

	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}

	public Long getVoucherNo() {
		return voucherNo;
	}

	public void setVoucherNo(Long voucherNo) {
		this.voucherNo = voucherNo;
	}

	public LocalDate getEntryDate() {
		return entryDate;
	}

	public void setEntryDate(LocalDate entryDate) {
		this.entryDate = entryDate;
	}

	public String getBranch() {
		return branch;
	}

	public void setBranch(String branch) {
		this.branch = branch;
	}

	public String getBranchCode() {
		return branchCode;
	}

	public void setBranchCode(String branchCode) {
		this.branchCode = branchCode;
	}

	public Long getScroll() {
		return scroll;
	}

	public void setScroll(Long scroll) {
		this.scroll = scroll;
	}

	public String getGlHeadNo() {
		return glHeadNo;
	}

	public void setGlHeadNo(String glHeadNo) {
		this.glHeadNo = glHeadNo;
	}

	public String getSelectGlHead() {
		return selectGlHead;
	}

	public void setSelectGlHead(String selectGlHead) {
		this.selectGlHead = selectGlHead;
	}

	public String getAccountNo() {
		return accountNo;
	}

	public void setAccountNo(String accountNo) {
		this.accountNo = accountNo;
	}

	public String getSelectAccountHolder() {
		return selectAccountHolder;
	}

	public void setSelectAccountHolder(String selectAccountHolder) {
		this.selectAccountHolder = selectAccountHolder;
	}

	public String getAmount() {
		return amount;
	}

	public void setAmount(String amount) {
		this.amount = amount;
	}

	public String getTypeCashBank() {
		return typeCashBank;
	}

	public void setTypeCashBank(String typeCashBank) {
		this.typeCashBank = typeCashBank;
	}

	public String getSelectCashBank() {
		return selectCashBank;
	}

	public void setSelectCashBank(String selectCashBank) {
		this.selectCashBank = selectCashBank;
	}

	public String getBalance() {
		return balance;
	}

	public void setBalance(String balance) {
		this.balance = balance;
	}

	public String getDetails() {
		return details;
	}

	public void setDetails(String details) {
		this.details = details;
	}

	public String getDebitBalance() {
		return debitBalance;
	}

	public void setDebitBalance(String debitBalance) {
		this.debitBalance = debitBalance;
	}

	public String getUnclearBalance() {
		return unclearBalance;
	}

	public void setUnclearBalance(String unclearBalance) {
		this.unclearBalance = unclearBalance;
	}

	public String getTransactionType() {
		return transactionType;
	}

	public void setTransactionType(String transactionType) {
		this.transactionType = transactionType;
	}

	public String getSearchAccountHolder() {
		return searchAccountHolder;
	}

	public void setSearchAccountHolder(String searchAccountHolder) {
		this.searchAccountHolder = searchAccountHolder;
	}

	public String getFlag() {
		return flag;
	}

	public void setFlag(String flag) {
		this.flag = flag;
	}

	public String getInstrumentType() {
		return instrumentType;
	}

	public void setInstrumentType(String instrumentType) {
		this.instrumentType = instrumentType;
	}

	public Double getInstrumentAmount() {
		return instrumentAmount;
	}

	public void setInstrumentAmount(Double instrumentAmount) {
		this.instrumentAmount = instrumentAmount;
	}

	public LocalDate getInstrumentDate() {
		return instrumentDate;
	}

	public void setInstrumentDate(LocalDate instrumentDate) {
		this.instrumentDate = instrumentDate;
	}

	public String getAmountInWords() {
		return amountInWords;
	}

	public void setAmountInWords(String amountInWords) {
		this.amountInWords = amountInWords;
	}

	public String getInstrumentNo() {
		return instrumentNo;
	}

	public void setInstrumentNo(String instrumentNo) {
		this.instrumentNo = instrumentNo;
	}

	public String getInFavourOf() {
		return inFavourOf;
	}

	public void setInFavourOf(String inFavourOf) {
		this.inFavourOf = inFavourOf;
	}

	public String getBankName() {
		return bankName;
	}

	public void setBankName(String bankName) {
		this.bankName = bankName;
	}

	public String getBankBranch() {
		return bankBranch;
	}

	public void setBankBranch(String bankBranch) {
		this.bankBranch = bankBranch;
	}

	public String getDrawnOnBank() {
		return drawnOnBank;
	}

	public void setDrawnOnBank(String drawnOnBank) {
		this.drawnOnBank = drawnOnBank;
	}

	public String getDrawnOnBranch() {
		return drawnOnBranch;
	}

	public void setDrawnOnBranch(String drawnOnBranch) {
		this.drawnOnBranch = drawnOnBranch;
	}

}
