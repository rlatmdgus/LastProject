package com.multi.lastproject.service;

import java.util.ArrayList;

import com.multi.lastproject.model.BoardVO;
import com.multi.lastproject.model.CommentVO;
import com.multi.lastproject.model.Criteria;
import com.multi.lastproject.model.ReviewVO;

public interface IBoardService {
	public ArrayList<BoardVO> list(Criteria cri);//목록
	public int getTotal();//게시글 개수
	public void insertBoard(BoardVO vo);//개시글 작성
	public BoardVO getPage(int boardNo);//게시글 조회
	public void updateHit(int boardNo);//조회수 갱신
	public void insertReview(ReviewVO vo);
	
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

	
}
