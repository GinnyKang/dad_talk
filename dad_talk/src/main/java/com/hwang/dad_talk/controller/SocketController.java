package com.hwang.dad_talk.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class SocketController {

	@RequestMapping("/chat.do")
	public String viewChattingPage() {
		return "chatting/chat";
	}
	
}
