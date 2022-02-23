package com.multi.lastproject.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.multi.lastproject.dao.IBoardDAO;
import com.multi.lastproject.model.BoardVO;
import com.multi.lastproject.model.CommentVO;
import com.multi.lastproject.model.Criteria;
import com.multi.lastproject.model.ReviewVO;
@Service
public class BoardService implements IBoardService {
@Autowired
	IBoardDAO dao;
	@Override
	public ArrayList<BoardVO> list(Criteria cri) {
		// TODO Auto-generated method stub
		return dao.list(cri);
	}
	
	public ArrayList<BoardVO> hitlist(Criteria cri){
		return dao.hitlist(cri);
	}
	@Override
	public int getTotal() {
		
		return dao.getTotal();
	}
	
	@Override
	public void insertBoard(BoardVO vo) {
		
		dao.insertBoard(vo);
	}
	@Override
	public BoardVO getPage(int boardNo) {
		return dao.getPage(boardNo);
	}
	@Override
	public void updateHit(int boardNo) {
		dao.updateHit(boardNo);
	}
	@Override
	public void insertReview(ReviewVO vo) {
		dao.insertReview(vo);
	}
	@Override
	public int commentCount() {
		// TODO Auto-generated method stub
		return dao.commentCount();
	}
	@Override
	public ArrayList<CommentVO> commentList(int boardNo) {
		// TODO Auto-generated method stub
		return dao.commentList(boardNo);
	}
	@Override
	public int commentInsert(CommentVO comment) {
		// TODO Auto-generated method stub
		return dao.commentInsert(comment);
	}
	@Override
	public int commentUpdate(CommentVO comment) {
		// TODO Auto-generated method stub
		return dao.commentUpdate(comment);
	}
	@Override
	public int commentDelete(int comNo) {
		// TODO Auto-generated method stub
		return dao.commentDelete(comNo);
	}
	
	
	
}
