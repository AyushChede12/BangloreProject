package com.society.application.model;

import javax.persistence.*;
import java.time.LocalDate;

@Entity
public class Cashier {
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private Long id;

	private String branchCode;
	private String selectBranch;
	private String glHeadNo;
	private LocalDate entryDate;
	private Long scroll;
	private Double balance;
	private String payment;
	private String pendingTransaction;
	private String selectGlHead;
	private String accountNo;
	private String selectAccountHolder;
	private String panAadhar;
	private String amount;
	private String penaultyAmount;
	private String specialInstruction;
	private String cashierNarration;
	private String voucherNo;
	private String denominationCash;
	private String glnoTransactionID;

	private String transactionID;
	private String module;
	private String Flag;

	public String getGlnoTransactionID() {
		return glnoTransactionID;
	}

	public void setGlnoTransactionID(String glnoTransactionID) {
		this.glnoTransactionID = glnoTransactionID;
	}

	public String getTransactionID() {
		return transactionID;
	}

	public void setTransactionID(String transactionID) {
		this.transactionID = transactionID;
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
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

	public String getGlHeadNo() {
		return glHeadNo;
	}

	public void setGlHeadNo(String glHeadNo) {
		this.glHeadNo = glHeadNo;
	}

	public LocalDate getEntryDate() {
		return entryDate;
	}

	public void setEntryDate(LocalDate entryDate) {
		this.entryDate = entryDate;
	}

	public Long getScroll() {
		return scroll;
	}

	public void setScroll(Long scroll) {
		this.scroll = scroll;
	}

	public Double getBalance() {
		return balance;
	}

	public void setBalance(Double balance) {
		this.balance = balance;
	}

	public String getPayment() {
		return payment;
	}

	public void setPayment(String payment) {
		this.payment = payment;
	}

	public String getPendingTransaction() {
		return pendingTransaction;
	}

	public void setPendingTransaction(String pendingTransaction) {
		this.pendingTransaction = pendingTransaction;
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

	public String getPanAadhar() {
		return panAadhar;
	}

	public void setPanAadhar(String panAadhar) {
		this.panAadhar = panAadhar;
	}

	public String getAmount() {
		return amount;
	}

	public void setAmount(String amount) {
		this.amount = amount;
	}

	public String getPenaultyAmount() {
		return penaultyAmount;
	}

	public void setPenaultyAmount(String penaultyAmount) {
		this.penaultyAmount = penaultyAmount;
	}

	public String getSpecialInstruction() {
		return specialInstruction;
	}

	public void setSpecialInstruction(String specialInstruction) {
		this.specialInstruction = specialInstruction;
	}

	public String getCashierNarration() {
		return cashierNarration;
	}

	public void setCashierNarration(String cashierNarration) {
		this.cashierNarration = cashierNarration;
	}

	public String getVoucherNo() {
		return voucherNo;
	}

	public void setVoucherNo(String voucherNo) {
		this.voucherNo = voucherNo;
	}

	public String getDenominationCash() {
		return denominationCash;
	}

	public void setDenominationCash(String denominationCash) {
		this.denominationCash = denominationCash;
	}

	public String getModule() {
		return module;
	}

	public void setModule(String module) {
		this.module = module;
	}

	public String getFlag() {
		return Flag;
	}

	public void setFlag(String flag) {
		Flag = flag;
	}
}
