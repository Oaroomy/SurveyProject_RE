<%@page import="java.io.FileWriter"%>
<%@page import="java.io.BufferedWriter"%>
<%@page import="java.io.PrintWriter"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>


<%

	request.setCharacterEncoding("UTF-8"); //******	
	
	String q1 = request.getParameter("q1");
	String q2 = request.getParameter("q2");
	String q3 = request.getParameter("q3");
	String q4 = request.getParameter("q4");
	
	
	//Date date = new Date();
	//Long time = date.getTime();
	String filename = "result.txt";
	String result;

	String filePath = application.getRealPath("/WEB-INF/"+filename);
	//out.println(filename);
	

		PrintWriter writer=null;
		
	try {

		//String filePath = application.getRealPath("/WEB-INF/"+filename);
		//out.println(filePath);
		
	
	BufferedWriter bw = new BufferedWriter(new FileWriter(filePath,true));
	
	PrintWriter pw = new PrintWriter(bw,true);
	
	
	
		pw.print(q1+"/"+q2+"/"+q3+"/");

		bw.newLine();
		pw.flush();
		pw.close();
		//result = "ok";
		
		

	}catch(Exception e) {
		
		out.println(e);
		out.println("오류발생");
	//	result = "fail";
	}

	//response.sendRedirect("boardResult.jsp?choi="+result);



	
%>


</body>
</html>