package com.society.application.model;

import javax.annotation.Generated;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Transient;

@Entity
public class ShareTransferMaster {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private long id;
	private String memberNoFrom;
	private String memberNoTo;
	private String memberNameFrom;
	private String memberNameTo;
	private String certificateNoFrom;
	private String certificateNoTo;
	private String noOfShare;
	private String shareAmount;
	private String transferDate;
	private String transferAmount;
	private String shareTransfer;
	private String reamingNoOfShare;
	private String previousNoOfShare;
	private String totalShare;
	private String createdBy;
	private String createdDt;
	private String flag;
	private String totalAmount;
	private String reamingShareAmount;

	@Transient
	private String memberNo;

	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}

	public String getMemberNoFrom() {
		return memberNoFrom;
	}

	public void setMemberNoFrom(String memberNoFrom) {
		this.memberNoFrom = memberNoFrom;
	}

	public String getMemberNoTo() {
		return memberNoTo;
	}

	public void setMemberNoTo(String memberNoTo) {
		this.memberNoTo = memberNoTo;
	}

	public String getMemberNameFrom() {
		return memberNameFrom;
	}

	public void setMemberNameFrom(String memberNameFrom) {
		this.memberNameFrom = memberNameFrom;
	}

	public String getMemberNameTo() {
		return memberNameTo;
	}

	public void setMemberNameTo(String memberNameTo) {
		this.memberNameTo = memberNameTo;
	}

	public String getCertificateNoFrom() {
		return certificateNoFrom;
	}

	public void setCertificateNoFrom(String certificateNoFrom) {
		this.certificateNoFrom = certificateNoFrom;
	}

	public String getCertificateNoTo() {
		return certificateNoTo;
	}

	public void setCertificateNoTo(String certificateNoTo) {
		this.certificateNoTo = certificateNoTo;
	}

	public String getTransferDate() {
		return transferDate;
	}

	public void setTransferDate(String transferDate) {
		this.transferDate = transferDate;
	}

	public String getNoOfShare() {
		return noOfShare;
	}

	public void setNoOfShare(String noOfShare) {
		this.noOfShare = noOfShare;
	}

	public String getTransferAmount() {
		return transferAmount;
	}

	public void setTransferAmount(String transferAmount) {
		this.transferAmount = transferAmount;
	}

	public String getShareAmount() {
		return shareAmount;
	}

	public void setShareAmount(String shareAmount) {
		this.shareAmount = shareAmount;
	}

	public String getShareTransfer() {
		return shareTransfer;
	}

	public void setShareTransfer(String shareTransfer) {
		this.shareTransfer = shareTransfer;
	}

	public String getMemberNo() {
		return memberNo;
	}

	public void setMemberNo(String memberNo) {
		this.memberNo = memberNo;
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

	public String getFlag() {
		return flag;
	}

	public void setFlag(String flag) {
		this.flag = flag;
	}

	public String getReamingNoOfShare() {
		return reamingNoOfShare;
	}

	public void setReamingNoOfShare(String reamingNoOfShare) {
		this.reamingNoOfShare = reamingNoOfShare;
	}

	public String getTotalShare() {
		return totalShare;
	}

	public void setTotalShare(String totalShare) {
		this.totalShare = totalShare;
	}

	public String getPreviousNoOfShare() {
		return previousNoOfShare;
	}

	public void setPreviousNoOfShare(String previousNoOfShare) {
		this.previousNoOfShare = previousNoOfShare;
	}

	public String getTotalAmount() {
		return totalAmount;
	}

	public void setTotalAmount(String totalAmount) {
		this.totalAmount = totalAmount;
	}

	public String getReamingShareAmount() {
		return reamingShareAmount;
	}

	public void setReamingShareAmount(String reamingShareAmount) {
		this.reamingShareAmount = reamingShareAmount;
	}

}
