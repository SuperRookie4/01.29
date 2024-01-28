<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
	//로그인 성공 시
	boolean islogin = false;
	if(session.getAttribute("UserInfo")!=null){
		islogin = true;
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>마이페이지</title>
</head>
<script>
	if(!<%=islogin%>){
		alert("로그인 먼저 하세요.");
		location.href = "login.jsp";
	}
</script>
<body>
<h1>마이페이지</h1>
<c:set var='user' value='<%=session.getAttribute("UserInfo") %>'></c:set>
<form action="login.jsp">
	<table border="">
		<tr>
			<td>아이디</td>
			<td>${user.pid }</td>
		</tr>
		<tr>
			<td>비밀번호</td>
			<td>${user.pw }</td>
		</tr>
		<tr>
			<td>이름</td>
			<td>${user.pname }</td>
		</tr>
		<tr>
			<td>이메일</td>
			<td>${user.email }</td>
		</tr>
		<tr>
			<td>생년월일</td>
			<td>${user.birth }</td>
		</tr>
		<tr>
			<td colspan="2" align="center"><input type="submit" value="로그인"/></td>
		</tr>
	</table>
</form>
</body>
</html>