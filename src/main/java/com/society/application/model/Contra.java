package com.society.application.model;

import java.time.LocalDate;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Contra {
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private long id;
	private LocalDate entryDate;
	private Long voucherNo;
	// private String selectBranch;
	private String scroll;
	private String typeCashBank;
	private String selectBank;
	private String balanceDebit;
	private String narration;
	private String branchCode;
	private String branch;
	private Long glHeadNo;
	private String glHeadName;
	private String accountNo;
	private String selectAccountHolder;
	private double balance;
	private double transactionAmount;
	private String transactionType;
	private String flag;
	private String uniqueId;
	private String transactionId;

	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}

	public LocalDate getEntryDate() {
		return entryDate;
	}

	public void setEntryDate(LocalDate entryDate) {
		this.entryDate = entryDate;
	}

	public Long getVoucherNo() {
		return voucherNo;
	}

	public void setVoucherNo(Long voucherNo) {
		this.voucherNo = voucherNo;
	}

	public String getTypeCashBank() {
		return typeCashBank;
	}

	public void setTypeCashBank(String typeCashBank) {
		this.typeCashBank = typeCashBank;
	}

	public String getSelectBank() {
		return selectBank;
	}

	public void setSelectBank(String selectBank) {
		this.selectBank = selectBank;
	}

	public String getBalanceDebit() {
		return balanceDebit;
	}

	public void setBalanceDebit(String balanceDebit) {
		this.balanceDebit = balanceDebit;
	}

	public String getNarration() {
		return narration;
	}

	public void setNarration(String narration) {
		this.narration = narration;
	}

	public String getBranchCode() {
		return branchCode;
	}

	public void setBranchCode(String branchCode) {
		this.branchCode = branchCode;
	}

	public String getBranch() {
		return branch;
	}

	public void setBranch(String branch) {
		this.branch = branch;
	}

	public Long getGlHeadNo() {
		return glHeadNo;
	}

	public void setGlHeadNo(Long glHeadNo) {
		this.glHeadNo = glHeadNo;
	}

	public String getGlHeadName() {
		return glHeadName;
	}

	public void setGlHeadName(String glHeadName) {
		this.glHeadName = glHeadName;
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

	public double getBalance() {
		return balance;
	}

	public void setBalance(double balance) {
		this.balance = balance;
	}

	public double getTransactionAmount() {
		return transactionAmount;
	}

	public void setTransactionAmount(double transactionAmount) {
		this.transactionAmount = transactionAmount;
	}

	public String getTransactionType() {
		return transactionType;
	}

	public void setTransactionType(String transactionType) {
		this.transactionType = transactionType;
	}

	public String getFlag() {
		return flag;
	}

	public void setFlag(String flag) {
		this.flag = flag;
	}

	public String getScroll() {
		return scroll;
	}

	public void setScroll(String scroll) {
		this.scroll = scroll;
	}

	public String getUniqueId() {
		return uniqueId;
	}

	public void setUniqueId(String uniqueId) {
		this.uniqueId = uniqueId;
	}

	public String getTransactionId() {
		return transactionId;
	}

	public void setTransactionId(String transactionId) {
		this.transactionId = transactionId;
	}

}
