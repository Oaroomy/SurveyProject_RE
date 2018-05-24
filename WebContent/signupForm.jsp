<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

<center>

<form action="signupProc.jsp" method="post">

<table>
	<tr>
		<td>
		
			<h1> 회원가입 </h1>
		
		</td>
	</tr>
	
	<tr>
		<td>
		이름 <input type="text" placeholder="이름" name="name">
		</td>
	</tr>
	
	<tr>
		<td>
		아이디 <input type="id" placeholder="아이디" name="id">
		</td>
	</tr>
	
	<tr>
		<td>
		패스워드 <input type="password" placeholder="패스워드" name="pw">
		</td>
	</tr>
	<tr>
		<input type="submit">
	</tr>

</table>
</form>
</center>

</body>
</html>