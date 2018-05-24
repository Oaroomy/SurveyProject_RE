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
    

<table width="1400px" id="result">
	<tr>
		<td>
			<h3>두피 타입 결과</h3>
		
		
		
		</td>
		
		<td>
			<h3>탈모 진단 결과</h3>
			
		<table id="graphFrame" style=" align:center; text-align:center;">
			<tr>
			
				<td>roading</td>
				<td>roading</td>
				<td>roading</td>
			</tr>
			<tr>
				
				
				<%
		
			for(int i = 0 ; i< 3 ; i++){
				
			%>
				<td>
				<table class="graph">
				
				<% 
					for(int j = 0 ; j < 10; j++){
				
						%>
						
						<tr>
						<td style="text-align: center"> 
						
							<div class="cell" name=<%= j %>></div>
						
						</td>
						</tr>
						

						<%
					}
				
				%>
				</table>	
				</td>
				<% 
				
			}
		
		%>		
				
				
			
			<tr>
		</table>
		
		
			
		</td>
	</tr>
</table>


</body>


</html>