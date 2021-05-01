package com.ssafy.member.service;

import com.ssafy.member.dto.MemberDto;

public interface MemberService {
	boolean addMember(MemberDto mdto);
	MemberDto login(MemberDto mdto);
}
