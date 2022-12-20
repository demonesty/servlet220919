<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	int length = Integer.parseInt(request.getParameter("length"));
	String[] types = request.getParameterValues("type");
		
		
%>
	<div class="container">
		<h1>길이 변환 결과</h1>
		
		<h3><%=cm%>cm</h3>
		<hr>
		<h2>
		<%
			for (String type : types) {
				if (type.equals("inch")) {
					double inch = cm * 0.39;
					out.print(inch + " in <br>");
				} else if (type.equals("yard")) {
					double yard = cm * 0.010936133;
					out.print(yard + " yd <br>");
				} else if (type.equals("feet")) {
					double feet = cm * 0.032808399;
					out.print(feet + " ft <br>");
				} else if (type.equals("meter")) {
					double meter = cm / 100.0;
					out.print(meter + " m <br>");
				}
			}
		%>
		</h2>
	</div>
</body>
</html>