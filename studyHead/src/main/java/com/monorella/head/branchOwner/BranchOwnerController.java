package com.monorella.head.branchOwner;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.monorella.head.dto.BranchOwner;

@Controller
public class BranchOwnerController {
	
	@Autowired
	BranchOwnerDao branchOwnerDao;
	
	//지점 정보 삭제
	@RequestMapping(value="/branch_owner_delete_pro" , method = RequestMethod.GET)
	public String deleteBranchOwner(@RequestParam(value="branch_owner_cd") String branch_owner_cd){
		System.out.println("BranchOwnerController-> deleteBranchOwner()-> branch_owner_cd: "+branch_owner_cd);
		branchOwnerDao.deleteBranchOwner(branch_owner_cd);
		return "redirect:barach_owner/branch_owner_list";
	}
	
	//지점 정보 수정 처리
	@RequestMapping(value="/branch_owner_modify_pro" , method = RequestMethod.POST)
	public String modifyBranchOwner(BranchOwner branchOwner, Model model){
		System.out.println("BranchOwnerController-> ModifyBranchOwner()-> branchOwner: "+branchOwner);
		branchOwnerDao.modifyBranchOwner(branchOwner);
		return "redirect:/barach_owner/branch_owner_modify?branch_owner_cd="+branchOwner.getBranch_owner_cd();
	}
	
	//지점 정보 수정 폼, 단일 사업자 정보 조회
	@RequestMapping(value="/barach_owner/branch_owner_modify" , method = RequestMethod.GET)
	public String selectOneBranchOwner(@RequestParam(value="branch_owner_cd") String branch_owner_cd, Model model){
		//System.out.println("BranchOwnerController-> SelectOneBranchOwner()-> owner_num: "+owner_num);
		BranchOwner info = branchOwnerDao.selectOneBranchOwner(branch_owner_cd);
		//System.out.println("BranchOwnerController-> SelectOneBranchOwner()-> info: "+info);
		model.addAttribute("info", info);
		return "/barach_owner/branch_owner_modify";
	}
	
	//지점 목록
	@RequestMapping(value="/barach_owner/branch_owner_list" , method = RequestMethod.GET)
	public String selectBranchOwnerList(Model model){
		//System.out.println("BranchOwnerController-> selectBranchOwnerList()");
		List<BranchOwner> ownerList = branchOwnerDao.selectBranchOwnerList(); //이용중 회원 목록
		model.addAttribute("ownerList", ownerList);
		return "/barach_owner/branch_owner_list";
	}
	
	//지점 등록 요청
	@RequestMapping(value="/branch_owner_insert_pro", method=RequestMethod.POST)
	public String insertBranchOwner(BranchOwner branchOwner){
		//System.out.println("BranchController-> insertBranchOwner()-> BranchOwner: "+branchOwner.toString());
		branchOwnerDao.insertBranchOwner(branchOwner);
		return "/barach_owner/branch_owner_list";
	}
	
	//지점 등록 폼 요청
	@RequestMapping(value="/barach_owner/branch_owner_insert", method=RequestMethod.GET)
	public String branchOwnerForm(){
		//System.out.println("BranchOwnerController-> branchOwnerForm()");
		return "/barach_owner/branch_owner_insert";
	}
}
