<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>이름 변경 폼</title>
</head>
<body>
<b>추가</b><p>
<form action="/jspPro/ch14/update/updatehistoryinsert.jsp" method="post">

아이디<br>
<input type="text" name="memberID" size="10"><p/>

히스토리<br>
<textarea rows="20" cols="40" name="history"></textarea><p/>


<input type="submit" value="추가">



</form>
</body>
</html>