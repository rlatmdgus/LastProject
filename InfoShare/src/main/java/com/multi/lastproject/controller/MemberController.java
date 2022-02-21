package com.multi.lastproject.controller;

import java.util.HashMap;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.multi.lastproject.model.MemberVO;
import com.multi.lastproject.service.MemberService;

@Controller
public class MemberController {
	@Autowired
	MemberService service;
	
	//로그인 폼 이동
	@RequestMapping("/loginForm")
	public String loginForm() {
		return "/member/loginForm";
	}
	
	@ResponseBody
	@RequestMapping("/login")
	public String loginCheck(@RequestParam HashMap<String, Object> param,
											   HttpSession session) {
		
		// 로그인 체크 결과
		MemberVO vo = service.loginCheck(param);
		String result = "fail";
		
		if(vo != null) {
			//로그인 성공하면 세션 변수 지정
			session.setAttribute("sid", vo.getMemId());
			result = "success";
		}
		
		return result;
	}
	
	//약관동의 폼 이동
	@RequestMapping("/consentForm")
	public String consentForm() {
		return "/member/consentForm";
	}
	
	//회원가입 폼 이동
	@RequestMapping("/joinForm")
	public String joinForm() {
		return "/member/joinForm";
	}
	
	// 아이디 중복 체크
    @ResponseBody
	@RequestMapping("/memIdCheck")
	public String memIdCheck(@RequestParam String memId) {
	
		String memId_result=service.memIdCheck(memId);  
		String result="use";
		System.out.println(memId_result);
		if(memId_result == null) { 
			result="no_use";
		}else result="use";
		
		return result;
	}
    
    // 로그아웃
    @RequestMapping("/logout")
	   public String logout(HttpSession session) {
	      session.invalidate();
	      return "redirect:/";
	}
    
    // 회원가입
    @RequestMapping("/member/insertMember")
	public String insertMember(MemberVO vo) {
		service.insertMember(vo);
		return "redirect:/";
	}
}
