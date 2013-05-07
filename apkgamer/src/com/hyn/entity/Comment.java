package com.hyn.entity;

import java.sql.Date;

public class Comment {
	private int id;
	private int uid;
	private int apkid;
	private String content;
	private int rnum;
	private Date senddate;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public int getUid() {
		return uid;
	}

	public void setUid(int uid) {
		this.uid = uid;
	}

	public int getApkid() {
		return apkid;
	}

	public void setApkid(int apkid) {
		this.apkid = apkid;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public int getRnum() {
		return rnum;
	}

	public void setRnum(int rnum) {
		this.rnum = rnum;
	}

	public Date getSenddate() {
		return senddate;
	}

	public void setSenddate(Date senddate) {
		this.senddate = senddate;
	}

}
