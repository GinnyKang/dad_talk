package com.hwang.dad_talk.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hwang.dad_talk.dao.BlogDAO;
import com.hwang.dad_talk.dto.BlogVO;
@Service
public class BlogServiceImpl implements BlogService {

	@Inject
	@Autowired
	private BlogDAO dao;
	
	@Override
	public List<BlogVO> selectBlog() throws Exception {
		return dao.selectMemo();
	}


}
