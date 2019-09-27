<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

	<form action="input.jsp" method="post">
	
	
	<h4>1. 성별을 선택해주세요.</h4> <br>
	<input type="radio" name="q1" value="0"> 여자
	<input type="radio" name="q1" value="1"> 남자

	<h4>2. 연령대를 선택해주세요.</h4> <br>
	<input type="radio" name="q2" value="0"> 10대
	<input type="radio" name="q2" value="1"> 20대
	<input type="radio" name="q2" value="2"> 30대
	<input type="radio" name="q2" value="3"> 40대
	<input type="radio" name="q2" value="4"> 50대 이상

	<h4>3. 자신이 탈모라고 느꼈던 적이 있습니까?</h4> <br>
	<input type="radio" name="q3" value="0"> 예
	<input type="radio" name="q3" value="1"> 아니오

	<h4>4. 탈모가 좋습니까?</h4> <br>
	<input type="radio" name="q4" value="0"> 예
	<input type="radio" name="q4" value="1"> 아니오

	<input type="submit" >

	</form>

</body>
</html>