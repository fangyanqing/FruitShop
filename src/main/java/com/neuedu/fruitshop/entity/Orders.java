package com.neuedu.fruitshop.entity;

import java.util.Date;

import com.fasterxml.jackson.annotation.JsonFormat;

/**
 * 订单实体类
 * 
 * @author wsl
 *
 */
public class Orders {
	// 订单id
	private Integer orderId;
	// 会员Id
	private User user;
	// 创建时间
	@JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss")
	private Date createTime;
	// 支付时间
	@JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss")
	private Date payTime;
	// 发货时间
	@JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss")
	private Date deliverTime;
	// 收货时间
	@JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss")
	private Date receiverTime;
	// 状态
	private Integer orderState;
	// 收货地址
	private Address address;

	public Orders() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Orders(Integer orderId) {
		super();
		this.orderId = orderId;
	}

	public Orders(Integer orderId, User user, Date createTime, Date payTime, Date deliverTime, Date receiverTime,
			Integer orderState, Address address) {
		super();
		this.orderId = orderId;
		this.user = user;
		this.createTime = createTime;
		this.payTime = payTime;
		this.deliverTime = deliverTime;
		this.receiverTime = receiverTime;
		this.orderState = orderState;
		this.address = address;
	}

	public Integer getOrderId() {
		return orderId;
	}

	public void setOrderId(Integer orderId) {
		this.orderId = orderId;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public Date getCreateTime() {
		return createTime;
	}

	public void setCreateTime(Date createTime) {
		this.createTime = createTime;
	}

	public Date getPayTime() {
		return payTime;
	}

	public void setPayTime(Date payTime) {
		this.payTime = payTime;
	}

	public Date getDeliverTime() {
		return deliverTime;
	}

	public void setDeliverTime(Date deliverTime) {
		this.deliverTime = deliverTime;
	}

	public Date getReceiverTime() {
		return receiverTime;
	}

	public void setReceiverTime(Date receiverTime) {
		this.receiverTime = receiverTime;
	}

	public Integer getOrderState() {
		return orderState;
	}

	public void setOrderState(Integer orderState) {
		this.orderState = orderState;
	}

	public Address getAddress() {
		return address;
	}

	public void setAddress(Address address) {
		this.address = address;
	}

	@Override
	public String toString() {
		return "Orders [orderId=" + orderId + ", user=" + user + ", createTime=" + createTime + ", payTime=" + payTime
				+ ", deliverTime=" + deliverTime + ", receiverTime=" + receiverTime + ", orderState=" + orderState
				+ ", address=" + address + "]";
	}

}
