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


<h1>탈모 자가진단</h1>

<form action="selfResult.jsp" method="post">

<% 


String filePath = application.getRealPath("/WEB-INF/self.txt");

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