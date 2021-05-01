<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<% request.setCharacterEncoding("utf-8"); %>
<% response.setContentType("text/html; charset=utf-8"); %>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="utf-8">
<title>users</title>
<style>
table {
  width:85%;
}
table, th, td {
  border: 1px solid black;
  border-collapse: collapse;
}
th, td {
  padding: 15px;
  text-align: left;
}
#d01  {
 margin: 10 auto;
}
#t01 tr:nth-child(even) {
  background-color: #eee;
}
#t01 tr:nth-child(odd) {
 background-color: #fff;
}
#t01 th {
  background-color: black;
  color: white;
}
</style>
</head>
<body>
<%
//1. Driver Loading  로딩1/6
Class.forName("com.mysql.cj.jdbc.Driver");
System.out.println("1/6");
//2. Connection  연결 2/6
String url="jdbc:mysql://127.0.0.1:3306/ssafydb2?serverTimezone=UTC&useUniCode=yes&characterEncoding=UTF-8";
String user="ssafy";
String pass="ssafy";
Connection conn=DriverManager.getConnection(url,user,pass);
System.out.println("2/6");
//3. PreparedStatement Create 쿼리준비
String sql=" select sid,sname,sfavor,sdate from susers order by sid  ";
PreparedStatement psmt=conn.prepareStatement(sql);
System.out.println("3/6");
//4. 쿼리실행 
ResultSet rs=psmt.executeQuery();
System.out.println("4/6");
%>
<div id='d01'>
<table id='t01' >
<colgroup>
<col width="10%"/>
<col width="20%"/>
<col width="30%"/>
<col width="auto"/>
</colgroup>
<tr>
<th>아이디</th><th>이름</th><th>좋아하는것</th><th>등록일</th>
</tr>
<%
while(rs.next()){
	int i=1;
	%>
	<tr>
	<td><%=rs.getString(i++) %></td>
	<td><%=rs.getString(i++) %></td>
	<td><%=rs.getString(i++) %></td>
	<td><%=rs.getString(i++) %></td>
	</tr>
	<%
}

%>
</table>
</div>
<%
System.out.println("5/6");
if(rs!=null) rs.close();
if(psmt!=null) psmt.close();
if(conn!=null) conn.close();
System.out.println("6/6");

%>
<a href='regi.jsp'>회원가입</a>
</body>
</html>