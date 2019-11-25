package com.neuedu.fruitshop.entity;

import java.util.Date;

import com.fasterxml.jackson.annotation.JsonFormat;

/**
 * 收藏实体类
 * 
 * @author admin
 *
 */
public class Collect {
	// 收藏Id
	private Integer collectId;
	// 收藏时间
	@JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss")
	private Date collectTime;

	// 关系映射- 把表关系变成对象关系
	// 会员员表--userId
	private User user;

	// 水果表--fruitId
	private Fruit fruit;

	public Collect() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Collect(Integer collectId) {
		super();
		this.collectId = collectId;
	}

	public Collect(Integer collectId, Date collectTime, User user, Fruit fruit) {
		super();
		this.collectId = collectId;
		this.collectTime = collectTime;
		this.user = user;
		this.fruit = fruit;
	}

	public Integer getCollectId() {
		return collectId;
	}

	public void setCollectId(Integer collectId) {
		this.collectId = collectId;
	}

	public Date getCollectTime() {
		return collectTime;
	}

	public void setCollectTime(Date collectTime) {
		this.collectTime = collectTime;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public Fruit getFruit() {
		return fruit;
	}

	public void setFruit(Fruit fruit) {
		this.fruit = fruit;
	}

	@Override
	public String toString() {
		return "Collect [collectId=" + collectId + ", collectTime=" + collectTime + ", user=" + user + ", fruit="
				+ fruit + "]";
	}

}
