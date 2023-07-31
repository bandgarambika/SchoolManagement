<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*"%>
<%@ page import="javax.sql.*"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="description" content="">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<!-- The above 4 meta tags *must* come first in the head; any other head content must come *after* these tags -->
<!-- Title -->
<title>School Management System</title>
<!-- Favicon -->
<link rel="icon" href="img/core-img/favicon.ico">
<!-- Core Stylesheet -->
<link rel="stylesheet" href="style.css">
<style>
td, th {
	text-align: center;
}

tr {
	height: 30px;
}

th {
	height: 40px;
	background: #a9d0f5;
}

table {
	margin-top: 40px;
}

body {
	background: #ffffff0d;
}

.btn {
	background-color: #61BA6D;
	color: white;
	padding: 7px 25px;
	font-size: 14px;
	cursor: pointer;
}

input[type=submit] {
	height: 45px;
	width: 140px;
	background: #61ba6d;
	color: white;
	font-weight: bold;
}

input[type=button] {
	height: 45px;
	width: 140px;
	background: #61ba6d;
	color: white;
	font-weight: bold;
}
</style>
</head>

<body>

	<div class="main-container">
		<section class="c">
			<div class="container">
				<div class="row">
					<div class="col-md-12">
						<center>
							<h2>Holiday List</h2>
						</center>
						<p></p>
						<div class="content">
							<div
								class="field field-name-body field-type-text-with-summary field-label-hidden">
								<div class="field-items">
									<div class="field-item even" property="content:encoded">
										<div class="row"></div>
										<br>
										<center>
											<table border="2" cellpadding="10" cellspacing="10"
												width="80%">
												<tbody>
													<tr>
														<th width="4%" align="center"><strong>Sr.No.</strong></th>
														<th width="20%" align="left"><strong>Holiday</strong></th>
														<th width="10%" align="center"><strong>Date</strong></th>
														<th width="10%" align="center"><strong>Day</strong></th>
														<th width="10%" align="center"><strong>Action</strong></th>

													</tr>
													<tr>
														<%
														try {

															Class.forName("com.mysql.jdbc.Driver");
															java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/sms", "root", "vijay");
															ResultSet rs;
															PreparedStatement ps = con.prepareStatement("select * from sms.holiday");

															rs = ps.executeQuery();
															while (rs.next()) {
														%>


														<td><%=rs.getString("sr")%></td>
														<td><%=rs.getString("holiday")%></td>
														<td><%=rs.getString("hdate")%></td>
														<td><%=rs.getString("hday")%></td>
														<td><center>
																<a href='editHoliday.jsp?sr=<%=rs.getString("sr")%>'><button
																		class="btn" value="edit">edit</button></a> &nbsp;<a
																	href='deleteHoliday.jsp?sr=<%=rs.getString("sr")%>'><button
																		class="btn" value="delete">Delete</button></a>
															</center></td>

													</tr>

													<%
													}

													} catch (Exception e) {
													e.printStackTrace();
													}
													%>
												</tbody>
											</table>
										</center>


									</div>
								</div>
								<br> <br>
							</div>
		</section>
	</div>

</body>

</html>