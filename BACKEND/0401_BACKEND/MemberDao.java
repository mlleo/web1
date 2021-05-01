package com.ssafy.member.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.ssafy.member.dto.MemberDto;

public class MemberDao {
	
	
	public MemberDao() {
		init();
	}

	private void init()  {
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			System.out.println("1/6 S");
		} catch (ClassNotFoundException e) {
			System.out.println("1/6 F");
		}
	}
	
	public Connection getConnection() throws SQLException {
		Connection conn=null;
		conn = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/ssafyweb?serverTimezone=UTC&useUniCode=yes&characterEncoding=UTF-8", "ssafy5", "ssafy");
		return conn;
	}
	
	public void close(Connection conn, PreparedStatement psmt, ResultSet rs) {
		if(rs!=null) {
			try {
				rs.close();
			} catch (SQLException e) {
				
			}
		}
		if(psmt!=null) {
			try {
				psmt.close();
			} catch (SQLException e) {
				
			}
		}
		if(conn!=null) {
			try {
				conn.close();
			} catch (SQLException e) {
				
			}
		}
	}
	
	
	public boolean addMember(MemberDto mdto) {
		Connection conn=null;
		PreparedStatement psmt=null;
		int count=0;
		String sql=" INSERT INTO ssafy_member(userid, username, userpwd, email, address,joindate) \r\n" + 
				" VALUES(?, ?, ?, ?,?,now() )   \r\n" ;
		try {
			conn=getConnection();
			//System.out.println("2/6 S");
			//System.out.println(sql);
			psmt=conn.prepareStatement(sql);
			int i=1;
			psmt.setString(i++,mdto.getUserId());
			psmt.setString(i++,mdto.getUserName());
			psmt.setString(i++,mdto.getUserPwd() );
			psmt.setString(i++,mdto.getEmail() );
			psmt.setString(i++,mdto.getAddress() );
			//System.out.println("3/6 S");
			count=psmt.executeUpdate();
			//System.out.println("4/6 S");
		} catch (SQLException e) {
			System.out.println("addMember F "+ e);
		}finally {
			close(conn, psmt, null);
			//System.out.println("6/6 S");
		}
		
		return count>0?true:false;
	} 
	
	
	public MemberDto login(MemberDto mdto) {
		MemberDto dto=null;
		Connection conn=null;
		PreparedStatement psmt=null;
		ResultSet rs=null;
		String sql=" select userid, username, email from ssafy_member " + 
				   " where  userid=? and  userpwd=?                   " ;
		try {
			conn=getConnection();
			System.out.println("2/6 S");
			System.out.println(sql);
			psmt=conn.prepareStatement(sql);
			psmt.setString(1,mdto.getUserId());
			psmt.setString(2,mdto.getUserPwd() );
			System.out.println("3/6 S");
			rs=psmt.executeQuery();
			System.out.println("4/6 S");
			while(rs.next()) {
				int i=1;
				dto=new MemberDto();
				dto.setUserId(rs.getString(i++));
				dto.setUserName(rs.getString(i++));
				dto.setEmail(rs.getString(i++));
			}
			System.out.println("5/6 S");
		} catch (SQLException e) {
			System.out.println("login F "+ e);
		}finally {
			close(conn, psmt, null);
			System.out.println("6/6 S");
		}
		
		return dto;
	} 
	
	
	
}
