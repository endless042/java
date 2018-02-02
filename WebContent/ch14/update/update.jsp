<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<% 
request.setCharacterEncoding("utf-8");

	String memberID=request.getParameter("memberID");
	String name=request.getParameter("name");
	
	int updateCount=0;
	
	Class.forName("oracle.jdbc.driver.OracleDriver");
	
	Connection conn=null;
	Statement stmt=null;
	
	try{
		String jdbcDriver = "jdbc:oracle:thin:@localhost:1521:orcl";
		String dbUser="scott";
		String dbPass="tiger";
		
		String query="update MEMBER set NAME = '"+name+"' "+"where MEMBERID= '"+memberID+"'";
		
		conn=DriverManager.getConnection(jdbcDriver, dbUser, dbPass);
		stmt=conn.createStatement();
		updateCount=stmt.executeUpdate(query);
		
	}finally{
		if(stmt!=null)try{stmt.close();}catch(SQLException ex){}
		if(conn!=null)try{conn.close();}catch(SQLException ex){}
	}
	
	%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>이름 변경</title>
</head>
<body>
<% if(updateCount >0 ){ %>
<%=memberID %>의 이름을 <%=name %>(으)로 변경
<% }else{ %>
<%=memberID %>아이디가 존재하지 않음 
<%} %>
</body>
</html>