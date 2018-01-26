<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<% request.setCharacterEncoding("EUC-KR"); %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>

<form method="post"></form>
작성자:
<input type="text" name="name" size="30" value="<%=request.getParameter("name")%>"><br>
제목:
<input type="text" name="subject" value="<%=request.getParameter("name")%>"><br>
<textarea rows="10" cols="30" name="text"><%=request.getParameter("text")%></textarea>
<p/>
<input type="text" name="pwd" value="<%=request.getParameter("pwd")%>"><br>
<input type="text" name="tel" value="<%=request.getParameter("tel")%>">
</body>
</html>