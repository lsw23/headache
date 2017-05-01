package com.monorella.head.login;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.monorella.head.dto.HeadManager;

@Repository
public class LoginDao {
	
	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;
	
	public HeadManager loginPro(HeadManager hm){
		System.out.println("LoginDao-> loginPro()-> HeadManager: "+hm);
		return sqlSessionTemplate.selectOne("com.monorella.head.login.LoginMapper.LoginPro", hm);
	}
}
