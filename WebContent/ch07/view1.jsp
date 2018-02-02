<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>

</head>
<body>
<%String code=request.getParameter("code");
String viewPageURL=null;

if(code.equals("A")){
	viewPageURL="/ch07/viewModule/a.jsp";
}else if(code.equals("B")){
	viewPageURL="/ch07/viewModule/b.jsp";
}else if(code.equals("C")){
	viewPageURL="/ch07/viewModule/c.jsp";
}
%>

<jsp:forward page="<%=viewPageURL %>"></jsp:forward>
</body>
</html>