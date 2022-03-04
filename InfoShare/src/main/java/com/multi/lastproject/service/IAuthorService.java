package com.multi.lastproject.service;

import java.util.ArrayList;

import com.multi.lastproject.model.AuthorVO;

public interface IAuthorService {
	
	ArrayList<AuthorVO> listAllAuthor();   		// 전체 작가 조회
	void insertAuthor(AuthorVO vo);
}
