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
	
	// test 지점 리스트
	@RequestMapping(value="/branch/branch_list", method=RequestMethod.GET)
	public String selectBranchList(Model model
            , @RequestParam(value="currentPage", required=false, defaultValue="1") int currentPage){
		int totalRowCount = branchDao.selectBranchCount();
		int pagePerRow = 10;
		List<Branch> list = branchDao.selectBranchList(currentPage, pagePerRow);
		/*int lastPage = totalRowCount/pagePerRow; 
	    if(totalRowCount%pagePerRow != 0) { 
	        lastPage++; 
	    } ==>>> 아래*/
		int lastPage = (int)(Math.ceil(totalRowCount / pagePerRow));
		/* 나누어 떨어지면 그냥 놔두고, 나머지가 있을 경우 올려서 +1과 같은 효과를 낸다. ceil() 함수는 올림 함수
		Math.round() 는 반올림이고 return 이 double 은 long으로 float 는 int 로 반환됩니다.
		Math.floor() 는 내림이고 return type은 double 이라 int 로 캐스팅이 필요합니다.
		Math.ceil() 은 올림이고 return type은 double 이라 int 로 캐스팅이 필요합니다.*/
		int countPage = 5;
	    int startPage = ((currentPage - 1)/5)*5+1;
	    int endPage = startPage + countPage-1;
	    int nextPage = ((currentPage - 1)/5)*5+5+1;
	    int previousPage = ((currentPage - 1)/5)*5-5+1;
	    
	    if(previousPage <= 0){
	    	previousPage = 1;
	    }
	    if(endPage > lastPage){
	    	endPage = lastPage;
	    }
	    if(nextPage > lastPage){
	    	nextPage = lastPage;
	    }
		model.addAttribute("currentPage", currentPage);
		model.addAttribute("totalRowCount", totalRowCount);
		model.addAttribute("lastPage", lastPage);
		model.addAttribute("list", list);
		model.addAttribute("startPage", startPage);
		model.addAttribute("endPage", endPage);
		model.addAttribute("nextPage", nextPage);
		model.addAttribute("previousPage", previousPage);
		return "/branch/branch_list";
	}
	
	// 지점 등록 처리
	@RequestMapping(value="/branch/branch_insert_pro", method=RequestMethod.POST)
	public String insertBranch(Branch branch){
		System.out.println("BranchController-> inputBranch()-> Branch: "+branch);
		branchDao.insertBranch(branch);
		return "/branch/branch_list";
	}
	
	// 지점 등록 폼 요청
	@RequestMapping(value="//branch/branch_form", method=RequestMethod.GET)
	public String branchForm(){
		System.out.println("BranchController-> branchForm()");
		return "branch/branch_form";
	}
	
	// 지점 홈
	@RequestMapping(value="/home", method=RequestMethod.GET)
	public String branchHomeForm(){
		System.out.println("BranchController-> branchHomeForm()");
		return "dashboard/home";
	}
}
