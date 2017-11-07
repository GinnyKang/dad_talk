package com.hwang.dad_talk.service;

import java.util.HashMap;
import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hwang.dad_talk.common.Constant;
import com.hwang.dad_talk.dao.MemberDAO;
import com.hwang.dad_talk.dto.MemberVO;

@Service
public class MemberServiceImpl implements MemberService {

	@Inject
	@Autowired
	private MemberDAO dao;
	
	
	public String getData() {
		return "This is a dummy page.";
	}
	public List<MemberVO> selectMember() throws Exception {
		return dao.selectMember();
		
	}

	public boolean login(String user_id, String password) {
		HashMap<String, Object> result = dao.selectOne(user_id);
		if(result == null) {
			return false;
		} else {
			String oPwd = (String) result.get(Constant.User.PASSWORD);
			if(oPwd==null) {
				return false;
			}
			else {
				if(oPwd.equals(password)) {
					return true;
				}
				else {
					return false;
				}
			}
		}

		
	}
	
	public void memberUpdate(HashMap<String, Object> params) {
		if(params.get("password").equals(params.get("passwordCheck"))) {
			HashMap<String, Object> record = dao.selectOne((String) params.get(Constant.User.USER_ID));
			record.putAll(params);
			dao.updateData(record);
		}
	}
	@Override
	public void insertData(HashMap<String, Object> params) {
			dao.insertData(params);
	}
	
	@Override
	public HashMap<String, Object> selectOne(String id) {
		HashMap<String, Object> searchInfo = new HashMap<>();
		searchInfo = dao.selectOne(id);


		return searchInfo;
	}

	@Override
	public boolean loginCheck(MemberVO vo, HttpSession session) {
		boolean result = dao.loginCheck(vo);
		if (result) {
			MemberVO vo2 = viewMember(vo);
			session.setAttribute("user_id", vo2.getUser_id());
			session.setAttribute("name", vo2.getName());
		}
		return result;
	}
	@Override
	public MemberVO viewMember(MemberVO vo) {
		return dao.viewMember(vo);
	}

	
	@Override
	public void logout(HttpSession session) {
		session.invalidate();
	}




}
