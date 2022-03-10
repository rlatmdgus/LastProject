package com.multi.lastproject.service;

import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.multi.lastproject.dao.IMemberDAO;
import com.multi.lastproject.model.MemberVO;

@Service
public class MemberService implements IMemberService {

	@Autowired
	@Qualifier("IMemberDAO")
	IMemberDAO dao;
	
	@Override
	public void insertMember(MemberVO vo) {
		dao.insertMember(vo);
	}

	@Override
	public MemberVO loginCheck(HashMap<String, Object> map) {
		return dao.loginCheck(map);
	}
	
	@Override
	public MemberVO memNameBring(String memName) {
		return dao.memNameBring(memName);
	}

	@Override
	public String memIdCheck(String memId) {
		return dao.memIdCheck(memId);
	}

	@Override
	public int accountDelete(MemberVO vo) {
		
		return dao.accountDelete(vo);
	}

	@Override
	public void infoedit(MemberVO vo) {
		
		dao.infoedit(vo);
	}

	@Override
	public MemberVO memberInfo(String memId) {
		return dao.memberInfo(memId);
	}

}
