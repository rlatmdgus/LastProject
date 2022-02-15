package com.multi.lastproject.dao;

import java.util.ArrayList;

import com.multi.lastproject.model.BoardVO;
import com.multi.lastproject.model.Criteria;

public interface IBoardDAO {
	public ArrayList<BoardVO> list(Criteria cri);
	public int getTotal();
	public void insertBoard(BoardVO vo);
	public BoardVO getPage(int boardNo);
	public void updateHit(int boardNo);

}
