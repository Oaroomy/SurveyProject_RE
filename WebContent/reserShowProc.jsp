<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    
    <%@page import="java.io.BufferedReader"%>
<%@page import="java.io.FileReader"%>
<%@page import="java.io.FileWriter"%>
<%@page import="java.io.BufferedWriter"%>
<%@page import="java.io.PrintWriter"%>
<%@page import="java.io.File"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>

<style>

#show{

	
	margin:auto;
	margin-top:50px;
	text-align:center;
	border : 2px solid #dfdfdf;
	border-radius:30px;
	width:1000px;
	padding-bottom: 50px;
	

}

</style>
<body>


<%




	request.setCharacterEncoding("utf-8");


	String id = request.getParameter("phone");

	
	String adminId = "mirim";
	String adminPw = "mirim";
	
	String filePath = application.getRealPath("/WEB-INF/reserInfo.txt");
	
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
		 
		
		if(id.equals(adminId)){
			
			out.println("관리자 계정입니다.");
			chk=true;
			break;
			
		}
		
		if(id.equals(infoArray[0])){
			chk=true;
		
		%>
		
			<div id="show">
				 
				 
			<%= "<h3>"+infoArray[0]+" / "+infoArray[1]+" / "+infoArray[2]+"</h3>" %>	
				
				
				
			</div>	
			<%	
			
		}
		
		 
	}
	
	
	
	if(chk==false){
		
		%>

		<div id="show">
			 
		
			예약내역이 없습니다.
			
			
		</div>	
		
		<%
	}
	
%>




</body>
</html>