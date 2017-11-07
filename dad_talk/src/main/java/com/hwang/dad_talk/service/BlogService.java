package com.hwang.dad_talk.service;

import java.util.List;

import com.hwang.dad_talk.dto.BlogVO;

public interface BlogService {
		public List<BlogVO> selectBlog() throws Exception;
}
