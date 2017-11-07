package com.hwang.dad_talk.dao;

import java.util.List;

import com.hwang.dad_talk.dto.BlogVO;

public interface BlogDAO {
	public List<BlogVO> selectMemo() throws Exception; 
}
