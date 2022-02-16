package com.multi.lastproject.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.multi.lastproject.dao.IBoardDAO;
import com.multi.lastproject.model.BoardVO;
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
	
	
}
