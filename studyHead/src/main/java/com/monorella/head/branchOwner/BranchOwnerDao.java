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
	
	//사업자 정보 삭제 처리
	public int deleteBranchOwner(String branch_owner_cd){
		System.out.println("BranchOwnerDao-> deleteBranchOwner()-> branchOwner: "+branch_owner_cd);
		return sqlSessionTemplate.delete("com.monorella.head.branchOwner.BranchOwnerMapper.deleteBranchOwner", branch_owner_cd);
	}
	
	//사업자 정보 수정 처리
	public int modifyBranchOwner(BranchOwner branchOwner){
		System.out.println("BranchOwnerDao-> ModifyBranchOwner()-> branchOwner: "+branchOwner);
		return sqlSessionTemplate.update("com.monorella.head.branchOwner.BranchOwnerMapper.modifyBranchOwner", branchOwner);
	}
	
	//사업자 정보 단일 조회
	public BranchOwner selectOneBranchOwner(String branch_owner_cd){
		System.out.println("BranchOwnerDao-> selectOneBranchOwner()-> owner_num: "+branch_owner_cd);
		return sqlSessionTemplate.selectOne("com.monorella.head.branchOwner.BranchOwnerMapper.selectOneBranchOwner", branch_owner_cd);
	}
	
	//사업자 목록
	public List<BranchOwner> selectBranchOwnerList(){
		//System.out.println("BranchOwnerDao-> selectBranchOwnerList()");
		return sqlSessionTemplate.selectList("com.monorella.head.branchOwner.BranchOwnerMapper.selectBranchOwnerList");
	}
	
	//사업자 등록
	public int insertBranchOwner(BranchOwner branchOwner){
		//System.out.println("BranchOwnerDao-> insertBranchOwner-> branchOwner: "+branchOwner);
		return sqlSessionTemplate.insert("com.monorella.head.branchOwner.BranchOwnerMapper.insertBranchOwner", branchOwner);
	}
}
