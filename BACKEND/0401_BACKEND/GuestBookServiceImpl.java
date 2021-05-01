package com.ssafy.member.service;

import java.util.List;

import com.ssafy.member.dao.GuestBookDao;
import com.ssafy.member.dao.MemberDao;
import com.ssafy.member.dto.GuestBookDto;
import com.ssafy.member.dto.MemberDto;
//MemberService
public class GuestBookServiceImpl implements GuestBookService{

	private static GuestBookServiceImpl manager=new GuestBookServiceImpl();
	
	private GuestBookDao dao;
	
	private GuestBookServiceImpl() {
		dao=new GuestBookDao();
	}
	
	public static GuestBookServiceImpl getInstance() {
		return manager;
	}

	@Override
	public List<GuestBookDto> getGuestBooks() {
		return dao.getGuestBooks();
	}
	

}
