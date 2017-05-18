package com.monorella.head.branchOwner;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.monorella.head.dto.BranchOwner;

@Repository
public class BranchOwnerDao {

	@Autowired
	SqlSessionTemplate sqlSessionTemplate; 
	
	public int insertBranchOwner(BranchOwner branchOwner){
		System.out.println("BranchDao-> insertBranchOwner-> branchOwner: "+branchOwner);
		return sqlSessionTemplate.insert("com.monorella.head.branch.BranchOwnerMapper.insertBranchOwner", branchOwner);
	}
}
