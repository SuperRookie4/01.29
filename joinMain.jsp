<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>
</head>
<body>
<h1>회원가입</h1>
<form action="joinReg.jsp" method="post">
	<table border="">
		<tr>
			<td>아이디</td>
			<td>
				<input type="text" name="pid"/>
				<input type="button" value="중복확인"/>
			</td>
		</tr>
		<tr>
			<td>비밀번호</td>
			<td><input type="password" name="pw"/></td>
		</tr>
		<tr>
			<td>이름</td>
			<td><input type="text" name="pname"/></td>
		</tr>
		<tr>
			<td>이메일</td>
			<td>
			<input type="text" name="email"/>
			<input type="button" value="중복확인"/>
			</td>
		</tr>
		<tr>
			<td>생년월일</td>
			<td><input type="text" name="birth" minlength="6" maxlength="6" placeholder="숫자만 입력하시오."/></td>
		</tr>
		<tr>
			<td colspan="2" align="center"><input type="submit" value="회원가입"/></td>
		</tr>
	</table>
</form>
</body>
</html>