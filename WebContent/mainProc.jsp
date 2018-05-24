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



<link rel="stylesheet" type="text/css" href="css/result.css">
    
    
    
    <%
		
		
		String path = application.getRealPath("/WEB-INF/selfChk.txt");
		
		
		String result;

		File file1 = new File(path);
		FileReader fr= new FileReader(file1);
		BufferedReader br = new BufferedReader(fr);
		
		
		int count[] = new int[3];
		
		while(true){
			
			
			result = br.readLine();
			if(result == null) break;
			
			switch(result){
			
				case "0": count[0]++; break;
				case "1": count[1]++; break;
				case "2": count[2]++; break;
			
			}
			
		}
		
		
		
		%>

<table width="1400px" id="result">
	<tr>
		<td>
			<h3>두피 타입 결과</h3>
		
		
		
		</td>
		
		<td>
			<h3>탈모 진단 결과</h3>
			
		
			
		</td>
	</tr>
</table>


</body>


</html>