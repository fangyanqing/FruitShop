package com.neuedu.fruitshop.entity;

import java.util.Date;

import com.fasterxml.jackson.annotation.JsonFormat;

/**
 * 日志表
 * 
 * @author wsl
 *
 */
public class Logger {
	// 日志id
	private Integer logId;
	// 日志内容
	private String logContent;
	// 记录时间
	@JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss")
	private Date logTime;
	// 操作人员
	private Admin admin;

	public Logger() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Logger(Integer logId) {
		super();
		this.logId = logId;
	}

	public Logger(Integer logId, String logContent, Date logTime, Admin admin) {
		super();
		this.logId = logId;
		this.logContent = logContent;
		this.logTime = logTime;
		this.admin = admin;
	}

	public Integer getLogId() {
		return logId;
	}

	public void setLogId(Integer logId) {
		this.logId = logId;
	}

	public String getLogContent() {
		return logContent;
	}

	public void setLogContent(String logContent) {
		this.logContent = logContent;
	}

	public Date getLogTime() {
		return logTime;
	}

	public void setLogTime(Date logTime) {
		this.logTime = logTime;
	}

	public Admin getAdmin() {
		return admin;
	}

	public void setAdmin(Admin admin) {
		this.admin = admin;
	}

	@Override
	public String toString() {
		return "Logger [logId=" + logId + ", logContent=" + logContent + ", logTime=" + logTime + ", admin=" + admin
				+ "]";
	}

}
