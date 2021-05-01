<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<% request.setCharacterEncoding("utf-8"); %>
<% response.setContentType("text/html; charset=utf-8"); %>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="utf-8">
<title>users</title>
<head>
<body>
<%
String sname=request.getParameter("sname");
String spwd=request.getParameter("spwd");
String sfavor=request.getParameter("sfavor");
%>
<%=sname %><%=spwd %><%=sfavor %>
</body>
</html>