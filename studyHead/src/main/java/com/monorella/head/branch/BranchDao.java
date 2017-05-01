package com.monorella.head.branch;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.monorella.head.dto.Branch;

@Repository
public class BranchDao {

	@Autowired
	SqlSessionTemplate sqlSessionTemplate;
	
	public int inputBranch(Branch branch){
		System.out.println("BranchDao-> inputBranch-> Branch: "+branch);
		return sqlSessionTemplate.insert("com.monorella.head.branch.BranchMapper.inputBranch", branch);
	}
}
