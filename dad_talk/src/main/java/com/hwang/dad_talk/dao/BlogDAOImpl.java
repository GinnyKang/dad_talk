package com.hwang.dad_talk.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.hwang.dad_talk.dto.BlogVO;

@Repository
public class BlogDAOImpl implements BlogDAO {
	private static final Logger logger = LoggerFactory.getLogger(BlogDAOImpl.class);
	
	@Inject
	@Autowired
	private SqlSession sqlSession;
	private static final String Namespace = "com.hwang.dad_talk.mapper.blogMapper";
	
	
	@Override
	public List<BlogVO> selectMemo() throws Exception {
		return sqlSession.selectList(Namespace+".selectBlog");
	}



}
