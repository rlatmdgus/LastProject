package com.multi.lastproject.service;

import java.util.HashMap;

import com.multi.lastproject.model.MemberVO;

public interface IMemberService {

	void insertMember(MemberVO vo);
	MemberVO loginCheck(HashMap<String, Object> map);
	MemberVO memNameBring(String memName); 
	String memIdCheck(String memId);
	int accountDelete(MemberVO vo);
	void infoedit(MemberVO vo);
	MemberVO memberInfo(String memId);
}
