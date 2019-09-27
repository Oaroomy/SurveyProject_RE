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

<%

	request.setCharacterEncoding("utf-8");


	String id = request.getParameter("id");
	String password = request.getParameter("pw");

	
	String adminId = "mirim";
	String adminPw = "mirim";
	
	String filePath = application.getRealPath("/WEB-INF/info.txt");
	
	File file = new File(filePath);
	
	FileReader filereader = new FileReader(file);
	BufferedReader bufReader = new BufferedReader(filereader);
	
	String info="";
	
	Boolean chk = false;
	
	String infoArray[] = null;
	while(true){
		
		
		info = bufReader.readLine();
		
		if(info == null){ break; }
		infoArray = info.split("/");
		 
		
		if(id.equals(adminId) && password.equals(adminPw)){
			
			out.println("관리자 계정입니다.");
			chk = true;
			break;
			
		}
		
		if(id.equals(infoArray[1]) && password.equals(infoArray[2])){
			
		
				
				 out.println(infoArray[1]+"로그인성공");	
				 chk = true;
				 break;
				
				 

			
		}
		
		 
	}
	
	
	if(chk == false){
		
		
		out.println("로그인실패");
		
	}
%>
	

</body>
</html>