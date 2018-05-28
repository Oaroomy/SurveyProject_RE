<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
 <link rel="stylesheet" type="text/css" href="css/reser.css">
    
    
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

<table align="center" id="resertable">
	<tr id="resertr">
		<td>
		
			LOGIN
		
		</td>
	</tr>
		<tr>
		<td>
		
			<div id="reserFrame">
		
			<form	action="reserShow.jsp" method="post">
				<table   width="500px" align="center" id="reserForm" style="margin-top:100px;">
					
					<tr>
						<td>
							<input type="text" placeholder="전화번호" name="phone">
						</td>
					</tr>
					<tr>
						<td>
						
							<input type="submit" value="확인" id="reserB"> 
						</td>
					</tr>
				</table>
			</form>
			</div>
		</td>
	</tr>
</table>
	
	
</body>
</html>