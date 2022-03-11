package com.multi.lastproject.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.multi.lastproject.dao.IAuthorDAO;
import com.multi.lastproject.model.AuthorVO;

@Service
public class AuthorService implements IAuthorService {

	@Autowired
	IAuthorDAO dao;
	
	@Override
	public ArrayList<AuthorVO> listAllAuthor() {		
		return dao.listAllAuthor();
	}
	
	@Override
	public void insertAuthor(AuthorVO vo) {
		dao.insertAuthor(vo);
	}

}
