<%@page import="javax.sql.DataSource"%>
<%@page import="javax.naming.Context"%>
<%@page import="javax.naming.InitialContext"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
      import = "java.sql.*"    
%>
<%
   //-------------------------------------------------------------------
   //DBCP를 사용한 DB연동
   
   Context initCtx = new InitialContext();
   Context envCtx = (Context) initCtx.lookup("java:comp/env");
   DataSource ds = (DataSource) envCtx.lookup("jdbc/jjjch0723");
   Connection con = ds.getConnection();
   
 //-------------------------------------------------------------------
   // 3. DB에 연결
   String sql = "select id, name, pwd from login";
   Statement stmt = con.createStatement();
   ResultSet rs = stmt.executeQuery(sql);
   
   // 4. 결과 겟에서 데이터 추출하기
   String id = "";
   String name = "";
   String pwd = "";
   %>
<!DOCTYPE html>
<html>
<head>
   <meta charset="UTF-8">
   <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
  <script src="https://cdn.jsdelivr.net/npm/jquery@3.6.0/dist/jquery.slim.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
   <title>DB 연결</title>
</head>
<body>
	<h2>사용자 목록</h2>
	<table class="table table-striped">
		<tr>
			<th>id</th>
			<th>name</th>
			<th>pwd</th>
		</tr>
		<tr>
		
<%
   while(rs.next()){
	   id = rs.getString("id");
	   name = rs.getString("name");
	   pwd = rs.getString("pwd");
   
%>
   <td><a href="updateForm.jsp?id=<%=id %>">   <%=id %>   </a></td>
   <td><%=name %></td>
   <td><%=pwd %></td>
   </tr>
<% }
   // 5. DB 연결 해지
   stmt.close();
   con.close(); 
%>
	</table>
</body>
</html>