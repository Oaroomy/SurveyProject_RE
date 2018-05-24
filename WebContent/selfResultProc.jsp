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

<h1>당신의 결과는?</h1>


<% 

	request.setCharacterEncoding("utf-8");
	int cnt = 0;
	String chk;
	
	for(int i = 0 ; i < 10 ; i++){

	chk = request.getParameter(String.valueOf(i));
	
	
	if(chk != null) { cnt++; }
	
		
	}
	
	
	
	out.println("당신이 선택한 항목 수는"+ cnt+"개");

	char res;
	
	if(cnt >= 0 && cnt <= 3){
		
		res = '0';
		
	}else if(cnt > 4 && cnt <=6  ){
		
		res='1';
		
	}else{
		
		res='2';
		
	}



	
	String filePath = application.getRealPath("/WEB-INF/selfRe.txt");
	
	File file = new File(filePath);
	
	FileReader filereader = new FileReader(file);
	BufferedReader bufReader = new BufferedReader(filereader);
	
	String result;
	char index;
	
	while(true){
		
	result = bufReader.readLine();
	if(result == null) break;
	
	index = result.charAt(0);
	
	
	//out.println("결과확인"+ res + " // " + index);
	
	if(res == index){
		
		out.println("<br>"+result.substring(1));
		break;
		
	}
	
	

	
	
		
	}
	

%>


</body>
</html>