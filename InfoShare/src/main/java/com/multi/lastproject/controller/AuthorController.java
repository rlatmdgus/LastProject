package com.multi.lastproject.controller;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.UUID;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.multi.lastproject.model.AuthorVO;
import com.multi.lastproject.model.MemberVO;
import com.multi.lastproject.service.AuthorService;
import com.multi.lastproject.service.MemberService;

@Controller
public class AuthorController {

	// DI 설정
	@Autowired
	AuthorService service;

	
	  // 실행 시 index 페이지 열기
	  
		/*
		 * @RequestMapping("/") public String viewIndex() { return "index"; }
		 */

	// 전체 작가 조회
	@RequestMapping("/author/listAllAuthor")
	public String listAllAuthor(Model model) {
		ArrayList<AuthorVO> authorList = service.listAllAuthor();
		model.addAttribute("authorList", authorList);
		return "author/authorListView";
	}

	@Autowired
	AuthorService authorService;

	@Autowired
	MemberService memberService;

	@RequestMapping("/authorInsert")
	public String authorinsert() {
		return "/author/authorInsert";
	}

	@RequestMapping("authorList")
	public String authorList() {
		return "/author/authorList";
	}

	@RequestMapping("/insertAuthor")
	public String insertAuthor( @RequestParam("authorName") String authorName,HttpSession session,
			@RequestParam("authorNick") String authorNick, @RequestParam("authorClass") String authorClass,
			@RequestParam("authorDescript") String authorDescript, 
			@RequestParam("authorImage") MultipartFile file) throws IOException {

		String savedFileName = "";
		AuthorVO vo = new AuthorVO();

		// 1. 파일 저장 경로 설정 : 실제 서비스되는 위치 (프로젝트 외부에 저장)
		String uploadPath = "";

		// 2. 원본 파일 이름 알아오기
		String originalFileName = file.getOriginalFilename();

		// 3. 파일 이름 중복되지 않도록 이름 변경 : 서버에 저장할 이름 . UUID 사용
		UUID uuid = UUID.randomUUID();
		savedFileName = uuid.toString() + "_" + originalFileName;

		// 4. 파일 생성
		File file1 = new File(uploadPath + savedFileName);

		// 5. 서버로 전송
		file.transferTo(file1);

		MemberVO memberVO = memberService.memberInfo((String)session.getAttribute("sid"));

		vo.setAuthorId((String)session.getAttribute("sid"));
		vo.setAuthorName(memberVO.getMemName());
		vo.setAuthorNick(authorNick);
		vo.setAuthorClass(authorClass);
		vo.setAuthorDescript(authorDescript);
		vo.setAuthorHp(memberVO.getMemHp());
		vo.setAuthorEmail(memberVO.getMemEmail());
		vo.setAuthorAddress(memberVO.getMemAddress());
		vo.setAuthorImage(savedFileName);

		authorService.insertAuthor(vo);

		return "author/authorList";
	}
}
