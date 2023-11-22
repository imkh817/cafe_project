package com.myhome.project.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.myhome.project.dao.MemberDao;
import com.myhome.project.model.Member;

@Component
public class MemberServiceImpl implements MemberService{
	
	@Autowired
	MemberDao dao;

	@Override
	public int insert(Member member) {
		
		return dao.insert(member);
	}
	
	
}