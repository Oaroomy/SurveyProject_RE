<%@page import="java.io.File"%>
<%@page import="java.io.BufferedReader"%>
<%@page import="java.io.FileReader"%>
<%@page import="java.io.FileWriter" %>
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

<h1>당신의 결과는?</h1>


<% 

	request.setCharacterEncoding("utf-8");
	int cnt = 0;
	String chk;
	int check[]=new int[3];
	
	for(int i = 0 ; i < 10 ; i++){

	chk = request.getParameter(String.valueOf(i));
	
	
	if(chk != null) { cnt++; }
	
		
	}
	
	
	
	out.println("당신이 선택한 항목 수는"+ cnt+"개");

	String res;
	
	if(cnt >= 0 && cnt <= 3){
		
		res = "0";
		
	}else if(cnt >= 4 && cnt <=6  ){
		
		res="1";
		
	}else{
		
		res="2";
		
	}



	
	
	String path = application.getRealPath("/WEB-INF/selfChk.txt");

	PrintWriter writer = null;
	
	try{
		
		BufferedWriter bw = new BufferedWriter(new FileWriter(path,true));
		PrintWriter pw = new PrintWriter(bw,true);
		
		pw.printf(res);
		
		bw.newLine();
		pw.flush();
		pw.close();
		
	
		
		out.println("설문완료");
		
		
		
	}catch(Exception e){
		
		out.println(e);
	
		
	}
	
	
	String filePath = application.getRealPath("/WEB-INF/selfRe.txt");
	
	File file = new File(filePath);
	FileReader filereader = new FileReader(file);
	BufferedReader bufReader = new BufferedReader(filereader);
	
	

	String result;
	String index;
	
	while(true){
		
	result = bufReader.readLine();
	if(result == null) break;
	
	index = String.valueOf(result.charAt(0));
	
	
	//out.println("결과확인"+ res + " // " + index);
	
	if(res.equals(index)){
		
		out.println("<br>"+result.substring(1));
		break;
		
	}
	
	}
	
	
	
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
	
	out.print("<br>"+count[0]+"명 <br>");
	out.print(count[1]+"명 <br>");
	out.print(count[2]+"명 <br>");
	
	

%>


</body>
</html>