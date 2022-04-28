<%@page import="javafx.scene.control.Alert"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import = "java.sql.*"
%>
<%
//-------------------------------------------------------------
	request.setCharacterEncoding("UTF-8");
	String id = request.getParameter("id");
	String name = request.getParameter("name");
	String passwd = request.getParameter("pwd");
//-------------------------------------------------------------
    
 // 1. JDBC DRIVER 등록
    Class.forName("org.mariadb.jdbc.Driver");
    
    // 2. DB와 연결(Connection) 생성
    String url = "jdbc:mariadb://localhost:3306/jjjch0723db1";
    String user = "jjjch0723";
   	String pwd = "1111";
    
    Connection con = DriverManager.getConnection(url, user, pwd);

   	String sql = "insert into login(id, name, pwd) values(?, ?, ?)";
    
    PreparedStatement pstmt = con.prepareStatement(sql);
    pstmt.setString(1, id);
    pstmt.setString(2, name);
    pstmt.setString(3, passwd);
    pstmt.executeUpdate();
    
    pstmt.close();
    con.close();
    
    response.sendRedirect("list.jsp");
%>
