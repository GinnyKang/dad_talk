package com.hwang.dad_talk.dao;

import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpSession;

import com.hwang.dad_talk.dto.MemberVO;

public interface MemberDAO {
	public List<MemberVO> selectMember() throws Exception;
	public int insertData(HashMap<String, Object> params);
	public int updateData(HashMap<String, Object> params);
	public int deleteMember(String id);
	public HashMap<String, Object> selectOne(String id);
	
	public boolean loginCheck(MemberVO vo);
	public MemberVO viewMember(MemberVO vo);
	public void logout(HttpSession session);
}
