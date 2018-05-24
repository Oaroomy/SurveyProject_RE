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

	request.setCharacterEncoding("utf-8");
	String name = request.getParameter("name");
	String id = request.getParameter("id");
	String password =request.getParameter("pw");
	
	
	String filename="info.txt";
	
	String result;
	
	String filePath = application.getRealPath("/WEB-INF/"+filename);
	
	PrintWriter writer = null;
	
	
	try{
		
		BufferedWriter bw = new BufferedWriter(new FileWriter(filePath,true)); 
		PrintWriter pw = new PrintWriter(bw,true);
		
		pw.printf(name+"/"+id+"/"+password);
		
		bw.newLine();
		pw.flush();
		pw.close();
		

		%>
		
		<script type="text/javascript">
			alert("회원가입성공!");
			<meta http-equiv='refresh' content ='2; url=index.jsp'>;
		</script>
		
		<%
		
	}catch(Exception e){
		
		
		
	}
%>

</body>
</html>