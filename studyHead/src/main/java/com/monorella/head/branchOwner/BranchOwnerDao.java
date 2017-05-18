package com.monorella.head.branchOwner;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.monorella.head.dto.BranchOwner;

@Repository
public class BranchOwnerDao {

	@Autowired
	SqlSessionTemplate sqlSessionTemplate; 
	
	//사업자 목록
	public List<BranchOwner> SelectBranchOwnerList(){
		System.out.println("BranchDao-> SelectBranchOwnerList()");
		return sqlSessionTemplate.selectList("com.monorella.head.branchOwner.BranchOwnerMapper.SelectBranchOwnerList");
	}
	
	//사업자 등록
	public int insertBranchOwner(BranchOwner branchOwner){
		System.out.println("BranchDao-> insertBranchOwner-> branchOwner: "+branchOwner);
		return sqlSessionTemplate.insert("com.monorella.head.branchOwner.BranchOwnerMapper.insertBranchOwner", branchOwner);
	}
}
