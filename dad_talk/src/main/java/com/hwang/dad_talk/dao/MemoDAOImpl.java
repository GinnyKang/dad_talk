package com.hwang.dad_talk.dao;

import java.util.HashMap;
import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.hwang.dad_talk.dto.MemoVO;
@Repository
public class MemoDAOImpl implements MemoDAO {
	private static final Logger looger = LoggerFactory.getLogger(MemoDAOImpl.class);
	
	@Inject
	@Autowired
	private SqlSession sqlSession;
	private static final String Namespace = "com.hwang.dad_talk.mapper.memoMapper";
	
	@Override
	public int insertMemo(HashMap<String, Object> params) {
		return sqlSession.insert(Namespace +".insertMemo", params);
	}

	@Override
	public int updateMemo(HashMap<String, Object> params) {
		return sqlSession.update(Namespace +".updateMemo", params);
	}

	@Override
	public int deleteMemo(int num) {
		return sqlSession.delete(Namespace +".deleteMemo", num);
	}

	@Override
	public List<MemoVO> selectMemo(String user_id) throws Exception {
		return sqlSession.selectList(Namespace + ".selectMemo", user_id);
	}

	@Override
	public List<MemoVO> selectMemoDetails(int num) throws Exception {
		return sqlSession.selectList(Namespace +".selectMemoDetails", num); 
	}

}
