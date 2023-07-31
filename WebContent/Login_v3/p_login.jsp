<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
 pageEncoding="ISO-8859-1"%>
  <%@ page import ="java.sql.*,java.util.*" %>
	<%@ page import ="javax.sql.*" %>
 <% String username=request.getParameter("username");         
 String pass=request.getParameter("pass");
 try{	
	 String connectionURL = "jdbc:mysql://localhost:3306/sms";
     Connection connection = null; 
     Class.forName("com.mysql.jdbc.Driver").newInstance(); 
     connection = DriverManager.getConnection(connectionURL, "root", "mysql");
     Statement stmt = connection.createStatement();
     ResultSet rs=null;
     if(!connection.isClosed()){
    	// int i=stmt.executeUpdate("insert into login values('"+username+"','"+pass+"')");
    	 if(username.equals("ashu") &&  pass.equals("ashu@123"))
    	 {%>
    	 <script type="text/javascript">
    	 alert("Data is successfully inserted!");
    	 </script>
    	<% }
    	 else { %>
    		 <script type="text/javascript">
    	 alert("Data is not successfully inserted!");
    	 </script>  
    	<% }  		
		}
    }
 catch(Exception ex){
    out.println("Unable to connect to database"+ex);
 }
%>
 
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
</body>
</html>