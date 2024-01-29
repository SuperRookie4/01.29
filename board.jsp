<%@page import="jdbc_p.BoardDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
<!DOCTYPE html>
<style>
	input{
		margin-right:50px;
	}
</style>

<%
	BoardDAO dao = new BoardDAO();

%>
<html>
<head>
<meta charset="UTF-8">
<title>board</title>
</head>
<body>
<form action="write.jsp">
	<table border="" width="1000px" align="center">
		<tr align="center">
			<td width="10%">글번호</td>
			<td width="40%">제목</td>
			<td width="20%">작성자</td>
			<td width="30%">작성된 날짜</td>
		</tr>
		<c:forEach items="<%=new BoardDAO().list() %>" 
		    var="dao" varStatus="no">
		<tr>
			<td>${dao.boardNumber }</td>
			<td>${dao.boardTitle }</td>
			<td>${dao.userId }</td>
			<td>${dao.writeDate }</td>
		</tr>
		</c:forEach>
		<tr>
			<td colspan="4"  align="right">
				<input type="submit" value="글쓰기">
			</td>
		</tr>
	</table>
</form>
</body>
</html>