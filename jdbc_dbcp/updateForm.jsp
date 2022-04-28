<%@page import="java.sql.ResultSet"  import = "java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    	String id = request.getParameter("id");
    
 // 1. JDBC DRIVER 등록
    Class.forName("org.mariadb.jdbc.Driver");
    
    // 2. DB와 연결(Connection) 생성
    String url = "jdbc:mariadb://localhost:3306/jjjch0723db1";
    String user = "jjjch0723";
    String passwd = "1111";
    
    Connection con = DriverManager.getConnection(url, user, passwd);
    
    // 3. DB에 연결
    String sql = "select id, name, pwd from login where id=?";
    PreparedStatement pstmt = con.prepareStatement(sql);
    pstmt.setString(1, id);
    
    ResultSet rs = pstmt.executeQuery();
    
    // 4. 결과 겟에서 데이터 추출하기
    rs.next();
    String name = rs.getString("name");
    String pwd = rs.getString("pwd");
    %>
<!DOCTYPE html>
<style>
form {
	margin : 700px;
	border : 1px solid #FF0000;
}
</style>
<html>
<head>
	<meta charset="UTF-8">
	<title>로그인</title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
  <script src="https://cdn.jsdelivr.net/npm/jquery@3.6.0/dist/jquery.slim.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
</head>
<body>
	<h2>로그인</h2>
	<form name="login" action="updatePro.jsp" method="post">
			아이디 : <input type="text" name="id" value="<%=id%>"><br>
			이름 : <input type="text" name="name" value="<%=name%>"><br>
			암호 : <input type="password" name ="pwd" value="<%=pwd%>"><br>
			
			<input type="submit" value="변경저장" class="btn btn-primary">
			<button type="button" onclick="location.href = 'delete.jsp?id=<%=id %>'" class="btn btn-primary">삭제</button>
			<button type="button" onclick="location.href='list.jsp'" class="btn btn-primary">사용자 조회</button>
	</form>
</body>
</html>