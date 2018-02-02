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
	String history=request.getParameter("history");

	
	int updateCount=0;
	
	Class.forName("oracle.jdbc.driver.OracleDriver");
	
	Connection conn=null;
	Statement stmt=null;
	
	try{
		String jdbcDriver = "jdbc:oracle:thin:@localhost:1521:orcl";
		String dbUser="scott";
		String dbPass="tiger";
		
		String query="INSERT INTO MEMBER_HISTORY VALUES('"+memberID+"','"+history+"')";
		
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
<title>히스토리 추가</title>
</head>
<body>
<% if(updateCount >0 ){ %>
<%=memberID %>의 정보를 성공적으로 추가함
<% response.sendRedirect("/jspPro/ch14/viewMemberHistory.jsp?memberID="+memberID); %>
<% }else{ %>
추가에 실패함 
<%} %>
</body>
</html>