package com.multi.lastproject.dao;

import java.util.ArrayList;
import java.util.HashMap;

import com.multi.lastproject.model.BoardVO;
import com.multi.lastproject.model.CommentVO;
import com.multi.lastproject.model.Criteria;
import com.multi.lastproject.model.ReviewVO;

public interface IBoardDAO {
	public ArrayList<BoardVO> list(Criteria cri);

	public ArrayList<BoardVO> reviewList(Criteria cri);
	public int getTotal(Criteria cri);
	public int getTotalBoard(String ctgId);
  
	public ArrayList<BoardVO> hitlist(Criteria cri);

	public void insertBoard(BoardVO vo);
	public BoardVO getPage(int boardNo);
	public ReviewVO getReview(int revNo);
	public void updateHit(int boardNo);
	public void insertReview(ReviewVO vo);
	public void deleteBoard(int boardNo);
	public void modifyBoard(BoardVO vo);
	 // 댓글 개수
    public int commentCount() ;
 
    // 댓글 목록
    public ArrayList<CommentVO> commentList(int boardNo);
 
    // 댓글 작성
    public int commentInsert(CommentVO comment);
    // 댓글 수정
    public int commentUpdate(CommentVO comment);
 
    // 댓글 삭제
    public int commentDelete(int comNo);

    ArrayList<BoardVO> searchBoard(HashMap<String, Object> map);

}
