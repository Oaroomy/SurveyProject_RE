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
		
		
		double count[] = new double[3];
		double value[] = new double[3];
		int cnt = 0;
		while(true){
			
			
			result = br.readLine();
			
			
			if(result == null) break;
			
			switch(result){
			
				case "0": count[0]++; cnt++;break;
				case "1": count[1]++; cnt++;break;
				case "2": count[2]++; cnt++;break;
				
			}
			
			
			
		
			
		}
		
		for( int i = 0 ; i < count.length ;i++){
			
			value[i] = Math.round((count[i]/cnt)*100);
			count[i] = Math.round((count[i]/cnt)*100)/10;
		}
		
		%>

<table border width="1500px"  id="result">
	<tr>
		<td width="750px">
			<h3>두피 타입 결과</h3>
		
		

		
		</td>
		
		<td width="750px">
			<h3>탈모 진단 결과!!</h3>
			
			
			<table  align="center" width="740px" style="text-align:center" id="Gframe">
			
			<tr>
					
					<%
					
						
						for(int i = 0 ; i< count.length ;i++){
							%>
							<td>
							
							<%
							
							for(int k = 0 ; k < 10-count[i] ;k++){
								
								
								%>
								<div class="cell"></div>
								<br>
								
								<% 
							}
							
							
							for(int j = 0 ; j < count[i];j++){
							%>
							 <div class="cell1">
							 
							 <%
							 
							 	if(j==0){
							 		
							 		
							 		out.println(value[i]+"%");
							 		
							 	}
							 
							 %>
							 
							 
							 </div>
							<%
							
							}
							
							%>
							
							</td>
							<%
						}
					
					
					
					%>
					
					
					
					
					
				</tr>
				<tr id="subTitle" align="center">
					<td>안전</td>
					<td>주의</td>
					<td>위험</td>
				
				</tr>
			</table>
		
			
		</td>
	</tr>
</table>


</body>


</html>