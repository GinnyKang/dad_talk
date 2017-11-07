package com.hwang.dad_talk.controller;

import java.util.HashMap;
import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.hwang.dad_talk.dto.MemberVO;
import com.hwang.dad_talk.service.MemberService;
import com.hwang.dad_talk.service.MemberServiceImpl;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	@Inject
	private MemberService service;
	
	@Autowired
	private MemberServiceImpl MemberServiceImpl;

	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/index.do", method = RequestMethod.GET)
	public String home(HttpSession session, HttpServletRequest request) {
		String sessionID = (String) session.getAttribute("sessionID");
		System.out.println("These have a session? " + session.getAttribute("sessionID"));
		return "index";
	}
	
	
	
	@ResponseBody
	@RequestMapping(value="/sessionCheck.do", method= RequestMethod.GET)
	public HashMap<String, Object> sessionCheck(HttpSession session, HttpServletRequest request){
		HashMap<String, Object> map = new HashMap<>();
		// 1. Check the Browser is exist session?
		if(session.getAttribute("sessionID") != null) {
			String sessionID = (String) session.getAttribute("sessionID");
			String sessionName = (String) session.getAttribute("sessionName");
			map.put("sessionID", sessionID);
			map.put("sessionName", sessionName);
			map.put("result", "true");
		}
		else {
			map.put("result", "false");
		}
		return map;
		
	}
	
	
	@RequestMapping(value="/dadtalk.do", method= RequestMethod.GET)
	public String dadtalk(Model model) {
		logger.info("dadtalk called");
		
		return "dadtalk";
		
	}
	
	@RequestMapping(value="/login.do", method= RequestMethod.GET)
	public String login(Model model) {
		logger.info("login called");
		
		return "login";
		
	}
	
	@RequestMapping(value="/register.do", method= RequestMethod.GET)
	public String register( Model model) throws Exception {
		
		logger.info("register called");
		
		List<MemberVO> memberList = service.selectMember();
		model.addAttribute("memberList", memberList);
		return "regist";
		
	}
	

	
	

	
}
