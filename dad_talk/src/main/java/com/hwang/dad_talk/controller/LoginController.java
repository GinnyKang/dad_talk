package com.hwang.dad_talk.controller;


import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Date;
import java.text.ParseException;

import java.util.HashMap;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.mindrot.jbcrypt.BCrypt;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import org.springframework.web.servlet.ModelAndView;

import com.hwang.dad_talk.service.MemberService;
import com.hwang.dad_talk.service.MemberServiceImpl;

@Controller 
@RequestMapping("/user/*")

public class LoginController {
	@Inject
	private MemberService service;
	
	@Autowired
	private MemberServiceImpl MemberServiceImpl;
	
	@Autowired
	private HttpServletResponse response;
	
	@Autowired
	private HttpSession session;
	
	
	private static final Logger logger = LoggerFactory.getLogger(LoginController.class);
	
	// If you execute login method, this method check your id and password validity.
	@RequestMapping(value = "/login.do")
	public ModelAndView login(@RequestParam String user_id, @RequestParam String password, HttpServletRequest request, HttpSession session, HttpServletResponse response) throws IOException {
		// Check your ID and password is validity?
		HashMap<String, Object> searchInfo = new HashMap<>();
		ModelAndView mav = new ModelAndView();
		String url = "";
		try {
			// Search User Information
			searchInfo = MemberServiceImpl.selectOne(user_id);
			
			
			// Is result true, this logic send the data from result view
			if(searchInfo.get("user_id").equals(user_id)) {
				String passwordResult = searchInfo.get("password").toString();
				String userIDResult = searchInfo.get("user_id").toString();
				String nameResult = searchInfo.get("name").toString();
				
				// Is your password correctly?
				if(BCrypt.checkpw(password, passwordResult)) {
					url = "redirect:/index.do";
					session.setAttribute("sessionID", userIDResult);
					session.setAttribute("sessionName", nameResult);
					System.out.println("What these session?" + session.getAttribute("sessionID"));
					 mav.setViewName(url);

					
				} 
				else {
					response.setContentType("text/html; charset=UTF-8");
					PrintWriter out = response.getWriter();
		            out.println("<script>alert('로그인 정보를 확인해주세요.'); history.go(-1);</script>");
		            out.flush();
//					url = "login_result";
//					mav.setViewName(url);
//					mav.addObject("msg", "failure");
				}

			}
			else {
				url = "redirect:/index.do";
				response.setContentType("text/html; charset=UTF-8");
				PrintWriter out = response.getWriter();
	            out.println("<script>alert('로그인 정보를 확인해주세요.'); history.go(-1);</script>");
	            out.flush();
	            mav.setViewName(url);
			}
			
		}
		catch (Exception e) {
			url = "redirect:/index.do";
			response.setContentType("text/html; charset=UTF-8");
			PrintWriter out = response.getWriter();
            out.println("<script>alert('로그인 정보를 확인해주세요.'); history.go(-1);</script>");
            out.flush();
            mav.setViewName(url);
		}
		return mav;
	
		
	}
	
	@RequestMapping(value = "/joinMember.do")
	public ModelAndView register(@RequestParam String user_id, 
			@RequestParam String name,
			@RequestParam String password,
			@RequestParam String passwordCheck,
			@RequestParam String birthday,
			@RequestParam String baby_name,
			@RequestParam String baby_birthday,
			@RequestParam String baby_gender) {
			ModelAndView mav = new ModelAndView();
			try {
				// Send the register data
				HashMap<String, Object> map = new HashMap<>();
				String org_pass = password;
				// This method salt the plain password to crypt string.
				String passwordHashed = BCrypt.hashpw(org_pass, BCrypt.gensalt(10));
				map.put("user_id", user_id);
				map.put("name", name);
				map.put("password", passwordHashed);
				map.put("birthday", birthday);
				map.put("baby_name", baby_name);
				map.put("baby_birthday", baby_birthday);
				map.put("baby_gender", baby_gender);
				MemberServiceImpl.insertData(map);
				
				// and send the success or failure result to register view
				mav.setViewName("register_result");
				mav.addObject("msg", "success");
				mav.addObject("name", name);
				return mav;
			} catch(Exception e) {
				mav.setViewName("register_result");
				mav.addObject("msg", "failure");
				return mav;
			}


		
	}
	
	@RequestMapping("/logout.do")
	public String logout(HttpServletRequest request, HttpSession session) {
		String nowPage = request.getContextPath();
		nowPage += request.getRequestURL();
		System.out.println(nowPage);
		session.invalidate();
		return "redirect:/index.do";
		
	}
	

	@RequestMapping(value = "/profile.do", method = RequestMethod.GET)
	public ModelAndView profile(HttpSession session, HttpServletRequest request) throws ParseException {
		ModelAndView mav = new ModelAndView();
		HashMap<String, Object> searchInfo = new HashMap<>();
		String gender;

		
		// IF don't have a session, redirect main page.
		// and If you have a session, profile page show your description
		String sessionID = (String) session.getAttribute("sessionID");
		if(sessionID != null) {
			searchInfo = MemberServiceImpl.selectOne(sessionID);
			if(searchInfo.get("baby_gender").equals("0")) {
				gender = "남자";
			}else {
				gender = "여자";
			}
			
			session.setAttribute("ID", searchInfo.get("user_id"));
			session.setAttribute("Name", searchInfo.get("name"));
			session.setAttribute("Birthday", searchInfo.get("birthday"));
			session.setAttribute("BabyName", searchInfo.get("baby_name"));
			session.setAttribute("BabyBirthday", searchInfo.get("baby_birthday"));
			session.setAttribute("BabyGender", gender);
			mav.setViewName("mypage");
			
			
		}else {
			mav.setViewName("redirect:/index.do");
		}
		System.out.println("These have a session? " + session.getAttribute("sessionID"));
		return mav;
	}
	
}
