package com.ssafy.member.dao;

import com.ssafy.member.dto.MemberDto;

public class MemberService {

	private static MemberService manager=new MemberService();
	
	private MemberDao dao;
	
	private MemberService() {
		dao=new MemberDao();
	}
	
	public static MemberService getInstance() {
		return manager;
	}
	
	public boolean addMember(MemberDto mdto) {
		return dao.addMember(mdto);
	}
	public MemberDto login(MemberDto mdto) {
		return dao.login(mdto);
	}
	
}
