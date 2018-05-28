<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
 <%@page import="java.io.BufferedReader"%>
<%@page import="java.io.FileReader"%>
<%@page import="java.io.FileWriter"%>
<%@page import="java.io.BufferedWriter"%>
<%@page import="java.io.PrintWriter"%>
<%@page import="java.io.File"%>
<%@ page import="java.util.*, java.text.*"  %>



<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

<link rel="stylesheet" type="text/css" href="css/okay.css">


<%

 java.text.SimpleDateFormat formatter = new java.text.SimpleDateFormat("yyyy-MM-dd");
 String today = formatter.format(new java.util.Date());


%>

<%



request.setCharacterEncoding("utf-8");

String name = request.getParameter("name");
String phone = request.getParameter("phone");


String filename="reserInfo.txt";

String result;

String filePath = application.getRealPath("/WEB-INF/"+filename);

PrintWriter writer = null;


try{
	
	BufferedWriter bw = new BufferedWriter(new FileWriter(filePath,true)); 
	PrintWriter pw = new PrintWriter(bw,true);
	
	pw.printf(phone+"/"+name+"/"+today);
	
	bw.newLine();
	pw.flush();
	pw.close();
	

	%>
	
	<script type="text/javascript">
		alert("회원가입성공!");
		<meta http-equiv='refresh' content ='2; url=main.jsp'>;
	</script>
	
	<%
	
}catch(Exception e){
	
	
	
}



%>

<div id="okFrame">
<h3>
예약이 완료 되었습니다.<br>
예약 확인 메뉴에서 확인해주세요!
</h3>
곧 MAIN 페이지로 이동합니다.

<META http-equiv=refresh content="3;url=main.jsp">




</body>
</html>