package com.multi.lastproject.service;

import java.util.ArrayList;
import java.util.HashMap;

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
	public int getTotal(Criteria cri) {
		
		return dao.getTotal(cri);
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
	@Override
	public int getTotalReview(Criteria cri) {
		// TODO Auto-generated method stub
		return dao.getTotalReview(cri);
	}
	@Override
	public void deleteBoard(int boardNo) {
		// TODO Auto-generated method stub
		dao.deleteBoard(boardNo);
	}
	@Override
	public void modifyBoard(BoardVO vo) {
		// TODO Auto-generated method stub
		dao.modifyBoard(vo);
	}
	@Override
	public ArrayList<BoardVO> searchBoard(HashMap<String, Object> map) {
		// TODO Auto-generated method stub
		return dao.searchBoard(map);
	}
	@Override
	public ArrayList<BoardVO> reviewList(Criteria cri) {
		// TODO Auto-generated method stub
		return dao.reviewList(cri);
	}
	@Override
	public ReviewVO getReview(int revNo) {
		// TODO Auto-generated method stub
		return dao.getReview(revNo);
	}

	@Override
	public void modifyReview(ReviewVO vo) {
		// TODO Auto-generated method stub
		dao.modifyReview(vo);
	}

	@Override
	public void deleteReview(int revNo) {
		// TODO Auto-generated method stub
		dao.deleteReview(revNo);
	}

	@Override
	public ArrayList<BoardVO> selectBoard(String keyword) {
		
		return dao.selectBoard(keyword);
	}

	
	
	
}
