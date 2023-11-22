package com.myhome.project.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.myhome.project.model.Member;
import com.myhome.project.service.MemberService;

@Controller
public class MemberController {

	@Autowired
	MemberService service;
	
	// 회원가
	@RequestMapping("joinMember")
	public String join(Member member) {
		
		
		int reuslt = service.insert(member);
		
		return "";
	}
}
