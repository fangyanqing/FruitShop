package com.neuedu.fruitshop.entity;

/**
 * 订单明细实体类
 * 
 * @author wsl
 *
 */
public class OrderInfo {
	// 订单明细Id
	private Integer oInfoId;
	// 订单Id
	private Orders orders;
	// 水果名称
	private String fruitName;
	// 单价
	private Double price;
	// 购买数量
	private Integer orderNum;
	// 备注
	private String tips;

	public OrderInfo() {
		super();
		// TODO Auto-generated constructor stub
	}

	public OrderInfo(Integer oInfoId) {
		super();
		this.oInfoId = oInfoId;
	}

	public OrderInfo(Integer oInfoId, Orders orders, String fruitName, Double price, Integer orderNum, String tips) {
		super();
		this.oInfoId = oInfoId;
		this.orders = orders;
		this.fruitName = fruitName;
		this.price = price;
		this.orderNum = orderNum;
		this.tips = tips;
	}

	public Integer getoInfoId() {
		return oInfoId;
	}

	public void setoInfoId(Integer oInfoId) {
		this.oInfoId = oInfoId;
	}

	public Orders getOrders() {
		return orders;
	}

	public void setOrders(Orders orders) {
		this.orders = orders;
	}

	public String getFruitName() {
		return fruitName;
	}

	public void setFruitName(String fruitName) {
		this.fruitName = fruitName;
	}

	public Double getPrice() {
		return price;
	}

	public void setPrice(Double price) {
		this.price = price;
	}

	public Integer getOrderNum() {
		return orderNum;
	}

	public void setOrderNum(Integer orderNum) {
		this.orderNum = orderNum;
	}

	public String getTips() {
		return tips;
	}

	public void setTips(String tips) {
		this.tips = tips;
	}

	@Override
	public String toString() {
		return "OrderInfo [oInfoId=" + oInfoId + ", orders=" + orders + ", fruitName=" + fruitName + ", price=" + price
				+ ", orderNum=" + orderNum + ", tips=" + tips + "]";
	}

}
