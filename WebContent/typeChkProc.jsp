<%@page import="java.io.BufferedReader"%>
<%@page import="java.io.FileReader"%>
<%@page import="java.io.InputStreamReader"%>
<%@page import="java.io.FileInputStream"%>
<%@page import="java.io.File"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

<link rel="stylesheet" type="text/css" href="css/type.css">

<script>
	function check() {

		var flag = flase;

		var values = document.getElementsByName("list");
		alert(values.length);

		for (var i = 0; i < values.length; i++) {

			if (values[i].checked) {

				alert(values[i].value);

			}

		}

		return flag;
	}
</script>

</head>
<body>


	<div style="margin-left: 100px;">

		<h1>나의 두피 타입 체크하기</h1>
		<h4>총 15개의 문항에 응답해주세요. 응답후 자신의 두피 타입에 맞는 관리법을 제시합니다. (1개 이상
			체크해주세요.)</h4>
		<br>


		<table id="chcList">
			<tr id="list">
				<td>
					<form action="typeResult.jsp" method="post">

						<%
							request.setCharacterEncoding("utf-8");
						
							String filePath = application.getRealPath("/WEB-INF/type.txt");

							File file = new File(filePath);

							FileReader filereader = new FileReader(file);
							//BufferedReader bufReader = new BufferedReader(filereader);
							BufferedReader bufReader = new BufferedReader(new InputStreamReader(new FileInputStream(file),"utf-8"));

							String question = "";

							int index = 0;

							while (true) {

								question = bufReader.readLine();
								if (question == null)
									break;

								if (index == 7) {
						%>
					
				</td>
				<td style="border-left: 2px solid #26547C">
					<%
						}
					%> <input type="checkbox" name="list" value=<%=index%>> <%
 	out.print(question + "<br>");
 		index++;

 	}
 %>


				</td>
			</tr>

			<br>


			<tr id="buttonArea">
				<td colspan="2"><input type="submit" value="완료" id="submit"
					onclick="return check()"></td>
			</tr>
			</form>


		</table>




	</div>



</body>
</html>