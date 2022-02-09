package com.multi.lastproject.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.multi.lastproject.dao.IBoardDAO;
import com.multi.lastproject.model.BoardVO;
@Service
public class BoardService implements IBoardService {
@Autowired
	IBoardDAO dao;
	@Override
	public ArrayList<BoardVO> list() {
		// TODO Auto-generated method stub
		return dao.list();
	}

}
