
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<% request.setCharacterEncoding("UTF-8"); %>
<html>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>W3.CSS</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<body>

<div class="w3-container">
  <h2>W3.CSS Login Modal</h2>

  <button onclick="document.getElementById('id01').style.display='block'" class="w3-button w3-red w3-small">Login</button>

  <div id="id01" class="w3-modal">
    <div class="w3-modal-content w3-card-4 w3-animate-zoom" style="max-width:600px">
  
      <div class="w3-center"><br>
        <span onclick="document.getElementById('id01').style.display='none'" class="w3-button w3-xlarge w3-transparent w3-display-topright" title="Close Modal">×</span>
      
      </div>

     
<form class="w3-container" method="post">

이름:<input type="text" name="name" size="10" value="<%=request.getParameter("name")%>"><br>
주소:<input type="text" name="address" size="30" value="<%=request.getParameter("address")%>"><br>
좋아하는 동물:<input type="checkbox" name="pet" value="dog" >강아지
<input type="checkbox" name="pet" value="cat">고양이
<input type="checkbox" name="pet" value="pig"> 돼지
<br>
<input type="submit" value="전송">
 </form>

      <div class="w3-container w3-border-top w3-padding-16 w3-light-grey">
        <button onclick="document.getElementById('id01').style.display='none'" type="button" class="w3-button w3-red w3-small">Cancel</button>
        <span class="w3-right w3-padding w3-hide-small">Forgot <a href="#">password?</a></span>
      </div>

    </div>
  </div>
</div>
            
</body>
</html>
