<%@page import="member_p.MemberDTO"%>
<%@page import="member_p.MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	MemberDAO dao = new MemberDAO();

	boolean islogin = false;
	MemberDTO dto = dao.login(request.getParameter("pid"), request.getParameter("pw"));
	if(dto!=null){
		//브라우저가 꺼질때까지 저장되는 정보
		session.setAttribute("UserInfo",dto);
		islogin = true;
	}
	
%>

<script>
	if(<%=islogin %>){
		alert("로그인 성공");
		location.href = "myPage.jsp";
	}else{
		alert("로그인 실패");
		location.href = "login.jsp";
	}
</script>