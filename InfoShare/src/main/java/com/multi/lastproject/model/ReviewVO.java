package com.multi.lastproject.model;

import java.util.Date;

public class ReviewVO {
	
	private int revNo;
	private String memId;
	private String revTitle;
	private String revText;
	public String getRevText() {
		return revText;
	}
	public void setRevText(String revText) {
		this.revText = revText;
	}
	private Date revDate;
	private String fdPrdNo;
	private String cloPrdNo;
	private String ctgId;
	private String deCtgId;
	private String revImage;
	public int getRevNo() {
		return revNo;
	}
	public void setRevNo(int revNo) {
		this.revNo = revNo;
	}
	public String getMemId() {
		return memId;
	}
	public void setMemId(String memId) {
		this.memId = memId;
	}
	public String getRevTitle() {
		return revTitle;
	}
	public void setRevTitle(String revTitle) {
		this.revTitle = revTitle;
	}
	public Date getRevDate() {
		return revDate;
	}
	public void setRevDate(Date revDate) {
		this.revDate = revDate;
	}
	public String getFdPrdNo() {
		return fdPrdNo;
	}
	public void setFdPrdNo(String fdPrdNo) {
		this.fdPrdNo = fdPrdNo;
	}
	public String getCloPrdNo() {
		return cloPrdNo;
	}
	public void setCloPrdNo(String cloPrdNo) {
		this.cloPrdNo = cloPrdNo;
	}
	public String getCtgId() {
		return ctgId;
	}
	public void setCtgId(String ctgId) {
		this.ctgId = ctgId;
	}
	public String getDeCtgId() {
		return deCtgId;
	}
	public void setDeCtgId(String deCtgId) {
		this.deCtgId = deCtgId;
	}
	public String getRevImage() {
		return revImage;
	}
	public void setRevImage(String revImage) {
		this.revImage = revImage;
	}

}
