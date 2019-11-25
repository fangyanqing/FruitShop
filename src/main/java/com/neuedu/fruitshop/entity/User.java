package com.neuedu.fruitshop.entity;
/**
 * 会员实体类
 * @author wsl
 *
 */
public class User {
	// 会员id
	private Integer userId;
	// 会员姓名
	private String userName;
	// 会员昵称
	private String nickName;
	// 会员密码
	private String userPwd;
	// 会员性别
	private String userSex;
	// 会员头像
	private String userImage;
	// 会员电话
	private String userPhone;
	// 会员邮箱
	private String userEmail;
	// 会员地址
	private String userAddress;
	public User() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	public User(Integer userId) {
		super();
		this.userId = userId;
	}

	public User(Integer userId, String userName, String nickName, String userPwd, String userSex, String userImage,
			String userPhone, String userEmail, String userAddress) {
		super();
		this.userId = userId;
		this.userName = userName;
		this.nickName = nickName;
		this.userPwd = userPwd;
		this.userSex = userSex;
		this.userImage = userImage;
		this.userPhone = userPhone;
		this.userEmail = userEmail;
		this.userAddress = userAddress;
	}
	public Integer getUserId() {
		return userId;
	}
	public void setUserId(Integer userId) {
		this.userId = userId;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getNickName() {
		return nickName;
	}
	public void setNickName(String nickName) {
		this.nickName = nickName;
	}
	public String getUserPwd() {
		return userPwd;
	}
	public void setUserPwd(String userPwd) {
		this.userPwd = userPwd;
	}
	public String getUserSex() {
		return userSex;
	}
	public void setUserSex(String userSex) {
		this.userSex = userSex;
	}
	public String getUserImage() {
		return userImage;
	}
	public void setUserImage(String userImage) {
		this.userImage = userImage;
	}
	public String getUserPhone() {
		return userPhone;
	}
	public void setUserPhone(String userPhone) {
		this.userPhone = userPhone;
	}
	public String getUserEmail() {
		return userEmail;
	}
	public void setUserEmail(String userEmail) {
		this.userEmail = userEmail;
	}
	public String getUserAddress() {
		return userAddress;
	}
	public void setUserAddress(String userAddress) {
		this.userAddress = userAddress;
	}
	@Override
	public String toString() {
		return "user [userId=" + userId + ", userName=" + userName + ", nickName=" + nickName + ", userPwd=" + userPwd
				+ ", userSex=" + userSex + ", userImage=" + userImage + ", userPhone=" + userPhone + ", userEmail="
				+ userEmail + ", userAddress=" + userAddress + "]";
	}
	
	

}
