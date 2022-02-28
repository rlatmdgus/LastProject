package com.multi.lastproject.model;

public class CartVO {
	private int cartNo;
	private String memId;
	private String cloPrdNo;
	private String fdPrdNo;
	private String fdPrdName;
	private String cloPrdName;
	private String fdPrdImg;
	private String cloPrdImg;
	private String cloPrdPrice;
	private String fdPrdPrice;
	public String getFdPrdName() {
		return fdPrdName;
	}
	public void setFdPrdName(String fdPrdName) {
		this.fdPrdName = fdPrdName;
	}
	public String getCloPrdName() {
		return cloPrdName;
	}
	public void setCloPrdName(String cloPrdName) {
		this.cloPrdName = cloPrdName;
	}
	public String getFdPrdImg() {
		return fdPrdImg;
	}
	public void setFdPrdImg(String fdPrdImg) {
		this.fdPrdImg = fdPrdImg;
	}
	public String getCloPrdImg() {
		return cloPrdImg;
	}
	public void setCloPrdImg(String cloPrdImg) {
		this.cloPrdImg = cloPrdImg;
	}
	public String getCloPrdPrice() {
		return cloPrdPrice;
	}
	public void setCloPrdPrice(String cloPrdPrice) {
		this.cloPrdPrice = cloPrdPrice;
	}
	public String getFdPrdPrice() {
		return fdPrdPrice;
	}
	public void setFdPrdPrice(String fdPrdPrice) {
		this.fdPrdPrice = fdPrdPrice;
	}
	public int getCartNo() {
		return cartNo;
	}
	public void setCartNo(int cartNo) {
		this.cartNo = cartNo;
	}
	public String getMemId() {
		return memId;
	}
	public void setMemId(String memId) {
		this.memId = memId;
	}
	public String getCloPrdNo() {
		return cloPrdNo;
	}
	public void setCloPrdNo(String cloPrdNo) {
		this.cloPrdNo = cloPrdNo;
	}
	public String getFdPrdNo() {
		return fdPrdNo;
	}
	public void setFdPrdNo(String fdPrdNo) {
		this.fdPrdNo = fdPrdNo;
	}
	public int getCartQty() {
		return cartQty;
	}
	public void setCartQty(int cartQty) {
		this.cartQty = cartQty;
	}
	private int cartQty;
}
