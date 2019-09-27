<%@page import="java.io.BufferedReader"%>
<%@page import="java.io.FileReader"%>
<%@page import="java.io.InputStreamReader"%>
<%@page import="java.io.FileInputStream"%>
<%@page import="java.io.File"%>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
</head>
<body>

<link rel="stylesheet" type="text/css" href="css/self.css">



<div id="selfframe">
<h1>탈모 자가진단</h1>
<h4>간단한 탈모 진단과 함께 전문의 상담예약까지!</h4> <br>



<form action="selfResult.jsp" method="post">

<% 
request.setCharacterEncoding("utf-8");

String filePath = application.getRealPath("/WEB-INF/self.txt");

File file = new File(filePath);

FileReader filereader = new FileReader(file);
//BufferedReader bufReader = new BufferedReader(filereader);
BufferedReader bufReader = new BufferedReader(new InputStreamReader(new FileInputStream(file),"utf-8"));

String question="";

int index=0;


while(true){
	
	
	question = bufReader.readLine();
	if(question == null ) break;
	
	%>
	
<input type="checkbox" name="<%=index%>" class="checkbox">

	<%
	out.print(question+"<br>");
	index++;

}

%>

<br>
<br>
<input type="submit" value="완료" id="submit">


</form>
</div>
</body>
</html>