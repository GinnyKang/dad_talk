package com.hwang.dad_talk;

import java.util.HashMap;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.mindrot.jbcrypt.BCrypt;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.hwang.dad_talk.common.Constant;
import com.hwang.dad_talk.dao.MemberDAO;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = {"file:src/main/webapp/WEB-INF/spring/**/action-context.xml"})

public class MyBatisTest {
	@Inject
	private SqlSessionFactory sqlFactory;
	
	@Inject
	@Autowired
	private MemberDAO dao;
	
	private static final String Namespace = "com.hwang.dad_talk.mapper.memberMapper";
	
	@Test 
	public void testFactory() {
		System.out.println("\n >>>>>>>> sqlFactory 출력 : " + sqlFactory);
		
	}
	
	@Test
	public void testSession() throws Exception {
		try(SqlSession session = sqlFactory.openSession()){
			String user_id = "destiny081a1";
			System.out.println(">>>>>>>> Session 출력 : " + session + " \n");
			session.selectList(Namespace+".selectMember");
			if(checkID(user_id)) {
				System.out.println("These ID already used. Try another ID");
			}
			else {
				joinMember(user_id, "test1sdfsdfsd!", "1995-08-10", "황성욱", "2017-09-10", 0, "황성욱");
			}
			
		}catch(Exception e) {
			e.printStackTrace();
		}
	}
	
	public boolean checkID(String user_id) {
		// If you have a ID, This logic reject your query.
		if(dao.selectOne(user_id) != null) {
			return true;
		} else {
			return false;
		}
	}
	
	public void joinMember(String user_id, String password, String birthday, String baby_name, String baby_birthday, int baby_gender, String name) {
	
		HashMap<String, Object> params = new HashMap<String, Object>();
		
		String org_pass = password;
		String passwordHashed = BCrypt.hashpw(org_pass, BCrypt.gensalt(10));
		params.put(Constant.User.USER_ID, user_id);
		params.put(Constant.User.PASSWORD, passwordHashed);
		params.put(Constant.User.BIRTHDAY, birthday);
		params.put(Constant.User.BABY_NAME, baby_name);
		params.put(Constant.User.BABY_BIRTHDAY, baby_birthday);
		params.put(Constant.User.BABY_GENDER, baby_gender);
		params.put(Constant.User.NAME, name);
		dao.insertData(params);
		boolean isValidPassword = BCrypt.checkpw(org_pass, passwordHashed);
		System.out.println("Is Password Valid? = " + isValidPassword);
		}
	
	
}
