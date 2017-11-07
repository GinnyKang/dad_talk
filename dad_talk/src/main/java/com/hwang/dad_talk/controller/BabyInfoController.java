package com.hwang.dad_talk.controller;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/babyinfo/*")
public class BabyInfoController {
	private static final Logger logger = LoggerFactory.getLogger(BabyInfoController.class);
	
	@RequestMapping(value="/info.do", method= RequestMethod.GET)
	public ModelAndView babyinfo(@RequestParam String act, HttpSession session, HttpServletRequest request) {
		String sessionID = (String) session.getAttribute("sessionID");
		System.out.println("These have a session? " + session.getAttribute("sessionID"));
		ModelAndView mav = new ModelAndView();
		
		String url = "babyinfo/";
		if(act != null) {
			if(act.equals("pgn"))
			{
				mav.setViewName(url + act);
			} else if(act.equals("cb")) {
				mav.setViewName(url + act);
			} else if(act.equals("if")) {
				mav.setViewName(url + act);
			} else if(act.equals("play")) {
				mav.setViewName(url + act);
			} else if (act.equals("pl")) {
				mav.setViewName(url + act);
			}
		}
		logger.info("babyinfo : " + act + " called");
		return mav;
		
	}

}
