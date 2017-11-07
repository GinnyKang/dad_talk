package com.hwang.dad_talk.controller;

import java.util.HashMap;
import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.json.JSONObject;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.hwang.dad_talk.service.MemoService;

@RestController
@RequestMapping("/memo/*")
public class MemoController {
	@Inject
	@Autowired
	private MemoService service;

	private static final Logger logger = LoggerFactory.getLogger(LoginController.class);
	
	@RequestMapping("/getMemo.do")
	public List getMemo(@RequestParam String user_id) throws Exception {
		return service.selectMemo(user_id);

	}

	@RequestMapping(value = "/deleteMemo.do")
	public ModelAndView deleteMemo(@RequestParam int num, HttpSession session, HttpServletRequest request) {
		ModelAndView mav = new ModelAndView();
		try {
			service.deleteMemo(num);
			mav.setViewName("redirect:/index.do");
		} catch (Exception e) {
			System.out.println("메모 삭제 문제");
		}
		return mav;

	}

	@RequestMapping(value = "/updateMemo.do")
	public ModelAndView updateMemo(@RequestParam int num, @RequestParam String title,
			@RequestParam String content, HttpSession session, HttpServletRequest request) {
		HashMap<String, Object> map = new HashMap<>();
		
		ModelAndView mav = new ModelAndView();
		try {
			String sessionID = (String) session.getAttribute("sessionID");
			
			map.put("num", num);
			map.put("title", title);
			map.put("user_id", sessionID);
			map.put("content", content);
			service.updateMemo(map);
			mav.setViewName("redirect:/index.do");
		}catch (Exception e) {
			logger.debug("Error code : " + e);
			mav.setViewName("redirect:/index.do");
		}
		

		return mav;

	}

	@RequestMapping(value = "/insertMemo.do")
	public ModelAndView insertMemo(@RequestParam String title, @RequestParam String content, HttpSession session, HttpServletRequest request) {
		HashMap<String, Object> map = new HashMap<>();
		ModelAndView mav = new ModelAndView();
		try {
			String sessionID = (String) session.getAttribute("sessionID");
			map.put("title", title);
			map.put("user_id", sessionID);
			map.put("content", content);
			service.insertMemo(map);
			mav.setViewName("redirect:/index.do");
		}catch(Exception e) {
			logger.debug("Error code : " + e);
			mav.setViewName("redirect:/index.do");
			
		}


		return mav;

	}
	@RequestMapping(value = "/selectMemoDetails.do")
	public List selectMemoDetails(@RequestParam int num) throws Exception {
		return service.selectMemoDetails(num);
		
	}

}
