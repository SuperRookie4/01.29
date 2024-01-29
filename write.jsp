<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>write </title>
<style>

	textarea{
		resize: none; 
		border:none;
		
	}
	.text{
		width:100%;
		border:none;
	}

</style>
</head>
<body>
<form action="writesuccess.jsp">
	<table border="" width="1000px" align="center">
		<tr align="center">
			<td width="10%">제목</td>
			<td width="90%">
				<input class="text" type="text" name="tilte">
			</td>
		</tr>
		<tr align="center">
			<td width="10%">아이디</td>
			<td width="90%">
				<input class="text" type="text" name="pid">
			</td>
		</tr>
		<tr align="center">
			<td width="10%">첨부파일</td>
			<td width="90%">
				<input type="file" value="첨부파일" name="file">
			</td>
		</tr>
		<tr align="center">
			<td width="10%">내용</td>
			<td width="90%" height="500px">
				<textarea cols="110px" rows="31" name="contents"></textarea>
			</td>
		</tr>
		<tr>
			<td colspan="4"  align="right">
				<input type="submit" value="등록">
			</td>
		</tr>
	</table>
</form>
</body>
</html>