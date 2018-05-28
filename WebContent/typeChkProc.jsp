<%@page import="java.io.BufferedReader"%>
<%@page import="java.io.FileReader"%>
<%@page import="java.io.File"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

<h1> 나의 두피 타입 체크하기	 </h1>

총 15개의 문항에 응답해주세요. 응답후 자신의 두피 타입에 맞는 관리법을 제시합니다. <br><br><br>





<form action="selfResult.jsp" method="post">

<% 


String filePath = application.getRealPath("/WEB-INF/type.txt");

File file = new File(filePath);

FileReader filereader = new FileReader(file);
BufferedReader bufReader = new BufferedReader(filereader);

String question="";

int index=0;


while(true){
	
	
	question = bufReader.readLine();
	if(question == null ) break;
	
	%>
	
<input type="checkbox" name="<%=index%>">

	<%
	
	out.print(question+"<br>");
	index++;

}

%>

<br>

<input type="submit" value="완료">


</form>







</body>
</html>