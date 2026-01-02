package com.society.application.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class BranchMaster {

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int id;

	private String bankID;

	private String name;
	private String branchCode;
	private String openingDate;
	private String address;
	private String pin;
	private String state;
	private String contactPerson;
	private String contactNo;
	private String fdate;
	private String tdate;
	private String amount;
	private String createdBy;
	private String createdDt;

	private Long glHeadNo;
	private String bankAccoununtNo;
	private String branch;
	private String accountType;
	private String status;
	private String ifscCode;
	private String module;
	private String selectTransactionCheckbox;
	private String flag;
	private double balance;

	public String getBankID() {
		return bankID;
	}

	public void setBankID(String bankID) {
		this.bankID = bankID;
	}

	public String getOpening_date() {
		return openingDate;
	}

	public void setOpening_date(String opening_date) {
		this.openingDate = opening_date;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getBranchCode() {
		return branchCode;
	}

	public void setBranchCode(String branchCode) {
		this.branchCode = branchCode;
	}

	public String getOpeningDate() {
		return openingDate;
	}

	public void setOpeningDate(String openingDate) {
		this.openingDate = openingDate;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getPin() {
		return pin;
	}

	public void setPin(String pin) {
		this.pin = pin;
	}

	public String getState() {
		return state;
	}

	public void setState(String state) {
		this.state = state;
	}

	public String getContactPerson() {
		return contactPerson;
	}

	public void setContactPerson(String contactPerson) {
		this.contactPerson = contactPerson;
	}

	public String getContactNo() {
		return contactNo;
	}

	public void setContactNo(String contactNo) {
		this.contactNo = contactNo;
	}

	public String getFdate() {
		return fdate;
	}

	public void setFdate(String fdate) {
		this.fdate = fdate;
	}

	public String getTdate() {
		return tdate;
	}

	public void setTdate(String tdate) {
		this.tdate = tdate;
	}

	public String getAmount() {
		return amount;
	}

	public void setAmount(String amount) {
		this.amount = amount;
	}

	public String getCreatedBy() {
		return createdBy;
	}

	public void setCreatedBy(String createdBy) {
		this.createdBy = createdBy;
	}

	public String getCreatedDt() {
		return createdDt;
	}

	public void setCreatedDt(String createdDt) {
		this.createdDt = createdDt;
	}

	public Long getGlHeadNo() {
		return glHeadNo;
	}

	public void setGlHeadNo(Long glHeadNo) {
		this.glHeadNo = glHeadNo;
	}

	public String getBankAccoununtNo() {
		return bankAccoununtNo;
	}

	public void setBankAccoununtNo(String bankAccoununtNo) {
		this.bankAccoununtNo = bankAccoununtNo;
	}

	public String getBranch() {
		return branch;
	}

	public void setBranch(String branch) {
		this.branch = branch;
	}

	public String getAccountType() {
		return accountType;
	}

	public void setAccountType(String accountType) {
		this.accountType = accountType;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public String getIfscCode() {
		return ifscCode;
	}

	public void setIfscCode(String ifscCode) {
		this.ifscCode = ifscCode;
	}

	public String getModule() {
		return module;
	}

	public void setModule(String module) {
		this.module = module;
	}

	public String getSelectTransactionCheckbox() {
		return selectTransactionCheckbox;
	}

	public void setSelectTransactionCheckbox(String selectTransactionCheckbox) {
		this.selectTransactionCheckbox = selectTransactionCheckbox;
	}

	public String getFlag() {
		return flag;
	}

	public void setFlag(String flag) {
		this.flag = flag;
	}

	public double getBalance() {
		return balance;
	}

	public void setBalance(double balance) {
		this.balance = balance;
	}

}
