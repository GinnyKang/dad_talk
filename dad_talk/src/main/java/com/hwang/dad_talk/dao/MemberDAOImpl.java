package com.hwang.dad_talk.dao;

import java.util.HashMap;
import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.hwang.dad_talk.dto.MemberVO;

@Repository
public class MemberDAOImpl implements MemberDAO {
	private static final Logger logger = LoggerFactory.getLogger(MemberDAO.class);
	@Inject
	@Autowired
	private SqlSession sqlSession;
	private static final String Namespace = "com.hwang.dad_talk.mapper.memberMapper";
	
	@Override
	public List<MemberVO> selectMember() throws Exception {
		return sqlSession.selectList(Namespace+".selectMember");
	}

	@Override
	public int insertData(HashMap<String, Object> params) {
		return sqlSession.insert(Namespace+".insertData", params);
	}
	
	@Override
	public int updateData(HashMap<String, Object> params) {
		return sqlSession.update(Namespace+".updateData", params);
	}

	@Override
	public int deleteMember(String id) {
		return 0;
	}

	@Override
	public HashMap<String, Object> selectOne(String id) {
		return sqlSession.selectOne(Namespace+".selectOne", id);
	}

	@Override
	public boolean loginCheck(MemberVO vo) {
		String name = sqlSession.selectOne(Namespace+".loginCheck", vo);
		return (name == null) ? false : true;
	}

	@Override
	public void logout(HttpSession session) {
		
	}

	@Override
	public MemberVO viewMember(MemberVO vo) {
		return sqlSession.selectOne(Namespace+".viewMember", vo);
	}




	



}
