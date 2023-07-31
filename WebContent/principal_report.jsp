
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body bgcolor="#D3D3D3">
<center>
<div class="w3-content w3-section" style="max-width:500px">
  <img class="report" src="images/report1.jpg" style="width:100%" height="100%">
  <img class="report" src="images/report2.jpg" style="width:100%" height="100%">
  <img class="report" src="images/report3.jpg" style="width:100%" height="100%">
   <img class="report" src="images/report4.png" style="width:100%" height="100%">
</div>

<script>
var myIndex = 0;
carousel();

function carousel() {
  var i;
  var x = document.getElementsByClassName("report");
  for (i = 0; i < x.length; i++) {
    x[i].style.display = "none";  
  }
  myIndex++;
  if (myIndex > x.length) {myIndex = 1}    
  x[myIndex-1].style.display = "block";  
  setTimeout(carousel, 2000); // Change image every 2 seconds
}
</script>
</center>
</body>
</html>