<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<% request.setCharacterEncoding("EUC-KR"); %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>


<style type="text/css">
body{
align-items: center;
font-size: 10pt;
}
div {

size: 500px;
}
ul{

list-style:none;

}
li{
padding:5px;}
</style>
</head>
<body>
<table align="center" style="border: dashed 1px; background-color: lightblue;">
<tr><td style="text-align: center; font-size: 15pt; padding-top: 10px;"><b>게시물 작성</b></td></tr>
<tr><td>
<div style="width: 550px;">

<form method="post">
<ul>
<li><b>작성자:</b>
<input type="text" name="name" size="20" 
value="<%=request.getParameter("name")==null?"":request.getParameter("name")%>"></li>
<li><b>전화번호: </b><input type="text" name="tel" 
value="<%=request.getParameter("tel")==null?"":request.getParameter("tel")%>"></li>
<li><b>제 목 : </b>
<input type="text" name="subject" size="50" 
value="<%=request.getParameter("subject")==null?"":request.getParameter("subject")%>"></li>

<li><textarea rows="20" cols="60" name="text" >
<%=request.getParameter("text")==null?"":request.getParameter("text")%></textarea></li>

<li><b>비밀번호: </b><input type="password" name="pwd" 
value="<%=request.getParameter("pwd")==null?"":request.getParameter("pwd")%>"></li>

<li><input type="submit" value="전송"></li>

</ul>
</form>

</div>
</td>
</tr>
</table>
</body>
</html>