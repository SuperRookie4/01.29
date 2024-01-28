<%@page import="member_p.MemberDAO"%>
<%@page import="member_p.MemberDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

    <%
    /*받아오자*/
    MemberDTO dto = new MemberDTO();
    dto.setPid(request.getParameter("pid"));
    dto.setPw(request.getParameter("pw"));
    dto.setPname(request.getParameter("pname"));
    dto.setEmail(request.getParameter("email"));
    dto.setBirth(Integer.parseInt(request.getParameter("birth")));
    
    int result = new MemberDAO().register(dto);
    %>
    
    <script>
		if(<%=result%>){
			alert("회원가입 성공");
			location.href="login.jsp";
		}else{
			alert("회원가입 실패");
			location.href="joinMain.jsp";
		}
	</script>
    