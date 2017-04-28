package com.monorella.head.login;

import java.util.HashMap;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.monorella.head.dto.Login;

@Repository
public class LoginDao {
	
	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;
	
	public Login loginPro(String head_id, String head_pw){
		System.out.println("LoginDao-> loginPro()-> head_id: "+head_id+", head_pw: "+head_pw);
		Map<String, String> map = new HashMap<String, String>();
		map.put("head_id", head_id);
		map.put("head_pw", head_pw);
		System.out.println(map);
		return sqlSessionTemplate.selectOne("com.monorella.head.login.LoginMapper.LoginPro", map);
	}
}
