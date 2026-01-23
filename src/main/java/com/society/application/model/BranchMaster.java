package com.society.application.model;

import java.math.BigDecimal;
import java.time.LocalDateTime;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class BranchMaster {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;

	private String bankID;
	private String bankName;
	private String branchCode;
	private String branchOpeningDate;
	private String address;
	private String pin;
	private String state;
	private String contactPerson;
	private String contactNo;
	private String bankAccoununtNo;
	private String branchName;
	private String branchAccountType;
	private String status;
	private String ifscCode;
	private BigDecimal balance = BigDecimal.ZERO;

	public String getBankID() {
		return bankID;
	}

	public void setBankID(String bankID) {
		this.bankID = bankID;
	}

	public String getOpening_date() {
		return branchOpeningDate;
	}

	public void setOpening_date(String opening_date) {
		this.branchOpeningDate = opening_date;
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getName() {
		return bankName;
	}

	public void setName(String name) {
		this.bankName = name;
	}

	public String getBranchCode() {
		return branchCode;
	}

	public void setBranchCode(String branchCode) {
		this.branchCode = branchCode;
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


	public String getBankAccoununtNo() {
		return bankAccoununtNo;
	}

	public void setBankAccoununtNo(String bankAccoununtNo) {
		this.bankAccoununtNo = bankAccoununtNo;
	}

	public String getBranch() {
		return branchName;
	}

	public void setBranch(String branch) {
		this.branchName = branch;
	}

	public String getAccountType() {
		return branchAccountType;
	}

	public void setAccountType(String accountType) {
		this.branchAccountType = accountType;
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


	public BigDecimal getBalance() {
		return balance;
	}

	public void setBalance(BigDecimal balance) {
		this.balance = balance;
	}


}
