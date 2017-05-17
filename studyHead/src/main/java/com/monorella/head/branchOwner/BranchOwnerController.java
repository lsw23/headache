package com.monorella.head.branchOwner;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class BranchOwnerController {
	
	@Autowired
	BranchOwnerDao branchOwnerDao;
	
	@RequestMapping(value="/barach_owner/branch_owner_form", method=RequestMethod.GET)
	public String branchOwnerForm(){
		System.out.println("BranchOwnerController-> branchOwnerForm()");
		return "/barach_owner/branch_owner_form";
	}
}
