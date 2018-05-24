<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
 
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

<h1> 탈모 관련 설문조사 </h1>

<form action="surveyProc.jsp" method="post">
1. 탈모로 인해 스트레스를 경험한적이 있나요? <br>
<input type="radio" name="q1" value="0" required >매우 있음
<input type="radio" name="q1" value="1"  >약간 있음
<input type="radio" name="q1" value="2" required >없음
<br>
<br>
<br>
<br>

2. 나도 탈모가 아닐까 걱정 해 본 적이 있습니까? <br>
<input type="radio" name="q2" value="0" required >매우 심하게 걱정한다.
<input type="radio" name="q2" value="1"  >걱정이 되는 편이다.
<input type="radio" name="q2" value="2"  >심하지는 않지만 가끔 걱정한다.
<input type="radio" name="q2" value="3"  >전혀 걱정하지 않는다.
<br>
<br>
<br>
<br>

3. 내 애인이 탈모라면? <br>
<input type="radio" name="qif" value="0" required >헤어진다
<input type="radio" name="qif" value="1"  >가발 권유
<input type="radio" name="qif" value="2"  >삭발 추천
<input type="radio" name="qif" value="3"  >상관 없다
<br>
<br>
<br>
<br>


<input type="submit" value="제출">

</form>
</body>
</html>