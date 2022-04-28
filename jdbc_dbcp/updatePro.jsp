<%@page import="javafx.scene.control.Alert"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import = "java.sql.*"
%>

<% 	
//-------------------------------------------------------------
	request.setCharacterEncoding("UTF-8");
//-------------------------------------------------------------
	String id = request.getParameter("id");
	String name = request.getParameter("name");
	String passwd = request.getParameter("pwd");
//-------------------------------------------------------------
   // 1. JDBC DRIVER 등록
   Class.forName("org.mariadb.jdbc.Driver");
   
   // 2. DB와 연결(Connection) 생성
   String url = "jdbc:mariadb://localhost:3306/jjjch0723db";
   String user = "jjjch0723db";
   String pwd = "1111";
   
   // 2.1 커넥션 얻기
   Connection con = DriverManager.getConnection(url, user, pwd);
   
   // 3. SQL실행할 준비
   //String sql = "insert into login(id, pwd) value('" + id +"', '" + passwd +"')";
   //Statement stmt = con.createStatement();
   String sql = "update login set name = ?, pwd = ? where id = ?";
   
   // 4. DB에 연결
   PreparedStatement pstmt = con.prepareStatement(sql);
   pstmt.setString(1, name);
   pstmt.setString(2, pwd);
   pstmt.setString(3, id);
   
   pstmt.executeUpdate();
   
   //int i = stmt.executeUpdate(sql);
   
   // 5. DB 연결 해지
   pstmt.close();
   con.close();
   
   // 
   //response.sendRedirect("list.jsp");
%>

<script>
	let ans = alert("변경되었습니다");
	if(!ans)
		location.href = 'list.jsp';
</script>
