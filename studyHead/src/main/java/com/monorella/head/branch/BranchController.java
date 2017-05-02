package com.monorella.head.branch;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.monorella.head.dto.Branch;

@Controller
public class BranchController {
	
	@Autowired
	BranchDao branchDao;
	
	// 지점 리스트
	@RequestMapping(value="/branch/branch_list", method=RequestMethod.GET)
	public String selectBranchList(Model model
            , @RequestParam(value="currentPage", required=false, defaultValue="1") int currentPage){
		int totalCount = branchDao.selectBranchCount();
		int pagePerRow = 10;
		int lastPage = (int)(Math.ceil(totalCount / pagePerRow));
		List<Branch> list = branchDao.selectBranchList(currentPage, pagePerRow);
		model.addAttribute("currentPage", currentPage);
		model.addAttribute("totalCount", totalCount);
		model.addAttribute("lastPage", lastPage);
		model.addAttribute("list", list);
		System.out.println("member_list 요청");
		return "branch/branch_form";
	}
	
	// 지점 등록 처리
	@RequestMapping(value="/branch/branch_insert_pro", method=RequestMethod.POST)
	public String insertBranch(Branch branch){
		System.out.println("BranchController-> inputBranch()-> Branch: "+branch);
		branchDao.insertBranch(branch);
		return "branch/branch_form";
	}
	
	// 지점 폼 요청
	@RequestMapping(value="/branch", method=RequestMethod.GET)
	public String branchForm(){
		System.out.println("BranchController-> branchForm()");
		return "branch/branch_form";
	}
}
