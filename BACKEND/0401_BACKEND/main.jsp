<%@page import="com.ssafy.member.dto.MemberDto"%>
<%@page import="com.ssafy.member.service.MemberService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("UTF-8") ; %>
<% response.setContentType("text/html; charset=UTF-8"); %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Controller</title>
</head>
<body>
<%
     MemberService manager=MemberService.getInstance();
	 String act=request.getParameter("act");//mvregister
	 /* if(act==null || act.trim().equals("")){
		 
	 } */
	 String path="";
	 if(act.equalsIgnoreCase("mvregister")){
		 response.sendRedirect("./user/join.jsp");
	 }else if(act.equalsIgnoreCase("join")){
		 String userid=request.getParameter("userid");
		 String username=request.getParameter("username");
		 String userpwd=request.getParameter("userpwd");
		 String email=request.getParameter("email");
		 String address=request.getParameter("address");
		 
		 MemberDto dto=new MemberDto(userid,userpwd,username,email,address,"");
		 boolean isS=manager.addMember(dto);
		 if(isS){
			 request.setAttribute("msg", "회원가입에 성공하였습니다.");
			 request.setAttribute("url", "./index.jsp");
			 %>
			 <jsp:forward page="./success.jsp" />
			 <% 
		 }else{
			 request.setAttribute("msg", "회원가입을 하지 못했습니다. 다시 회원가입을 해 주십시오.");
			 request.setAttribute("url", "./index.jsp");
			 %>
			 <jsp:forward page="./error.jsp" />
			 <% 
		 }
	 }else if(act.equalsIgnoreCase("mvlogin")){//logout
		 response.sendRedirect("./user/login.jsp");
	 }else if(act.equalsIgnoreCase("login")){
		 String userid=request.getParameter("userid");
		 String userpwd=request.getParameter("userpwd");
		 
		 MemberDto dto=new MemberDto(userid,userpwd,"","","","");
		 MemberDto userinfo=manager.login(dto);
		 if(userinfo!=null){
			 
			 session.setAttribute("userinfo", userinfo);
			 session.setMaxInactiveInterval(60*10);//10분 -1 영원히~~~ 0 나우 죽
			 
			 request.setAttribute("msg", "로그인성공.");
			 request.setAttribute("url", "./index.jsp");
			 %>
			 <jsp:forward page="./success.jsp" />
			 <% 
		 }else{
			 session.invalidate();
			 
			 request.setAttribute("msg", "로그인 실패.");
			 request.setAttribute("url", "./index.jsp");
			 %>
			 <jsp:forward page="./error.jsp" />
			 <% 
		 }
	 }else if(act.equalsIgnoreCase("logout")){//logout
		 session.invalidate();
	 	 
		 response.sendRedirect("./index.jsp");
	 }
	 
%>
</body>
</html>