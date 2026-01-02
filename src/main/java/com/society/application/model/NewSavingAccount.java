package com.society.application.model;

import java.util.UUID;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class NewSavingAccount {
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private long id;
	private long accountNo;
	private long clientNo;
	private String clientName;
	private long membershipNo;
	private int age;
	private String clientBranchName;
	private String memberType;
	private String specialInstruction;
	@Column(name = "`schema`")
	private String schema;
	private String selectAgentBranch;
	private long agentBranchCode;
	private long agentCode;
	private String agentNameSearch;
	private long interestRate;
	private String openDate;
	private String specialInstructor;
	private long debitLimit;
	private double minimumBalance;
	private String selectStatus;
	private String ifscCode;
	private String bankName;
	private String bankSavingAccNo;
	private String flag;
	private double mainBalance;
	private Long glHeadNo;
	@Column(unique = true, nullable = false)
	private String uniqueId;

	public NewSavingAccount() {
		// Generate a unique ID during object creation
		this.uniqueId = UUID.randomUUID().toString();
	}

	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}

	public String getUniqueId() {
		return uniqueId;
	}

	public void setUniqueId(String uniqueId) {
		this.uniqueId = uniqueId;
	}

	public long getAccountNo() {
		return accountNo;
	}

	public void setAccountNo(long accountNo) {
		this.accountNo = accountNo;
	}

	public long getClientNo() {
		return clientNo;
	}

	public void setClientNo(long clientNo) {
		this.clientNo = clientNo;
	}

	public String getClientName() {
		return clientName;
	}

	public void setClientName(String clientName) {
		this.clientName = clientName;
	}

	public long getMembershipNo() {
		return membershipNo;
	}

	public void setMembershipNo(long membershipNo) {
		this.membershipNo = membershipNo;
	}

	public int getAge() {
		return age;
	}

	public void setAge(int age) {
		this.age = age;
	}

	public String getClientBranchName() {
		return clientBranchName;
	}

	public void setClientBranchName(String clientBranchName) {
		this.clientBranchName = clientBranchName;
	}

	public String getMemberType() {
		return memberType;
	}

	public void setMemberType(String memberType) {
		this.memberType = memberType;
	}

	public String getSpecialInstruction() {
		return specialInstruction;
	}

	public void setSpecialInstruction(String specialInstruction) {
		this.specialInstruction = specialInstruction;
	}

	public String getSchema() {
		return schema;
	}

	public void setSchema(String schema) {
		this.schema = schema;
	}

	public String getSelectAgentBranch() {
		return selectAgentBranch;
	}

	public void setSelectAgentBranch(String selectAgentBranch) {
		this.selectAgentBranch = selectAgentBranch;
	}

	public long getAgentBranchCode() {
		return agentBranchCode;
	}

	public void setAgentBranchCode(long agentBranchCode) {
		this.agentBranchCode = agentBranchCode;
	}

	public long getAgentCode() {
		return agentCode;
	}

	public void setAgentCode(long agentCode) {
		this.agentCode = agentCode;
	}

	public String getAgentNameSearch() {
		return agentNameSearch;
	}

	public void setAgentNameSearch(String agentNameSearch) {
		this.agentNameSearch = agentNameSearch;
	}

	public long getInterestRate() {
		return interestRate;
	}

	public void setInterestRate(long interestRate) {
		this.interestRate = interestRate;
	}

	public String getOpenDate() {
		return openDate;
	}

	public void setOpenDate(String openDate) {
		this.openDate = openDate;
	}

	public String getSpecialInstructor() {
		return specialInstructor;
	}

	public void setSpecialInstructor(String specialInstructor) {
		this.specialInstructor = specialInstructor;
	}

	public long getDebitLimit() {
		return debitLimit;
	}

	public void setDebitLimit(long debitLimit) {
		this.debitLimit = debitLimit;
	}

	public double getMinimumBalance() {
		return minimumBalance;
	}

	public void setMinimumBalance(double minimumBalance) {
		this.minimumBalance = minimumBalance;
	}

	public String getSelectStatus() {
		return selectStatus;
	}

	public void setSelectStatus(String selectStatus) {
		this.selectStatus = selectStatus;
	}

	public String getIfscCode() {
		return ifscCode;
	}

	public void setIfscCode(String ifscCode) {
		this.ifscCode = ifscCode;
	}

	public String getBankName() {
		return bankName;
	}

	public void setBankName(String bankName) {
		this.bankName = bankName;
	}

	public String getBankSavingAccNo() {
		return bankSavingAccNo;
	}

	public void setBankSavingAccNo(String bankSavingAccNo) {
		this.bankSavingAccNo = bankSavingAccNo;
	}

	public String getFlag() {
		return flag;
	}

	public void setFlag(String flag) {
		this.flag = flag;
	}

	public double getMainBalance() {
		return mainBalance;
	}

	public void setMainBalance(double mainBalance) {
		this.mainBalance = mainBalance;
	}

	public Long getGlHeadNo() {
		return glHeadNo;
	}

	public void setGlHeadNo(Long glHeadNo) {
		this.glHeadNo = glHeadNo;
	}

}
