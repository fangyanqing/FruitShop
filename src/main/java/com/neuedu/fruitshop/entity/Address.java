package com.neuedu.fruitshop.entity;

/**
 * 地址实体类
 * 
 * @author wsl
 *
 */
public class Address {
	// 地址Id
	private Integer addressId;
	// 收货地址
	private String address;
	// 收货人姓名
	private String consignee;
	// 收货人手机号
	private String phone;

	// 关系映射- 把表关系变成对象关系
	// 会员表
	private User user;

	public Address() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Address(Integer addressId) {
		super();
		this.addressId = addressId;
	}

	public Address(Integer addressId, String address, String consignee, String phone, User user) {
		super();
		this.addressId = addressId;
		this.address = address;
		this.consignee = consignee;
		this.phone = phone;
		this.user = user;
	}

	public Integer getAddressId() {
		return addressId;
	}

	public void setAddressId(Integer addressId) {
		this.addressId = addressId;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getConsignee() {
		return consignee;
	}

	public void setConsignee(String consignee) {
		this.consignee = consignee;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	@Override
	public String toString() {
		return "address [addressId=" + addressId + ", address=" + address + ", consignee=" + consignee + ", phone="
				+ phone + ", user=" + user + "]";
	}

}
