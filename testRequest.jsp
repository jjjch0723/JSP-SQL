<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	서버이름 : <%= request.getServerName() %><br>
	프로토콜 : <%= request.getProtocol() %><br>
	URL : <%= request.getRequestURL() %><br>
	URI : <%= request.getRequestURI() %>
	
	<%
		response.sendRedirect("login.jsp");
	%>
	<!-- 
	response객체 -> 쿠키 만듦 
	-->
</body>
</html>