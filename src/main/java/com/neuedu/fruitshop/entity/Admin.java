package com.neuedu.fruitshop.entity;

/**
 * 管理员实体类
 * 
 * @author wsl
 *
 */
public class Admin {
	// 管理员Id
	private Integer adminId;
	// 管理员姓名
	private String adminName;
	// 管理员密码
	private String adminPwd;
	// 管理员性别
	private String adminSex;
	// 管理员头像
	private String adminImage;
	// 管理员电话
	private String adminPhone;
	// 管理员邮箱
	private String adminEmail;
	// 管理员地址
	private String adminAddress;
	// 管理员角色
	private Integer adminRole;

	public Admin() {
		super();
	}

	public Admin(Integer adminId) {
		super();
		this.adminId = adminId;
	}

	public Admin(Integer adminId, String adminName, String adminPwd, String adminSex, String adminImage,
			String adminPhone, String adminEmail, String adminAddress, Integer adminRole) {
		super();
		this.adminId = adminId;
		this.adminName = adminName;
		this.adminPwd = adminPwd;
		this.adminSex = adminSex;
		this.adminImage = adminImage;
		this.adminPhone = adminPhone;
		this.adminEmail = adminEmail;
		this.adminAddress = adminAddress;
		this.adminRole = adminRole;
	}

	public Integer getAdminId() {
		return adminId;
	}

	public void setAdminId(Integer adminId) {
		this.adminId = adminId;
	}

	public String getAdminName() {
		return adminName;
	}

	public void setAdminName(String adminName) {
		this.adminName = adminName;
	}

	public String getAdminPwd() {
		return adminPwd;
	}

	public void setAdminPwd(String adminPwd) {
		this.adminPwd = adminPwd;
	}

	public String getAdminSex() {
		return adminSex;
	}

	public void setAdminSex(String adminSex) {
		this.adminSex = adminSex;
	}

	public String getAdminImage() {
		return adminImage;
	}

	public void setAdminImage(String adminImage) {
		this.adminImage = adminImage;
	}

	public String getAdminPhone() {
		return adminPhone;
	}

	public void setAdminPhone(String adminPhone) {
		this.adminPhone = adminPhone;
	}

	public String getAdminEmail() {
		return adminEmail;
	}

	public void setAdminEmail(String adminEmail) {
		this.adminEmail = adminEmail;
	}

	public String getAdminAddress() {
		return adminAddress;
	}

	public void setAdminAddress(String adminAddress) {
		this.adminAddress = adminAddress;
	}

	public Integer getAdminRole() {
		return adminRole;
	}

	public void setAdminRole(Integer adminRole) {
		this.adminRole = adminRole;
	}

	@Override
	public String toString() {
		return "Admin [adminId=" + adminId + ", adminName=" + adminName + ", adminPwd=" + adminPwd + ", adminSex="
				+ adminSex + ", adminImage=" + adminImage + ", adminPhone=" + adminPhone + ", adminEmail=" + adminEmail
				+ ", adminAddress=" + adminAddress + ", adminRole=" + adminRole + "]";
	}

}
