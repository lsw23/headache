package com.monorella.head.login;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.monorella.head.dto.HeadManager;

/**
 * Handles requests for the application home page.
 */
@Controller
public class LoginController {
	
	@Autowired
	LoginDao loginDao;
	//메인 2 요청(세션영역확인)
		@RequestMapping(value = "/login/NewFile2", method = RequestMethod.GET)
		public String login2() {
			System.out.println("LoginController-> login2()");
			return "/login/NewFile2";
		}
	
	//로그인 처리
	@RequestMapping(value = "/login/login_pro", method = RequestMethod.POST)
	public String loginPro(HeadManager hm, HttpSession session) {
		System.out.println("LoginController-> loginPro() start");
		HeadManager headManager = loginDao.loginPro(hm);
		System.out.println(headManager);
		if(headManager == null){
			System.out.println("해당 아이디가 존재하지 않습니다.");
			return null;
		} else {
			System.out.println("아이디 존재, 아이디 비밀번호 확인");
			session.setAttribute("head_id", hm.getHead_id());
			session.setAttribute("head_pw", hm.getHead_pw());
			session.setAttribute("head_name", hm.getHead_name());
			session.setAttribute("head_manager", hm.getHead_manager());
			return "/login/NewFile";
		}
	}
	//로그인 폼 요청
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String loginForm() {
		System.out.println("LoginController-> loginForm()");
		return "/login/login_form";
	}
	
}
