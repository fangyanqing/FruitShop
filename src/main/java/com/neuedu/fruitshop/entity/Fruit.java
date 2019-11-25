package com.neuedu.fruitshop.entity;

import java.util.Date;

import com.fasterxml.jackson.annotation.JsonFormat;

/**
 * 水果信息实体类
 * 
 * @author wsl
 *
 */
public class Fruit {
	// 水果Id
	private Integer fruitId;
	// 水果名称
	private String fruitName;
	// 水果图片
	private String fruitImage;
	// 水果价格
	private Double fruitPrice;
	// 水果单位
	private String fruitUnit;

	// 水果上架时间
	@JsonFormat(pattern = "yyyy-MM-dd")
	private Date putawayTime;

	// 关系映射- 把表关系变成对象关系
	// 类型表--水果类型id
	private Type type;
	// 管理员表--管理员id
	private Admin admin;
	// 供应商表--供应商id
	private Provider provider;
	// 水果状态
	private Integer fruitStates;

	public Fruit() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Fruit(Integer fruitId) {
		super();
		this.fruitId = fruitId;
	}
	
	
    //用于模糊查询--按名字查询
	public Fruit(String fruitName) {
		super();
		this.fruitName = fruitName;
	}

	public Fruit(Integer fruitId, String fruitName, String fruitImage, Double fruitPrice, String fruitUnit,
			Date putawayTime, Type type, Admin admin, Provider provider, Integer fruitStates) {
		super();
		this.fruitId = fruitId;
		this.fruitName = fruitName;
		this.fruitImage = fruitImage;
		this.fruitPrice = fruitPrice;
		this.fruitUnit = fruitUnit;
		this.putawayTime = putawayTime;
		this.type = type;
		this.admin = admin;
		this.provider = provider;
		this.fruitStates = fruitStates;
	}

	public Integer getFruitId() {
		return fruitId;
	}

	public void setFruitId(Integer fruitId) {
		this.fruitId = fruitId;
	}

	public String getFruitName() {
		return fruitName;
	}

	public void setFruitName(String fruitName) {
		this.fruitName = fruitName;
	}

	public String getFruitImage() {
		return fruitImage;
	}

	public void setFruitImage(String fruitImage) {
		this.fruitImage = fruitImage;
	}

	public Double getFruitPrice() {
		return fruitPrice;
	}

	public void setFruitPrice(Double fruitPrice) {
		this.fruitPrice = fruitPrice;
	}

	public String getFruitUnit() {
		return fruitUnit;
	}

	public void setFruitUnit(String fruitUnit) {
		this.fruitUnit = fruitUnit;
	}

	public Date getPutawayTime() {
		return putawayTime;
	}

	public void setPutawayTime(Date putawayTime) {
		this.putawayTime = putawayTime;
	}

	public Type getType() {
		return type;
	}

	public void setType(Type type) {
		this.type = type;
	}

	public Admin getAdmin() {
		return admin;
	}

	public void setAdmin(Admin admin) {
		this.admin = admin;
	}

	public Provider getProvider() {
		return provider;
	}

	public void setProvider(Provider provider) {
		this.provider = provider;
	}

	public Integer getFruitStates() {
		return fruitStates;
	}

	public void setFruitStates(Integer fruitStates) {
		this.fruitStates = fruitStates;
	}

	@Override
	public String toString() {
		return "Fruit [fruitId=" + fruitId + ", fruitName=" + fruitName + ", fruitImage=" + fruitImage + ", fruitPrice="
				+ fruitPrice + ", fruitUnit=" + fruitUnit + ", putawayTime=" + putawayTime + ", typeId=" + type
				+ ", admin=" + admin + ", provider=" + provider + ", fruitStates=" + fruitStates + "]";
	}

}
