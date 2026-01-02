package com.society.application.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class NewGLHeadMaster {
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private long id;
	private String bankID;
	private String acountGroup;
	private Long glHeadNo;
	private String glHeadName;
	private String shortName;
	private String unicodeName;
	private String status;
	private String startDate;
	private String primaryGroup;
	private String balanceType;
	private String accountType;
	private String organization;
	private String branchCode;
	private String branch;
	private String accountTypecheckBox;
	private String module;
	private String flag;
	private String accountGroupId;
	private double balance;
	private String accountValue;
	private String selectAccountHolder;
	private String uniqueId;

	public String getBankID() {
		return bankID;
	}

	public void setBankID(String bankID) {
		this.bankID = bankID;
	}

	public String getAccountGroupId() {
		return accountGroupId;
	}

	public void setAccountGroupId(String accountGroupId) {
		this.accountGroupId = accountGroupId;
	}

	public String getModule() {
		return module;
	}

	public void setModule(String module) {
		this.module = module;
	}

	public String getFlag() {
		return flag;
	}

	public void setFlag(String flag) {
		this.flag = flag;
	}

	public String getAccountTypecheckBox() {
		return accountTypecheckBox;
	}

	public void setAccountTypecheckBox(String accountTypecheckBox) {
		this.accountTypecheckBox = accountTypecheckBox;
	}

	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}

	public String getAcountGroup() {
		return acountGroup;
	}

	public void setAcountGroup(String acountGroup) {
		this.acountGroup = acountGroup;
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

	public String getShortName() {
		return shortName;
	}

	public void setShortName(String shortName) {
		this.shortName = shortName;
	}

	public String getUnicodeName() {
		return unicodeName;
	}

	public void setUnicodeName(String unicodeName) {
		this.unicodeName = unicodeName;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public String getStartDate() {
		return startDate;
	}

	public void setStartDate(String startDate) {
		this.startDate = startDate;
	}

	public String getPrimaryGroup() {
		return primaryGroup;
	}

	public void setPrimaryGroup(String primaryGroup) {
		this.primaryGroup = primaryGroup;
	}

	public String getBalanceType() {
		return balanceType;
	}

	public void setBalanceType(String balanceType) {
		this.balanceType = balanceType;
	}

	public String getAccountType() {
		return accountType;
	}

	public void setAccountType(String accountType) {
		this.accountType = accountType;
	}

	public String getOrganization() {
		return organization;
	}

	public void setOrganization(String organization) {
		this.organization = organization;
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

	public double getBalance() {
		return balance;
	}

	public void setBalance(double balance) {
		this.balance = balance;
	}

	public String getAccountValue() {
		return accountValue;
	}

	public void setAccountValue(String accountValue) {
		this.accountValue = accountValue;
	}

	public String getSelectAccountHolder() {
		return selectAccountHolder;
	}

	public void setSelectAccountHolder(String selectAccountHolder) {
		this.selectAccountHolder = selectAccountHolder;
	}

	public String getUniqueId() {
		return uniqueId;
	}

	public void setUniqueId(String uniqueId) {
		this.uniqueId = uniqueId;
	}

}
