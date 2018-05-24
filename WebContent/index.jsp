<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
   <%
    	String contentPage = request.getParameter("CONTENTPAGE");
		String loginPage = request.getParameter("LOGINPAGE");
    %>
    

 <link rel="stylesheet" type="text/css" href="css/basic.css">
    
    

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
 <link rel="stylesheet" type="text/css" href="css/basic.css">
    
    


</head>
<body>



<table id="frame" width="1500px" align="center">

	<tr>
		<th colspan="2"> 당신은 탈모?</th>
	</tr>

	<tr>
		<td colspan="2">
			<jsp:include page="top.jsp"></jsp:include>
		</td>
	</tr>
	
	<tr>
	
	<td>
		
		<jsp:include page="<%=contentPage %>"></jsp:include>
		
		</td>
	</tr>
	
	<tr>
		<td colspan="2">
			<jsp:include page="bottom.jsp"></jsp:include>
		</td>
	</tr>

</table>






</body>
</html>