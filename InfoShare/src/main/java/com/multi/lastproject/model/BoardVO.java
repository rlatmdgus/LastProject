package com.multi.lastproject.model;

import java.util.Date;

public class BoardVO {
	private int boardNo;
	private String memNickname;
	private String memId;
	private String boardTitle;
	private String boardContext;
	private Date boardDate;
	public Date getBoardDate() {
		return boardDate;
	}
	public void setBoardDate(Date boardDate) {
		this.boardDate = boardDate;
	}
	private int boardHit;
	private String boardTag;
	private String ctgId;
	private String deCtgId;
	private int boardLike;
	private int boardHate;
	private String boardAddress;
	private String boardImage;
	public int getBoardNo() {
		return boardNo;
	}
	public void setBoardNo(int boardNo) {
		this.boardNo = boardNo;
	}
	public String getMemNickname() {
		return memNickname;
	}
	public void setMemNickname(String memNickname) {
		this.memNickname = memNickname;
	}
	public String getMemId() {
		return memId;
	}
	public void setMemId(String memId) {
		this.memId = memId;
	}
	public String getBoardTitle() {
		return boardTitle;
	}
	public void setBoardTitle(String boardTitle) {
		this.boardTitle = boardTitle;
	}
	public String getBoardContext() {
		return boardContext;
	}
	public void setBoardContext(String boardContext) {
		this.boardContext = boardContext;
	}
	public int getBoardHit() {
		return boardHit;
	}
	public void setBoardHit(int boardHit) {
		this.boardHit = boardHit;
	}
	public String getBoardTag() {
		return boardTag;
	}
	public void setBoardTag(String boardTag) {
		this.boardTag = boardTag;
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
	public int getBoardLike() {
		return boardLike;
	}
	public void setBoardLike(int boardLike) {
		this.boardLike = boardLike;
	}
	public int getBoardHate() {
		return boardHate;
	}
	public void setBoardHate(int boardHate) {
		this.boardHate = boardHate;
	}
	public String getBoardAddress() {
		return boardAddress;
	}
	public void setBoardAddress(String boardAddress) {
		this.boardAddress = boardAddress;
	}
	public String getBoardImage() {
		return boardImage;
	}
	public void setBoardImage(String boardImage) {
		this.boardImage = boardImage;
	}
	
}
