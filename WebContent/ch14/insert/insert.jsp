<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%request.setCharacterEncoding("UTF-8"); 

String memberID=request.getParameter("memberID");
String password=request.getParameter("password");
String name=request.getParameter("name");
String email=request.getParameter("email");

Class.forName("oracle.jdbc.driver.OracleDriver");

Connection conn=null;
PreparedStatement pstmt=null;

try{
	
	String jdbcDriver = "jdbc:oracle:thin:@localhost:1521:orcl";
	String dbUser="scott";
	String dbPass="tiger";
	
	String query="select * from MEMBER";
	
	conn=DriverManager.getConnection(jdbcDriver, dbUser, dbPass);
	pstmt=conn.prepareStatement("insert into MEMBER values(?,?,?,?)");
	pstmt.setString(1, memberID);
	pstmt.setString(2,password);
	pstmt.setString(3,name);
	pstmt.setString(4, email);
	
	pstmt.executeUpdate();
	
	
}finally{
	if(pstmt!=null)try{pstmt.close();}catch(SQLException e){}
	if(conn!=null)try{conn.close();}catch(SQLException e){}
	
}


%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>삽입</title>
</head>
<body>
MEMBER 테이블에 새로운 레코드를 삽입했습니다.
</body>
</html>