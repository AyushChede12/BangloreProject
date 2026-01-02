package com.society.application.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class PaymentAcc {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer id;

	private Integer voucherNo;
	private String date;
	private String cashierOrBank;
	private String selectBankOrCash;
	private String glHeadNoCash;
	private Double balanceCash;
	private String narration;

	private String branchCode;
	private String selectBranch;
	private String glNo;
	private String selectHeadGl;
	private String accountNo;
	private String searchAccountHolder;
	private String selectAccountHolder;
	private Double balance;
	private Double unclearBalance;
	private Double transactionAmount;
	private String transactionType;
	private String selectInstrumentType;

	private Integer flag;
	private String transactionId;
	private String cashUniqueId;
	private String glNoUniqueId;

	public String getNarration() {
		return narration;
	}

	public void setNarration(String narration) {
		this.narration = narration;
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public Integer getVoucherNo() {
		return voucherNo;
	}

	public void setVoucherNo(Integer voucherNo) {
		this.voucherNo = voucherNo;
	}

	public String getDate() {
		return date;
	}

	public void setDate(String date) {
		this.date = date;
	}

	public String getCashierOrBank() {
		return cashierOrBank;
	}

	public void setCashierOrBank(String cashierOrBank) {
		this.cashierOrBank = cashierOrBank;
	}

	public String getSelectBankOrCash() {
		return selectBankOrCash;
	}

	public void setSelectBankOrCash(String selectBankOrCash) {
		this.selectBankOrCash = selectBankOrCash;
	}

	public String getGlHeadNoCash() {
		return glHeadNoCash;
	}

	public void setGlHeadNoCash(String glHeadNoCash) {
		this.glHeadNoCash = glHeadNoCash;
	}

	public Double getBalanceCash() {
		return balanceCash;
	}

	public void setBalanceCash(Double balanceCash) {
		this.balanceCash = balanceCash;
	}

	public String getBranchCode() {
		return branchCode;
	}

	public void setBranchCode(String branchCode) {
		this.branchCode = branchCode;
	}

	public String getSelectBranch() {
		return selectBranch;
	}

	public void setSelectBranch(String selectBranch) {
		this.selectBranch = selectBranch;
	}

	public String getGlNo() {
		return glNo;
	}

	public void setGlNo(String glNo) {
		this.glNo = glNo;
	}

	public String getSelectHeadGl() {
		return selectHeadGl;
	}

	public void setSelectHeadGl(String selectHeadGl) {
		this.selectHeadGl = selectHeadGl;
	}

	public String getAccountNo() {
		return accountNo;
	}

	public void setAccountNo(String accountNo) {
		this.accountNo = accountNo;
	}

	public String getSearchAccountHolder() {
		return searchAccountHolder;
	}

	public void setSearchAccountHolder(String searchAccountHolder) {
		this.searchAccountHolder = searchAccountHolder;
	}

	public String getSelectAccountHolder() {
		return selectAccountHolder;
	}

	public void setSelectAccountHolder(String selectAccountHolder) {
		this.selectAccountHolder = selectAccountHolder;
	}

	public Double getBalance() {
		return balance;
	}

	public void setBalance(Double balance) {
		this.balance = balance;
	}

	public Double getUnclearBalance() {
		return unclearBalance;
	}

	public void setUnclearBalance(Double unclearBalance) {
		this.unclearBalance = unclearBalance;
	}

	public Double getTransactionAmount() {
		return transactionAmount;
	}

	public void setTransactionAmount(Double transactionAmount) {
		this.transactionAmount = transactionAmount;
	}

	public String getTransactionType() {
		return transactionType;
	}

	public void setTransactionType(String transactionType) {
		this.transactionType = transactionType;
	}

	public String getSelectInstrumentType() {
		return selectInstrumentType;
	}

	public void setSelectInstrumentType(String selectInstrumentType) {
		this.selectInstrumentType = selectInstrumentType;
	}

	public Integer getFlag() {
		return flag;
	}

	public void setFlag(Integer flag) {
		this.flag = flag;
	}

	public String getTransactionId() {
		return transactionId;
	}

	public void setTransactionId(String transactionId) {
		this.transactionId = transactionId;
	}

	public String getCashUniqueId() {
		return cashUniqueId;
	}

	public void setCashUniqueId(String cashUniqueId) {
		this.cashUniqueId = cashUniqueId;
	}

	public String getGlNoUniqueId() {
		return glNoUniqueId;
	}

	public void setGlNoUniqueId(String glNoUniqueId) {
		this.glNoUniqueId = glNoUniqueId;
	}
}
