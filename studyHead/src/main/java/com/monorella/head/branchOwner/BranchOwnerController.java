package com.monorella.head.branchOwner;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.monorella.head.dto.BranchOwner;

@Controller
public class BranchOwnerController {
	
	@Autowired
	BranchOwnerDao branchOwnerDao;
	
	//지점 목록
	@RequestMapping(value="/barach_owner/branch_owner_list" , method = RequestMethod.GET)
	public String SelectBranchOwnerList(Model model){
		List<BranchOwner> ownerList = branchOwnerDao.SelectBranchOwnerList(); //이용중 회원 목록
		model.addAttribute("ownerList", ownerList);
		return "/barach_owner/branch_owner_list";
	}
	
	//지점 등록 요청
	@RequestMapping(value="/branch_owner_insert_pro", method=RequestMethod.POST)
	public String insertBranchOwner(BranchOwner branchOwner){
		System.out.println("BranchController-> insertBranchOwner()-> BranchOwner: "+branchOwner.toString());
		branchOwnerDao.insertBranchOwner(branchOwner);
		return "/barach_owner/branch_owner_form";
	}
	
	//지점 등록 폼 요청
	@RequestMapping(value="/barach_owner/branch_owner_form", method=RequestMethod.GET)
	public String branchOwnerForm(){
		System.out.println("BranchOwnerController-> branchOwnerForm()");
		return "/barach_owner/branch_owner_form";
	}
}
