package com.neuedu.fruitshop.entity;

import java.util.List;

/**
 * 购物车实体类
 * 
 * @author wsl
 *
 */
public class Carts {
	// 购物车id
	private Integer cartsId;
	// 关系映射- 把表关系变成对象关系
	// 会员员表--userId
	private User user;

	public Carts() {
		super();
	}

	public Carts(Integer cartsId, User user) {
		super();
		this.cartsId = cartsId;
		this.user = user;
	}

	public Integer getCartsId() {
		return cartsId;
	}

	public void setCartsId(Integer cartsId) {
		this.cartsId = cartsId;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	@Override
	public String toString() {
		return "Carts [cartsId=" + cartsId + ", user=" + user + "]";
	}

}
