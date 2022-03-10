package com.multi.lastproject.model;

public class OrderProductVO {
	private String ordNo;
	private String cloPrdNo;
	private String fdPrdNo;
	private int ordQty;
	private String memId;
	private String cartPrdOption;
	private String cloPrdcolor;
	private String cloPrdSize;
	private String fdPrdWeight;
	public String getCartPrdOption() {
		return cartPrdOption;
	}
	public void setCartPrdOption(String cartPrdOption) {
		this.cartPrdOption = cartPrdOption;
	}
	public String getCloPrdcolor() {
		return cloPrdcolor;
	}
	public void setCloPrdcolor(String cloPrdcolor) {
		this.cloPrdcolor = cloPrdcolor;
	}
	public String getCloPrdSize() {
		return cloPrdSize;
	}
	public void setCloPrdSize(String cloPrdSize) {
		this.cloPrdSize = cloPrdSize;
	}
	public String getFdPrdWeight() {
		return fdPrdWeight;
	}
	public void setFdPrdWeight(String fdPrdWeight) {
		this.fdPrdWeight = fdPrdWeight;
	}
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
