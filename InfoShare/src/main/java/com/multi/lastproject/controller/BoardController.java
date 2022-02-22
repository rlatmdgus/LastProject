package com.multi.lastproject.controller;

import java.io.File;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.UUID;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.multi.lastproject.model.BoardVO;
import com.multi.lastproject.model.Criteria;
import com.multi.lastproject.model.PageMakerVO;
import com.multi.lastproject.model.ReviewVO;
import com.multi.lastproject.model.SmarteditorVO;
import com.multi.lastproject.service.BoardService;

@Controller
public class BoardController {
	@Autowired
	BoardService service;
	
	
	@RequestMapping("/list")
	public String boardListView(Model model,Criteria cri) {
		
		ArrayList<BoardVO> boardList=service.list(cri);
		model.addAttribute("list", boardList);
		int total=service.getTotal(cri);
		PageMakerVO pageMaker=new PageMakerVO(cri,total);
		
		model.addAttribute("pageMaker", pageMaker);
		
		return "board/boardListView";
	}
	@RequestMapping("/write")
	public String insertBoard() {
		
		return "board/boardInsert";
	}
	@RequestMapping("/savePost")
	public String savePost(BoardVO vo,@RequestParam("smartEditor") String content,HttpSession session) {
		vo.setBoardContext(content);
		Pattern pattern = Pattern.compile("<img[^>]*src=[\"']?([^>\"']+)[\"']?[^>]*>");
		 Matcher matcher = pattern.matcher(content);
		 while(matcher.find()){
	            System.out.println(matcher.group(1));
	            vo.setBoardImage(matcher.group(1));
	        }
		 vo.setMemId((String)session.getAttribute("sid"));
		service.insertBoard(vo);
		System.out.println(vo.getBoardImage());
		return "redirect:/list";
	}
	@RequestMapping("/updatePost")
	public String updatePost(BoardVO vo,@RequestParam("smartEditor") String content,HttpSession session) {
		vo.setBoardContext(content);
		Pattern pattern = Pattern.compile("<img[^>]*src=[\"']?([^>\"']+)[\"']?[^>]*>");
		 Matcher matcher = pattern.matcher(content);
		 while(matcher.find()){
	            System.out.println(matcher.group(1));
	            vo.setBoardImage(matcher.group(1));
	        }
		 vo.setMemId((String)session.getAttribute("sid"));
		service.modifyBoard(vo);
		return "redirect:/list";
	}
	@RequestMapping("/boardDelete")
	public String deleteBoard(@RequestParam("boardNo") int boardNo) {
			service.deleteBoard(boardNo);
		
		return "redirect:/list";
	}
	@RequestMapping("/writeReview")
	public String insertReview() {
		
		return "board/reviewInsert";
	}
	@RequestMapping("/saveReview")
	public String saveReview(ReviewVO vo,@RequestParam("smartEditor") String content) {
		vo.setRevText(content);
		Pattern pattern = Pattern.compile("<img[^>]*src=[\"']?([^>\"']+)[\"']?[^>]*>");
		 Matcher matcher = pattern.matcher(content);
		 while(matcher.find()){
	            System.out.println(matcher.group(1));
	            vo.setRevImage(matcher.group(1));
	        }
		service.insertReview(vo);
		
		return "redirect:/list";
	}
	@RequestMapping("/readView")
	public String boardReadView(BoardVO vo,Model model) {
		
		model.addAttribute("read",service.getPage(vo.getBoardNo()));
		service.updateHit(vo.getBoardNo());
		return "board/boardReadView";
	}
	@RequestMapping("/updateBoard")
	public String updateBoard(BoardVO vo,Model model) {
		model.addAttribute("read",service.getPage(vo.getBoardNo()));
		return "board/boardupdate";
	}
	
	@RequestMapping("/singleImageUpload")
	public String simpleImageUpload(HttpServletRequest request,SmarteditorVO vo) {
		String callback=vo.getCallback();
		String callback_func=vo.getCallback_func();
		 String return3="";
		 String name = "";
		 try {
			if(vo.getFiledata() != null && vo.getFiledata().getOriginalFilename() != null && !vo.getFiledata().getOriginalFilename().equals("")) {
	             // 기존 상단 코드를 막고 하단코드를 이용
	            name = vo.getFiledata().getOriginalFilename().substring(vo.getFiledata().getOriginalFilename().lastIndexOf(File.separator)+1);
				String filename_ext = name.substring(name.lastIndexOf(".")+1);
				filename_ext = filename_ext.toLowerCase();
			   	String[] allow_file = {"jpg","png","bmp","gif"};
			   	int cnt = 0;
			   	for(int i=0; i<allow_file.length; i++) {
			   		if(filename_ext.equals(allow_file[i])){
			   			cnt++;
			   		}
			   	}
			   	if(cnt == 0) {
			   		return3 = "&errstr="+name;
			   	} else {
			   		//파일 기본경로
		    		String dftFilePath = request.getSession().getServletContext().getRealPath("/");
		    		//파일 기본경로 _ 상세경로
		    		String filePath = dftFilePath + "resources"+ File.separator + "editor" + File.separator +"upload" + File.separator;
		    		File file = new File(filePath);
		    		if(!file.exists()) {
		    			file.mkdirs();
		    		}
		    		String realFileNm = "";
		    		SimpleDateFormat formatter = new SimpleDateFormat("yyyyMMddHHmmss");
					String today= formatter.format(new java.util.Date());
					realFileNm = today+UUID.randomUUID().toString() + name.substring(name.lastIndexOf("."));
					String rlFileNm = filePath + realFileNm;
					///////////////// 서버에 파일쓰기 /////////////////
					vo.getFiledata().transferTo(new File(rlFileNm));
					///////////////// 서버에 파일쓰기 /////////////////
		    		return3 += "&bNewLine=true";
		    		return3 += "&sFileName="+ name;
		    		return3 += "&sFileURL=/resources/editor/upload/"+realFileNm;
			   	}
			}else {
				  return3 += "&errstr=error";
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		 return "redirect:"+callback+callback_func+return3;
	}
	@RequestMapping("/MultiImageUpload")
	public void MultiImageUpload(HttpServletRequest request,HttpServletResponse response,Model model)  {		
		try {
			 //파일정보
			 String sFileInfo = "";
			 //파일명을 받는다 - 일반 원본파일명
			 String filename = request.getHeader("file-name");
			 //파일 확장자
			 String filename_ext = filename.substring(filename.lastIndexOf(".")+1);
			 //확장자를소문자로 변경
			 filename_ext = filename_ext.toLowerCase();
			 	
			 //이미지 검증 배열변수
			 String[] allow_file = {"jpg","png","bmp","gif"};

			 //돌리면서 확장자가 이미지인지 
			 int cnt = 0;
			 for(int i=0; i<allow_file.length; i++) {
			 	if(filename_ext.equals(allow_file[i])){
			 		cnt++;
			 	}
			 }

			 //이미지가 아님
			 if(cnt == 0) {
				 PrintWriter print = response.getWriter();
				 print.print("NOTALLOW_"+filename);
				 print.flush();
				 print.close();
			 } else {
			 //이미지이므로 신규 파일로 디렉토리 설정 및 업로드	
			 //파일 기본경로
				 
				 String dftFilePath = request.getSession().getServletContext().getRealPath("/");
			 //파일 기본경로 _ 상세경로
			 String filePath = dftFilePath + "resource" + File.separator +"photo_upload" + File.separator;
			 String realFileNm = "";
			 File file = new File(filePath);
			 if(!file.exists()) {
				 file.mkdirs();
			 }
			 realFileNm = filename.substring(filename.lastIndexOf("."));
			 String rlFileNm = filePath + filename;
			 model.addAttribute("rlFileNm", rlFileNm);
			 ///////////////// 서버에 파일쓰기 ///////////////// 
			 InputStream is = request.getInputStream();
			 OutputStream os=new FileOutputStream(rlFileNm);
			 int numRead;
			 byte b[] = new byte[Integer.parseInt(request.getHeader("file-size"))];
			 while((numRead = is.read(b,0,b.length)) != -1){
			 	os.write(b,0,numRead);
			 }
			 if(is != null) {
			 	is.close();
			 }
			 os.flush();
			 os.close();
			 ///////////////// 서버에 파일쓰기 /////////////////
			 // 정보 출력
			 sFileInfo += "&bNewLine=true";
			 // img 태그의 title 속성을 원본파일명으로 적용시켜주기 위함
			 sFileInfo += "&sFileName="+ filename;
			 sFileInfo += "&sFileURL="+"/resource/photo_upload/"+filename;
			 PrintWriter print = response.getWriter();
			 print.print(sFileInfo);
			 print.flush();
			 print.close();
			 }	
		} catch (Exception e) {
			e.printStackTrace();
		}
}
}
