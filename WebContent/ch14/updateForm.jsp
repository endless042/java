<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>이름 변경 폼</title>
</head>
<body>
<b>수정</b>
<p>
<form action="/jspPro/ch14/update/update.jsp" method="post">
<table border="0">
<tr>
<td>아이디</td>
<td><input type="text" name="memberID" size="20"></td>
<td>이름</td>
<td><input type="text" name="name" size="15"></td>
</tr>
<tr>
<td colspan="4" align="right"><input type="submit" value="변경"></td>

</table>

</form>
<p>
<hr>
<b>추가</b><p>
<form action="/jspPro/ch14/update/updateinsert.jsp" method="post">
<table border="0">
<tr>
<td>아이디</td>
<td><input type="text" name="memberID" size="10"></td>
<td>이름</td>
<td><input type="text" name="name" size="10"></td>
</tr>
<tr>
<td>비밀번호</td>
<td><input type="text" name="password" size="10"></td>
<td>이메일</td>
<td><input type="text" name="email" size="20"></td>
</tr>
<tr>
<td colspan="4" align="right"><input type="submit" value="추가"></td>

</table>

</form>
</body>
</html>