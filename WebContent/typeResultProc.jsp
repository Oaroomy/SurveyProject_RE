<%@page import="java.io.BufferedReader"%>
<%@page import="java.io.FileReader"%>
<%@page import="java.io.FileWriter"%>
<%@page import="java.io.BufferedWriter"%>
<%@page import="java.io.PrintWriter"%>
<%@page import="java.io.File"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" type="text/css" href="css/type.css">
  
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>


	<%
	
		String[] value = request.getParameterValues("list");

	
		int test[] = new int[4];
		int check;
		int maxIndex;
		String typeName[] = {"지성두피","건성두피","민감성두피","지루성두피"};
		
		for(String val:value){
			
			//out.println(val);
		
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
		
		
		for(int j = 0 ; j < index.length;j++){
			
			if( index[j] != max){
				
				index[j] = 0;
				
				
				
			}
			
		}
		
		
		
		for(int i = 0 ; i< index.length;i++){
			
		//	out.print("["+index[i] +"]");
			
		}
		
		
		
		
		String filePath1 = application.getRealPath("/WEB-INF/typeCount.txt");
		
		
		PrintWriter writer = null;
		
		try{
			
			BufferedWriter bw = new BufferedWriter(new FileWriter(filePath1,true));
			PrintWriter pw = new PrintWriter(bw,true);
			
			
			for(int i = 0 ; i < index.length ; i++){
				
				if(index[i] != 0){
					
					pw.printf( String.valueOf(i));
					bw.newLine();
					
				}		
				
			}	
			
			pw.flush();
			pw.close();
			
		
			
			//out.println("설문완료");
			
			
			
		}catch(Exception e){
			
			out.println(e);
		
			
		}
		
		
	
	%>
<table  align="center" style="text-align:center">
	<tr>
		<td>
			<h3> 당신의 두피 타입은, &nbsp;</h3> 
			<h2><% 
			
			
			for(int i = 0 ; i < index.length ; i++){
				
				if(index[i] != 0) {
					
					%>
					
					
					
					<%=" "+typeName[i]+" "%>
					
					<%
					
				}
				
			}
			
			
			%>
			</h2>
			
		
		</td>
	</tr>
	
	<tr style="text-align:center">
		<td>
		
	
	
	
		
		
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
					%>
					
					
					
					
					<% 
					for(int i = 0 ; i < index.length;i++){
					
						info.trim();
						
						if(index[i] != 0 && (info.substring(0,1)).equals(String.valueOf(i))){

							out.println("<br><br>"+info.substring(1));
						
						}
					
					}	
					%>
					
					
					<%
				}
	
			}
		%>
		
		


	</td>
	</tr>
	
</table>

</body>
</html>