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
<form action="regia.jsp" method='post'>
<table>
<tr>
<td>이름</td>
<td><input type="text" name='sname' /></td>
</tr>
<tr>
<td>패스워드</td>
<td><input type="password" name='spwd' /></td>
</tr>
<tr>
<td>좋아해</td>
<td><input type="radio" name='sfavor' value='사과' />사과
<input type="radio" name='sfavor' value='배' />배</td>
</tr>
<tr>
<td colspan="2"><input type="submit" value='회원가입' /></td>
</tr>
</table>
</form>
</body>
</html>