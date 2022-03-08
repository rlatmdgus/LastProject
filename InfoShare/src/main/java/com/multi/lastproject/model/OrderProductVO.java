package com.multi.lastproject.model;

public class OrderProductVO {
	private String ordNo;
	private String cloPrdNo;
	private String fdPrdNo;
	private int ordQty;
	private String memId;
	public String getMemId() {
		return memId;
	}
	public void setMemId(String memId) {
		this.memId = memId;
	}
	public String getOrdNo() {
		return ordNo;
	}
	public void setOrdNo(String ordNo) {
		this.ordNo = ordNo;
	}
	public String getCloPrdNo() {
		return cloPrdNo;
	}
	public void setCloPrdNo(String cloPrdNo) {
		this.cloPrdNo = cloPrdNo;
	}
	
	public int getOrdQty() {
		return ordQty;
	}
	public void setOrdQty(int ordQty) {
		this.ordQty = ordQty;
	}
	public String getFdPrdNo() {
		return fdPrdNo;
	}
	public void setFdPrdNo(String fdPrdNo) {
		this.fdPrdNo = fdPrdNo;
	}
	
}
