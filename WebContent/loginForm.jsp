<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

<form action="loginProc.jsp" method="post">
<table>

<tr>
	<td>
	ID
	</td>
	<td>
	<input type="text" palceholder="아이디" name="id">
	</td>

</tr>

<tr>
	<td>
	비밀번호
	</td>
	<td>
	<input type="password" palceholder="비밀번호" name="pw">
	</td>

</tr>

<tr>
	<td colspan="2">
	<input type="submit" value="확인">
	</td>
</tr>

</table>
</form>

</body>
</html>