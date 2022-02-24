package com.multi.lastproject.controller;

/*import java.io.File;
import java.io.IOException;
import java.util.ArrayList;*/

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.multi.lastproject.service.ChatbotService;


@Controller
public class APIController {
	
	@Autowired
	private ChatbotService chatService;
	
	// index 페이지로 이동
	/*	@RequestMapping("/")
		public String index() {
			return "index";
		}*/
	

	// 챗봇 : 질문 메시지 전송하고 결과 받아서 출력
	/*@RequestMapping("/chatbot")
	public void chatbot() {
		String result = chatService.main("맡은 역할은");
		System.out.println(result);
	}*/
	
	/*	@RequestMapping("/chatbotForm")
		public String chatbotForm() {
			return "chatForm";
		}*/
	
	// 채팅창 + 음성 질문 + 이미지/멀티링크 답변
	@RequestMapping("/chatbotForm")
	public String chatbotForm() {
		return "/ai/chatForm";
	}
	
}










