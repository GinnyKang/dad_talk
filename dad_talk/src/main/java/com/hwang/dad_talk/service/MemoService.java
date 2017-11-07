package com.hwang.dad_talk.service;

import java.util.HashMap;
import java.util.List;

import com.hwang.dad_talk.dto.MemoVO;

public interface MemoService {
	public int insertMemo(HashMap<String, Object> params);
	public int updateMemo(HashMap<String, Object> params);
	public int deleteMemo(int num);
	public List<MemoVO> selectMemo(String user_id) throws Exception;
	public List<MemoVO> selectMemoDetails(int num) throws Exception;
}
