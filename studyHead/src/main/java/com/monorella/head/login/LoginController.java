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
	//���� 2 ��û(���ǿ���Ȯ��)
		@RequestMapping(value = "/login/NewFile2", method = RequestMethod.GET)
		public String login2() {
			System.out.println("LoginController-> login2()");
			return "/login/NewFile2";
		}
	
	//�α��� ó��
	@RequestMapping(value = "/login/login_pro", method = RequestMethod.POST)
	public String loginPro(HeadManager hm, HttpSession session) {
		System.out.println("LoginController-> loginPro() start");
		HeadManager headManager = loginDao.loginPro(hm);
		System.out.println(headManager);
		if(headManager == null){
			System.out.println("�ش� ���̵� �������� �ʽ��ϴ�.");
			return null;
		} else {
			System.out.println("���̵� ����, ���̵� ��й�ȣ Ȯ��");
			session.setAttribute("head_id", hm.getHead_id());
			session.setAttribute("head_pw", hm.getHead_pw());
			session.setAttribute("head_name", hm.getHead_name());
			session.setAttribute("head_manager", hm.getHead_manager());
			return "/login/NewFile";
		}
	}
	//�α��� �� ��û
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String loginForm() {
		System.out.println("LoginController-> loginForm()");
		return "/login/login_form";
	}
	
}
