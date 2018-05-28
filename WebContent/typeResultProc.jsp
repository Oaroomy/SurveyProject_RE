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
	
		String[] value = request.getParameterValues("list");

	
		int test[] = new int[4];
		int check;
		String typeName[] = {"지성 두피","건성 두피","민감성 두피","지루성 두피"};
		
		for(String val:value){
			
			out.println(val);
		
			if(val == null){
				
				out.print("아무 값도 선택하지 않아 진단할 수 없습니다.");
				
				break;
				
			}else{
			
				check = Integer.parseInt(val);
				
				if(check >= 0 && check < 4){
					//지성
					test[0]++;	
					
				}else if ( check >= 4 && check < 9){
					//건성
					test[1]++;
					
				}else if( check >= 9 && check < 13){
					//민감성
					test[2]++;
					
				}else if( check >= 13 && check <= 14){
					//지루성
					test[3]++;
					
				}
			
			}
		
		
		
		}
		
		
		
		int max = -1;
		int index[] = new int[4];
		for(int i = 0 ; i < test.length ; i++){
			
			
			if(max < test[i]){
				
				max = test[i];
				index[i] = max;
				
			}else if( max == test[i] ){
				
				index[i] = max;
				
			}
			
		}
		
	
	%>


	<div style="margin-left:100px;">
	
		
		
		<% 
		
		
	String filePath = application.getRealPath("/WEB-INF/typeCare.txt");
		
		
		File file = new File(filePath);
		
		FileReader filereader = new FileReader(file);
		BufferedReader bufReader = new BufferedReader(filereader);
		
		String info="";
		

		
		
			while(true){
				
				
				info = bufReader.readLine();
				
				if(info == null) { 
					
					break; }	
				
				else {
					
					info.trim();
					out.println(info.charAt(1));
					out.println("<br>"+info.substring(1));
			}		
		
		
		
	
			}
		%>
		
	</div>

</body>
</html>