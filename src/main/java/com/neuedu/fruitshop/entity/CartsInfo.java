package com.neuedu.fruitshop.entity;

import java.util.Date;

import com.fasterxml.jackson.annotation.JsonFormat;

/**
 * 购物车明细实体类
 * 
 * @author admin
 *
 */
public class CartsInfo {
	// 购物车明细id
	private Integer cInfoId;
	// 购物车id
	private Carts carts;
	// 水果id
	private Fruit fruit;
	// 购买数量
	private Integer cartsNum;
	// 加入时间
	@JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss")
	private Date addTime;

	public CartsInfo() {
		super();
		// TODO Auto-generated constructor stub
	}

	public CartsInfo(Integer cInfoId, Carts carts, Fruit fruit, Integer cartsNum, Date addTime) {
		super();
		this.cInfoId = cInfoId;
		this.carts = carts;
		this.fruit = fruit;
		this.cartsNum = cartsNum;
		this.addTime = addTime;
	}

	public CartsInfo(Integer cInfoId) {
		super();
		this.cInfoId = cInfoId;
	}

	public Integer getcInfoId() {
		return cInfoId;
	}

	public void setcInfoId(Integer cInfoId) {
		this.cInfoId = cInfoId;
	}

	public Carts getCarts() {
		return carts;
	}

	public void setCarts(Carts carts) {
		this.carts = carts;
	}

	public Fruit getFruit() {
		return fruit;
	}

	public void setFruit(Fruit fruit) {
		this.fruit = fruit;
	}

	public Integer getCartsNum() {
		return cartsNum;
	}

	public void setCartsNum(Integer cartsNum) {
		this.cartsNum = cartsNum;
	}

	public Date getAddTime() {
		return addTime;
	}

	public void setAddTime(Date addTime) {
		this.addTime = addTime;
	}

	@Override
	public String toString() {
		return "CartsInfo [cInfoId=" + cInfoId + ", carts=" + carts + ", fruit=" + fruit + ", cartsNum=" + cartsNum
				+ ", addTime=" + addTime + "]";
	}

}
