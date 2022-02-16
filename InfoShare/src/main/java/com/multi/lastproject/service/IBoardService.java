package com.multi.lastproject.service;

import java.util.ArrayList;

import com.multi.lastproject.model.BoardVO;
import com.multi.lastproject.model.Criteria;
import com.multi.lastproject.model.ReviewVO;

public interface IBoardService {
	public ArrayList<BoardVO> list(Criteria cri);//목록
	public int getTotal();//게시글 개수
	public void insertBoard(BoardVO vo);//개시글 작성
	public BoardVO getPage(int boardNo);//게시글 조회
	public void updateHit(int boardNo);//조회수 갱신
	public void insertReview(ReviewVO vo);
	
}
