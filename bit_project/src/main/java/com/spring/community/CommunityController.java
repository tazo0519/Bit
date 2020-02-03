package com.spring.community;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class CommunityController {
	
	@Autowired
	private CommunityService communityService;

	@RequestMapping(value = "/main.ma", method = RequestMethod.GET)
	public String main(Model model) {

		return "main";
	}

	@RequestMapping(value = "/about.ma", method = RequestMethod.GET)
	public String about(Model model) {

		return "about";
	}
	@RequestMapping(value = "/community.co", method = RequestMethod.GET)
	public String community(HttpServletRequest request, Model model) throws Exception{		

		return "community";
	}
	
	//닉네임 검색
	@RequestMapping(value = "/community_user.co", method = RequestMethod.GET)
	public String community_user(HttpServletRequest request, Model model) throws Exception {
		String nickname = request.getParameter("nickname");
		
		model.addAttribute("nickname", nickname);
		System.out.println("받아온 닉네임 : " + nickname);
		
		return "community_user";
	}
	
	//게시글 상세보기
	@RequestMapping(value = "/community_detail.co", method = RequestMethod.GET)
	public String community_detail(HttpServletRequest request, Model model) throws Exception {
		CommunityVO cmvo = new CommunityVO();
		
		int board_num = Integer.parseInt(request.getParameter("board_num"));
//		int currentPage = Integer.parseInt(request.getParameter("pageNum"));
		
//		System.out.println("num : "  + num + "currentpage : " + currentPage);
		System.out.println("board_num : "  + board_num);
		
		cmvo = communityService.detailCommunity(board_num);
		communityService.updateCount(board_num);
		
		int cocount = communityService.getCommentCount(board_num);
		
		model.addAttribute("cocount", cocount);
//		model.addAttribute("pageNum", currentPage);
		model.addAttribute("cmvo", cmvo);

		System.out.println("board_num" + cmvo.getBoard_num());
		return "community_detail";
	}
	

}
