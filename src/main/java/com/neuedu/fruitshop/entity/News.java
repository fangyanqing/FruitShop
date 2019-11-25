package com.neuedu.fruitshop.entity;

import java.util.Date;

import com.fasterxml.jackson.annotation.JsonFormat;

/**
 * 资讯实体类
 * 
 * @author wsl
 *
 */
public class News {
	// 资讯id
	private Integer newsId;
	// 资讯标题
	private String newsTitle;
	// 资讯内容
	private String content;
	// 发布时间
	@JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss")
	private Date time;// 发布时间

	// 关系映射- 把表关系变成对象关系
	// 管理员表--发布人
	private Admin admin;

	public News() {
		super();
		// TODO Auto-generated constructor stub
	}

	public News(Integer newsId) {
		super();
		this.newsId = newsId;
	}

	public News(Integer newsId, String newsTitle, String content, Date time, Admin admin) {
		super();
		this.newsId = newsId;
		this.newsTitle = newsTitle;
		this.content = content;
		this.time = time;
		this.admin = admin;
	}

	public Integer getNewsId() {
		return newsId;
	}

	public void setNewsId(Integer newsId) {
		this.newsId = newsId;
	}

	public String getNewsTitle() {
		return newsTitle;
	}

	public void setNewsTitle(String newsTitle) {
		this.newsTitle = newsTitle;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public Date getTime() {
		return time;
	}

	public void setTime(Date time) {
		this.time = time;
	}

	public Admin getAdmin() {
		return admin;
	}

	public void setAdmin(Admin admin) {
		this.admin = admin;
	}

	@Override
	public String toString() {
		return "news [newsId=" + newsId + ", newsTitle=" + newsTitle + ", content=" + content + ", time=" + time
				+ ", admin=" + admin + "]";
	}

}
