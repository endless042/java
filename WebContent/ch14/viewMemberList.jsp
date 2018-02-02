<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>

<%@page import="java.sql.ResultSet"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>회원 목록</title>
</head>
<body>
MEMBER 테이블의 내용
<table width="100%" border="1">
<tr>
<td>아이디</td><td>이름</td><td>이메일</td>
</tr>
<%
//1.JDBC 드라이버 로딩
Class.forName("oracle.jdbc.driver.OracleDriver");

Connection conn=null;
Statement stmt=null;
ResultSet rs=null;

try{
	String jdbcDriver = "jdbc:oracle:thin:@localhost:1521:orcl";
	String dbUser="scott";
	String dbPass="tiger";
	
	String query="select * from MEMBER";
	
	//2.데이터베이스 커넥션 생성
	conn=DriverManager.getConnection(jdbcDriver, dbUser, dbPass);
	
	//3.Statement 생성
	stmt=conn.createStatement();
	
	//4.쿼리 실행
	rs=stmt.executeQuery(query);
	
	//5.쿼리 실행 결과 출력
	while(rs.next()){
		%>
		<tr><td><%=rs.getString(1) %></td>
		
		<td><%=rs.getString(3) %></td>
		<td><%=rs.getString(4) %></td></tr>
	<%}
	
}catch(SQLException e){
	out.println(e.getMessage());
	e.printStackTrace();
}finally{
	//6.사용한 Statement 종료
	if(rs!=null)try{rs.close();}catch(SQLException e){}
	if(stmt!=null)try{stmt.close();}catch(SQLException e){}
	
	//7.커넥션 종료
	if(conn!=null)try{conn.close();}catch(SQLException e){}
}
%>
</table>
</body>
</html>