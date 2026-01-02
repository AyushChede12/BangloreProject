package com.society.application.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class NewScheme {
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private long id;
	private String glHeadNoSchemeNmae;
	private String glHeadNoInterest;
	private String glHeadNoInterestPayable;
	private String schemeName;
	private String schemeType;
	private String interestRate;
	private String minimumAge;
	private String minimumBalance;
	private String status;
	private String minimumWithdrawlAmt;
	private String maximumWithdrawlAmt;
	private String minimumDepositAmt;
	private String maximumDepositAmt;
	private String weeklyDebitTransactionsNo;
	private String weeklyDebitTransactionsAmt;
	private String monthsStartDate;
	private String withoutInterestMonth;
	private String interestCalculatioType;
	private String interest;
	private String interestPayable;
	private String postingDate;
	private String flag;

	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}

	public String getGlHeadNoSchemeNmae() {
		return glHeadNoSchemeNmae;
	}

	public void setGlHeadNoSchemeNmae(String glHeadNoSchemeNmae) {
		this.glHeadNoSchemeNmae = glHeadNoSchemeNmae;
	}

	public String getGlHeadNoInterest() {
		return glHeadNoInterest;
	}

	public void setGlHeadNoInterest(String glHeadNoInterest) {
		this.glHeadNoInterest = glHeadNoInterest;
	}

	public String getGlHeadNoInterestPayable() {
		return glHeadNoInterestPayable;
	}

	public void setGlHeadNoInterestPayable(String glHeadNoInterestPayable) {
		this.glHeadNoInterestPayable = glHeadNoInterestPayable;
	}

	public String getSchemeName() {
		return schemeName;
	}

	public void setSchemeName(String schemeName) {
		this.schemeName = schemeName;
	}

	public String getSchemeType() {
		return schemeType;
	}

	public void setSchemeType(String schemeType) {
		this.schemeType = schemeType;
	}

	public String getInterestRate() {
		return interestRate;
	}

	public void setInterestRate(String interestRate) {
		this.interestRate = interestRate;
	}

	public String getMinimumAge() {
		return minimumAge;
	}

	public void setMinimumAge(String minimumAge) {
		this.minimumAge = minimumAge;
	}

	public String getMinimumBalance() {
		return minimumBalance;
	}

	public void setMinimumBalance(String minimumBalance) {
		this.minimumBalance = minimumBalance;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public String getMinimumWithdrawlAmt() {
		return minimumWithdrawlAmt;
	}

	public void setMinimumWithdrawlAmt(String minimumWithdrawlAmt) {
		this.minimumWithdrawlAmt = minimumWithdrawlAmt;
	}

	public String getMaximumWithdrawlAmt() {
		return maximumWithdrawlAmt;
	}

	public void setMaximumWithdrawlAmt(String maximumWithdrawlAmt) {
		this.maximumWithdrawlAmt = maximumWithdrawlAmt;
	}

	public String getMinimumDepositAmt() {
		return minimumDepositAmt;
	}

	public void setMinimumDepositAmt(String minimumDepositAmt) {
		this.minimumDepositAmt = minimumDepositAmt;
	}

	public String getMaximumDepositAmt() {
		return maximumDepositAmt;
	}

	public void setMaximumDepositAmt(String maximumDepositAmt) {
		this.maximumDepositAmt = maximumDepositAmt;
	}

	public String getWeeklyDebitTransactionsNo() {
		return weeklyDebitTransactionsNo;
	}

	public void setWeeklyDebitTransactionsNo(String weeklyDebitTransactionsNo) {
		this.weeklyDebitTransactionsNo = weeklyDebitTransactionsNo;
	}

	public String getWeeklyDebitTransactionsAmt() {
		return weeklyDebitTransactionsAmt;
	}

	public void setWeeklyDebitTransactionsAmt(String weeklyDebitTransactionsAmt) {
		this.weeklyDebitTransactionsAmt = weeklyDebitTransactionsAmt;
	}

	public String getMonthsStartDate() {
		return monthsStartDate;
	}

	public void setMonthsStartDate(String monthsStartDate) {
		this.monthsStartDate = monthsStartDate;
	}

	public String getWithoutInterestMonth() {
		return withoutInterestMonth;
	}

	public void setWithoutInterestMonth(String withoutInterestMonth) {
		this.withoutInterestMonth = withoutInterestMonth;
	}

	public String getInterestCalculatioType() {
		return interestCalculatioType;
	}

	public void setInterestCalculatioType(String interestCalculatioType) {
		this.interestCalculatioType = interestCalculatioType;
	}

	public String getInterest() {
		return interest;
	}

	public void setInterest(String interest) {
		this.interest = interest;
	}

	public String getInterestPayable() {
		return interestPayable;
	}

	public void setInterestPayable(String interestPayable) {
		this.interestPayable = interestPayable;
	}

	public String getPostingDate() {
		return postingDate;
	}

	public void setPostingDate(String postingDate) {
		this.postingDate = postingDate;
	}

	public String getFlag() {
		return flag;
	}

	public void setFlag(String flag) {
		this.flag = flag;
	}

}
