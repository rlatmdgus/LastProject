package com.multi.lastproject.dao;

import java.util.ArrayList;
import java.util.HashMap;

import com.multi.lastproject.model.AuthorVO;

public interface IAuthorDAO {
	
	ArrayList<AuthorVO> listAllAuthor();   		// 전체 작가 조회
	void insertAuthor(AuthorVO vo);
	AuthorVO detailViewAuthor(String authorId);// 상세 작가 조회
	String authorIdCheck(String authorId); 				//작가 검색
	ArrayList<AuthorVO> authorSearch(HashMap<String, Object> map); // 작가 검색
}
