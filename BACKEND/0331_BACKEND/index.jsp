<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="root" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>SSAFY</title>
</head>
<body>
<div align="center">
<c:if test="${userinfo == null}">
<a href="${root}/main?act=mvregister">회원가입</a><br>
<a href="${root}/main?act=mvlogin">로그인</a>
</c:if>
<c:if test="${userinfo != null}">
${userinfo.userName}(${userinfo.userId})님 안녕하세요.<br>
<a href="${root}/main?act=logout">로그아웃</a>
</c:if>
</div>
</body>
</html>