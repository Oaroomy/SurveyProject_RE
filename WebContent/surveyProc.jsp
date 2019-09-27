<%@page import="java.io.FileWriter"%>
<%@page import="java.io.BufferedWriter"%>
<%@page import="java.io.PrintWriter"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

<%

 	request.setCharacterEncoding("utf-8");

	String q1 = request.getParameter("q1");
	String q2 = request.getParameter("q2");
	String qif = request.getParameter("qif");
	
	String filename="result.txt";
	
	String filePath = application.getRealPath("/WEB-INF/"+filename);
	
	
	
	
	PrintWriter writer = null;
	
	try{
		
		BufferedWriter bw = new BufferedWriter(new FileWriter(filePath,true));
		PrintWriter pw = new PrintWriter(bw,true);
		
		pw.printf(q1+"/"+q2+"/"+qif);
		
		bw.newLine();
		pw.flush();
		pw.close();
		
	
		
		out.println("설문완료");
		
		
		
	}catch(Exception e){
		
		out.println(e);
	
		
	}

%>


<jsp:forward page="index.jsp">
	<jsp:param value="result.jsp" name="CONTENTPAGE"/>
</jsp:forward>

</body>
</html>