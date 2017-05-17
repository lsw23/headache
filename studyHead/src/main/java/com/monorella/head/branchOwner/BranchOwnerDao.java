package com.monorella.head.branchOwner;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class BranchOwnerDao {

	@Autowired
	SqlSessionTemplate sqlSessionTemplate; 
}
