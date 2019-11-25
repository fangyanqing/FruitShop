package com.neuedu.fruitshop.entity;

/**
 * 水果类型实体类
 * 
 * @author wsl
 *
 */
public class Type {
	// 水果类型Id
	private Integer typeId;
	// 水果类型名称
	private String typeName;
	// 水果类型图片
	private String typeImage;

	public Type() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Type(Integer typeId) {
		super();
		this.typeId = typeId;
	}

	public Type(Integer typeId, String typeName, String typeImage) {
		super();
		this.typeId = typeId;
		this.typeName = typeName;
		this.typeImage = typeImage;
	}

	public Integer getTypeId() {
		return typeId;
	}

	public void setTypeId(Integer typeId) {
		this.typeId = typeId;
	}

	public String getTypeName() {
		return typeName;
	}

	public void setTypeName(String typeName) {
		this.typeName = typeName;
	}

	public String getTypeImage() {
		return typeImage;
	}

	public void setTypeImage(String typeImage) {
		this.typeImage = typeImage;
	}

	@Override
	public String toString() {
		return "type [typeId=" + typeId + ", typeName=" + typeName + ", typeImage=" + typeImage + "]";
	}

}
