<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Insert title here</title>
	<style type="text/css">
		* {
			margin: 0;
			padding: 0;
			font-family: 'popins', sans-serif;
			box-sizing: border-box;
		}

		body {
			display: flex;
			justify-content: center;
			align-items: center;
			height: 100vh;
			background-color: #f5f5f5;
		}

		form {
			width: 50%; 
			text-align: left;
		}

		table {
			background: #e7e6e6;
			width: 50%; 
			
			margin: 0 auto; /
			border-collapse: collapse;
		}

		tr:nth-child(even) {
			background-color: #f2f2f2;
		}

		table, th, td {
			border: 1px solid;
			border-style: groove;
		}

		table td {
			padding: 20px;
		}

		.upbtn {
			width: 50%; 
			margin-top: 10px;
			height: 5vh;
			border-radius: 20px;
			color: #e7e6e6;
			background: #31f434;
			border: none;
			font-weight: bolder;
			margin-left:185px
		}

		.upbtn:hover {
			cursor: pointer;
			background: rgb(170, 167, 167);
		}
	</style>
</head>
<body>

	<%
		String id = request.getParameter("id");
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String phone = request.getParameter("phone");
		String userName = request.getParameter("uname");
		String password = request.getParameter("pass");
	%>
	
	
	<form action="update" method="post">
	<table>
		<tr>
			<td>Customer ID</td>
			<td><input type="text" name="cusid" value="<%= id %>" readonly></td>
		</tr>
		<tr>
			<td>Name</td>
			<td><input type="text" name="name" value="<%= name %>"></td>
		</tr>
		<tr>
		<td>Email</td>
		<td><input type="text" name="email" value="<%= email %>"></td>
	</tr>
	<tr>
		<td>Phone number</td>
		<td><input type="text" name="phone" value="<%= phone %>"></td>
	</tr>
	<tr>
		<td>User name</td>
		<td><input type="text" name="uname" value="<%= userName %>"></td>
	</tr>
	<tr>
		<td>Password</td>
		<td><input type="password" name="pass" value="<%= password %>"></td>
	</tr>		
	</table>
	<br>
	<input type="submit" name="submit" value="Update My Data" class="upbtn">
	</form>

</body>
</html>