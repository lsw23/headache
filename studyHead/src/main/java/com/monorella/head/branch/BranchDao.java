package com.monorella.head.branch;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.monorella.head.dto.Branch;

@Repository
public class BranchDao {

	@Autowired
	SqlSessionTemplate sqlSessionTemplate;
	
	// 등록된 지점 목록
	public List<Branch> selectBranchList(int currentPage, int pagePerRow){
		System.out.println("BranchDao-> selectBranchList()-> currentPage: "+currentPage+"pagePerRow: "+pagePerRow);
		Map<String, Integer> map = new HashMap<String, Integer>();
		map.put("beginRow", (currentPage-1)*pagePerRow);
		map.put("pagePerRow", pagePerRow);
		return sqlSessionTemplate.selectList("com.monorella.head.branch.BranchMapper.selectBranchList", map);
	}
	// 등록 된 지점 수
	public int selectBranchCount() {
		System.out.println("BranchDao-> selectBranchCount()");
		return sqlSessionTemplate.selectOne("com.monorella.head.branch.BranchMapper.selectBranchCount");
	}
	
	// 지점 등록
	public int insertBranch(Branch branch){
		System.out.println("BranchDao-> insertBranch-> Branch: "+branch);
		return sqlSessionTemplate.insert("com.monorella.head.branch.BranchMapper.insertBranch", branch);
	}
}
