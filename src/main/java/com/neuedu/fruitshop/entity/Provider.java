package com.neuedu.fruitshop.entity;

/**
 * 供应商实体类
 * 
 * @author wsl
 *
 */
public class Provider {
	// 供应商Id
	private Integer providerId;
	// 供应商名称
	private String providerName;
	// 供应商电话
	private String providerPhone;
	// 供应商地址
	private String providerAddress;
	// 供应商图片
	private String providerImage;
	// 供应商状态
	private Integer providerStates;

	// 关系映射- 把表关系变成对象关系
	// 管理员表--adminId
	private Admin admin;

	public Provider() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Provider(Integer providerId) {
		super();
		this.providerId = providerId;
	}
	

	public Provider(String providerName) {
		super();
		this.providerName = providerName;
	}

	public Provider(Integer providerId, String providerName, String providerPhone, String providerAddress,
			String providerImage, Integer providerStates, Admin admin) {
		super();
		this.providerId = providerId;
		this.providerName = providerName;
		this.providerPhone = providerPhone;
		this.providerAddress = providerAddress;
		this.providerImage = providerImage;
		this.providerStates = providerStates;
		this.admin = admin;
	}

	public Integer getProviderId() {
		return providerId;
	}

	public void setProviderId(Integer providerId) {
		this.providerId = providerId;
	}

	public String getProviderName() {
		return providerName;
	}

	public void setProviderName(String providerName) {
		this.providerName = providerName;
	}

	public String getProviderPhone() {
		return providerPhone;
	}

	public void setProviderPhone(String providerPhone) {
		this.providerPhone = providerPhone;
	}

	public String getProviderAddress() {
		return providerAddress;
	}

	public void setProviderAddress(String providerAddress) {
		this.providerAddress = providerAddress;
	}

	public String getProviderImage() {
		return providerImage;
	}

	public void setProviderImage(String providerImage) {
		this.providerImage = providerImage;
	}

	public Integer getProviderStates() {
		return providerStates;
	}

	public void setProviderStates(Integer providerStates) {
		this.providerStates = providerStates;
	}

	public Admin getAdmin() {
		return admin;
	}

	public void setAdmin(Admin admin) {
		this.admin = admin;
	}

	@Override
	public String toString() {
		return "Provider [providerId=" + providerId + ", providerName=" + providerName + ", providerPhone="
				+ providerPhone + ", providerAddress=" + providerAddress + ", providerImage=" + providerImage
				+ ", providerStates=" + providerStates + ", admin=" + admin + "]";
	}

}
