package com.hwang.dad_talk.controller;

import java.util.List;

import javax.inject.Inject;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.hwang.dad_talk.service.BlogService;
import com.hwang.dad_talk.service.BlogServiceImpl;

@RestController
@RequestMapping("/blog/*")

public class BlogController {

	@Inject
	@Autowired
	private BlogService service;
	
	@Autowired
	private BlogServiceImpl blogServiceImpl;
	
	@RequestMapping("/getBlog.do")
	public List getBlog() throws Exception {
		return blogServiceImpl.selectBlog();
	}
	
}
