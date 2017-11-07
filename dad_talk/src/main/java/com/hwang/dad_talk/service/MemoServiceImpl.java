package com.hwang.dad_talk.service;

import java.util.HashMap;
import java.util.List;

import javax.inject.Inject;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hwang.dad_talk.dao.MemoDAO;
import com.hwang.dad_talk.dto.MemoVO;
@Service
public class MemoServiceImpl implements MemoService{

	@Inject
	@Autowired
	private MemoDAO dao;
	


	@Override
	public int updateMemo(HashMap<String, Object> params) {
		return dao.updateMemo(params);
	}

	@Override
	public int deleteMemo(int num) {
		return dao.deleteMemo(num);
	}

	@Override
	public List<MemoVO> selectMemo(String user_id) throws Exception {
		return dao.selectMemo(user_id);
	}

	@Override
	public int insertMemo(HashMap<String, Object> params) {
		return dao.insertMemo(params);
	}

	@Override
	public List<MemoVO> selectMemoDetails(int num) throws Exception {
		return dao.selectMemoDetails(num);
	}


}
