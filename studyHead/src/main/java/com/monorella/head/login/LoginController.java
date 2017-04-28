package com.monorella.head.login;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.monorella.head.dto.Login;

/**
 * Handles requests for the application home page.
 */
@Controller
public class LoginController {
	
	@Autowired
	LoginDao loginDao;

	@RequestMapping(value = "/login/login_pro", method = RequestMethod.POST)
	public String loginPro(@RequestParam(value="head_id") String head_id, @RequestParam(value="head_pw") String head_pw, HttpSession session) {
		System.out.println("LoginController-> loginPro() start");
		Login login = loginDao.loginPro(head_id, head_pw);
		System.out.println(login);
		if(login == null){
			System.out.println("로그인 실패");
			return null;
		} else {
			System.out.println("로그인 성공");
			return "redirect:/login/NewFile";
		}
	}
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String loginForm() {
		
		return "/login/login_form";
	}
	
}
