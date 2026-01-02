package com.society.application.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class NewGLGroupMaster {
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private long id;
	private String flag;
	private String module;
	private String primaryGroup;
	private String primarySubGroup;
	private String groupType;
	private String accountGroup;
	private String accountGroupUnicode;
	private Integer gLGroupNo;

	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}

	public String getFlag() {
		return flag;
	}

	public void setFlag(String flag) {
		this.flag = flag;
	}

	public String getModule() {
		return module;
	}

	public void setModule(String module) {
		this.module = module;
	}

	public String getPrimaryGroup() {
		return primaryGroup;
	}

	public void setPrimaryGroup(String primaryGroup) {
		this.primaryGroup = primaryGroup;
	}

	public String getPrimarySubGroup() {
		return primarySubGroup;
	}

	public void setPrimarySubGroup(String primarySubGroup) {
		this.primarySubGroup = primarySubGroup;
	}

	public String getGroupType() {
		return groupType;
	}

	public void setGroupType(String groupType) {
		this.groupType = groupType;
	}

	public String getAccountGroup() {
		return accountGroup;
	}

	public void setAccountGroup(String accountGroup) {
		this.accountGroup = accountGroup;
	}

	public String getAccountGroupUnicode() {
		return accountGroupUnicode;
	}

	public void setAccountGroupUnicode(String accountGroupUnicode) {
		this.accountGroupUnicode = accountGroupUnicode;
	}

	public Integer getgLGroupNo() {
		return gLGroupNo;
	}

	public void setgLGroupNo(Integer gLGroupNo) {
		this.gLGroupNo = gLGroupNo;
	}

}
