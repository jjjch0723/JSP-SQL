<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<% request.setCharacterEncoding("utf-8"); %>
	
	<%int kor = Integer.parseInt(request.getParameter("kor")); %>
	<%int eng = Integer.parseInt(request.getParameter("eng")); %>
	<%int math = Integer.parseInt(request.getParameter("math")); %>
	<%int total = kor + eng + math; %>
	<%float avg = (float)total/3; %>
	
	국어 : <%=kor %><br>
	영어 : <%=eng %><br>
	수학 : <%=math %><br>
	총점 : <%=total %><br>
	평균 : <%=String.format("%.2f", avg)%>
</body>
</html>

