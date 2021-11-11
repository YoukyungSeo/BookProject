package com.sist.web;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import com.sist.dao.*;
import java.util.*;
import com.sist.vo.*;
@Controller
public class MainController {
	@Autowired
	private BookDAO dao;
	
	@RequestMapping("main/main.do")
	public String main_main(Model model)
	{
		// 카테고리 리스트
		List<String> cList=dao.bookCategory();
		// 최신순 리스트
		List<BookVO> plist=dao.bookPubListData();
		// 평점순 리스트
		List<BookVO> slist=dao.bookScoListData();
		
		model.addAttribute("cList",cList);
		model.addAttribute("plist",plist);
		model.addAttribute("slist",slist);
		
		model.addAttribute("main_jsp","../main/home.jsp");
		return "main/main";
	}
	
}
