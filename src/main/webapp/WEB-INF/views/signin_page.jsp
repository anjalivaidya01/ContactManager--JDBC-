<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<style>
body {
    font-family: Arial, sans-serif;
    background-color: #f9f9f9;
    margin: 0;
    padding: 0;
}

h2 {
    text-align: center;
    color: #555;
}

form {
    background-color: #fff;
    border-radius: 8px;
    padding: 20px;
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
    text-align: center;
    width: 300px;
    margin: 0 auto;
}

table {
    width: 100%;
}

table td {
    padding: 10px;
}

input[type="text"] {
    width: calc(100% - 20px);
    padding: 10px;
    margin-top: 8px;
    margin-bottom: 20px;
    border: 1px solid #ccc;
    border-radius: 4px;
    box-sizing: border-box;
}

.btn-gradient {
    background: linear-gradient(to right, #00c6ff, #0072ff);
    border: none;
    border-radius: 4px;
    color: white;
    padding: 10px 20px;
    text-align: center;
    display: inline-block;
    margin: 10px;
    cursor: pointer;
    transition: background 0.3s ease;
    text-decoration: none; /* Remove underlines */
}

.btn-gradient:hover {
    background: linear-gradient(to right, #0072ff, #00c6ff);
}


</style>
<body>
	<div align="center">
		<h2>SIGN IN</h2>
		<form action="check_user" method="post">
			<table>
				<tr>
					<td>EMAIL</td>
					<td><input type="text" name="email" required="required"></td>
				</tr>
				<tr>
					<td>PASSWORD</td>
					<td><input type="text" name="password" required="required"></td>
				</tr>
			</table>
			<input type="submit" value="SIGN IN">
		</form>
		<h4>
			New user?<a href="signup_page">Sign up</a>
		</h4>
	</div>
	<%
	String message = (String) request.getAttribute("message");
	if (message != null) {
	%>
	<div align="center">
		<h3><%=message%></h3>
	</div>
	<%
	}
	%>
</body>
</html>