package com.monorella.head.branch;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.monorella.head.dto.Branch;

@Controller
public class BranchController {
	
	@Autowired
	BranchDao branchDao;
	// 등록 처리
	@RequestMapping(value="/branch/branch_insert_pro", method=RequestMethod.GET)
	public String InputBranch(Branch branch){
		System.out.println("BranchController-> InputBranch()-> Branch: "+branch);
		branchDao.inputBranch(branch);
		return "branch/branch_form";
	}
	// 등록 폼
	@RequestMapping(value="/branch", method=RequestMethod.GET)
	public String branchForm(){
		System.out.println("BranchController-> branchForm()");
		return "branch/branch_form";
	}
}
