package com.neuedu.fruitshop.entity;

import java.util.Date;

import com.fasterxml.jackson.annotation.JsonFormat;

/**
 * 评论实体类
 * 
 * @author wsl
 *
 */
public class Comment {
	// 评论id
	private Integer commentId;
	// 评论等级
	private Integer commentLevel;
	// 评论内容
	private String commentText;
	// 评论时间
	@JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss")
	private Date commentTime;
	// 审核状态
	private Integer commentStates;
	// 审核说明
	private String commentReason;
	// 评论人Id
	private User user;
	// 水果Id
	private Fruit fruit;
	// 审核人
	private Admin admin;

	public Comment() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Comment(Integer commentId) {
		super();
		this.commentId = commentId;
	}
	

	public Comment(String commentText) {
		super();
		this.commentText = commentText;
	}

	public Comment(Integer commentId, Integer commentLevel, String commentText, Date commentTime, Integer commentStates,
			String commentReason, User user, Fruit fruit, Admin admin) {
		super();
		this.commentId = commentId;
		this.commentLevel = commentLevel;
		this.commentText = commentText;
		this.commentTime = commentTime;
		this.commentStates = commentStates;
		this.commentReason = commentReason;
		this.user = user;
		this.fruit = fruit;
		this.admin = admin;
	}

	public Integer getCommentId() {
		return commentId;
	}

	public void setCommentId(Integer commentId) {
		this.commentId = commentId;
	}

	public Integer getCommentLevel() {
		return commentLevel;
	}

	public void setCommentLevel(Integer commentLevel) {
		this.commentLevel = commentLevel;
	}

	public String getCommentText() {
		return commentText;
	}

	public void setCommentText(String commentText) {
		this.commentText = commentText;
	}

	public Date getCommentTime() {
		return commentTime;
	}

	public void setCommentTime(Date commentTime) {
		this.commentTime = commentTime;
	}

	public Integer getCommentStates() {
		return commentStates;
	}

	public void setCommentStates(Integer commentStates) {
		this.commentStates = commentStates;
	}

	public String getCommentReason() {
		return commentReason;
	}

	public void setCommentReason(String commentReason) {
		this.commentReason = commentReason;
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

	public Admin getAdmin() {
		return admin;
	}

	public void setAdmin(Admin admin) {
		this.admin = admin;
	}

	@Override
	public String toString() {
		return "Comment [commentId=" + commentId + ", commentLevel=" + commentLevel + ", commentText=" + commentText
				+ ", commentTime=" + commentTime + ", commentStates=" + commentStates + ", commentReason="
				+ commentReason + ", user=" + user + ", fruit=" + fruit + ", admin=" + admin + "]";
	}

	
}
