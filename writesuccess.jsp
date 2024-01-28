<%@page import="jdbc_p.BoardDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

</head>
<body>
<%
	BoardDTO dto = new BoardDTO();
	
	
	dto.setBoardTitle(request.getParameter("title"));
	dto.setUserId(request.getParameter("pid"));
	dto.setContents(request.getParameter("contents"));
	
	
	System.out.println("등록");
%>
<script>
 	alert("등록이 되었습니다.")
 	location.href="board.jsp"
</script>
</body>
</html>