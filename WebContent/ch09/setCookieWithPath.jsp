<%@page import="java.net.URLDecoder"%>
<%@page import="java.net.URLEncoder"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<%
 Cookie cookie1=new Cookie("path1",URLEncoder.encode("경로:/ch09/path1", "utf-8"));
cookie1.setPath("/ch09/path1");
response.addCookie(cookie1);

Cookie cookie2=new Cookie("path2", URLEncoder.encode("경로:", "utf-8"));
response.addCookie(cookie2);

Cookie cookie3=new Cookie("path3", URLEncoder.encode("경로:/", "utf-8"));
cookie3.setPath("/");
response.addCookie(cookie3);

Cookie cookie4=new Cookie("path4", URLEncoder.encode("경로:/ch09/path2", "utf-8"));
cookie4.setPath("/ch09/path2");
response.addCookie(cookie4);
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>쿠키 경로 지정</title>
</head>
<body>
 
 다음과 같이 쿠키를 생성했습니다.<br>
 
 <%=cookie1.getName() %>=<%=URLDecoder.decode(cookie1.getValue(), "utf-8") %>
 
 [<%=cookie1.getPath() %>]
 <br>
 <%=cookie2.getName() %>=<%=URLDecoder.decode(cookie2.getValue(), "utf-8") %>
 [<%=cookie2.getPath() %>]
 <br>
 <%=cookie3.getName() %>=<%=URLDecoder.decode(cookie3.getValue(), "utf-8") %>
 [<%=cookie3.getPath() %>]
 <br>
 <%=cookie4.getName() %>=<%=URLDecoder.decode(cookie4.getValue(), "utf-8") %>
 [<%=cookie4.getPath() %>]

 
</body>
</html>