
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
	
	
	String filepath = application.getRealPath("/WEB-INF/result.txt");
	
	File file = new File(filepath);
	
	FileReader filereader = new FileReader(file);
	BufferedReader bufReader = new BufferedReader(filereader);
	
	String result = "";
	String resultArray[];
	int intArray[] = new int [3];
	int cnt [][] = new int [3][4];
	int index=0;
	while(true){
		

		
		result = bufReader.readLine();
	
		if(result == null){ break;
		}else{		
		index=0;

			
			
		//out.println(result);
		//result = "1/1/2";	0
		
		result=result.trim();
		resultArray = result.split("/");
		
	
		for(int i = 0 ; i < resultArray.length ; i++){
		
			switch(resultArray[i]){
		
			case "0": intArray[i] = 0; break;
			case "1": intArray[i] = 1; break;
			case "2": intArray[i] = 2; break;
			case "3" : intArray[i] = 3; break;

			}
			
			//out.println(resultArray[i]+">>");
		
		}
		
		for(int i = 0 ; i < intArray.length;i++){
			
			
			//out.println(intArray[i] + "**");
			
			cnt[index][intArray[i]]++;
			index++;
			
		}
		
		}
	}
	
	
	/*
	for(int i = 0 ; i < 3 ; i ++){
		
		
		for(int j = 0 ; j < 4 ; j++){
			
			out.print(cnt[i][j]+" ");
			
		}
		
		//out.println("/");
	}
*/



	%>
	

<h3>1번 문항 </h3><br>
1)<%= cnt[0][0]%>명 2)<%=cnt[0][1]%>명  2)<%=cnt[0][2]%>명<br><br><br><br>

<h3>2번 문항 </h3><br>
1)<%= cnt[1][0]%>명 2)<%=cnt[1][1]%>명 3)<%=cnt[1][2]%>명 4)<%=cnt[1][3]%>명 <br><br><br><br>


<h3>3번 문항 </h3><br>
1)<%= cnt[2][0]%>명 2)<%=cnt[2][1]%>명 3)<%=cnt[2][2]%>명 4)<%=cnt[2][3]%>명 <br><br><br><br>



 
 
 결과확인하세요!

</body>
</html>