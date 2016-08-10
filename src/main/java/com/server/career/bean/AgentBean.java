package com.server.career.bean;

public class AgentBean {
	private Integer agencyId;
	private String agencyName;
	private String agencyDescription;
	private String agencyLogo;
	private String agencyPhone;
	private Integer isCompany;
	private Integer isRepresentative;

	public String getAgencyDescription() {
		return agencyDescription;
	}

	public void setAgencyDescription(String agencyDescription) {
		this.agencyDescription = agencyDescription;
	}

	public Integer getIsCompany() {
		return isCompany;
	}

	public void setIsCompany(Integer isCompany) {
		this.isCompany = isCompany;
	}

	public Integer getIsRepresentative() {
		return isRepresentative;
	}

	public void setIsRepresentative(Integer isRepresentative) {
		this.isRepresentative = isRepresentative;
	}

	public Integer getAgencyId() {
		return agencyId;
	}

	public void setAgencyId(Integer agencyId) {
		this.agencyId = agencyId;
	}

	public String getAgencyName() {
		return agencyName;
	}

	public void setAgencyName(String agencyName) {
		this.agencyName = agencyName;
	}

	public String getAgencyLogo() {
		return agencyLogo;
	}

	public void setAgencyLogo(String agencyLogo) {
		this.agencyLogo = agencyLogo;
	}

	public String getAgencyPhone() {
		return agencyPhone;
	}

	public void setAgencyPhone(String agencyPhone) {
		this.agencyPhone = agencyPhone;
	}

}
