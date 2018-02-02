<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
<!-- MemberInfo member=new MemberInfo();와 같음. member를 request 영역에 저장하는 것  -->
<jsp:useBean id="member" scope="request" class="chap08.member.MemberInfo"/>
<% member.setId("madvirus");
	member.setName("최범균"); %>
	<jsp:forward page="/ch08/useObject.jsp" />
</body>
</html>