<%@page import="com.jspiders.springmvc1.dto.ContactDTO"%>
<%@page import="com.jspiders.springmvc1.dao.ContactDAO"%>
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

#home {
    text-align: center;
    margin-bottom: 20px;
}

#home a {
    text-decoration: none;
    color: #333;
    font-size: 18px;
}

#home a:hover {
    color: #555;
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
}

table {
    width: 100%;
}

table td {
    padding: 10px;
}

input[type="text"] {
    width: calc(100% - 20px);
    padding: 8px;
    margin-top: 8px;
    margin-bottom: 20px;
    border: 1px solid #ccc;
    border-radius: 4px;
    box-sizing: border-box;
}

.btn-gradient {
    background: linear-gradient(to right, #ee0979, #ff6a00);
    border: none;
    border-radius: 4px;
    color: white;
    padding: 10px 20px;
    text-align: center;
    display: inline-block;
    margin: 10px;
    cursor: pointer;
    transition: background 0.3s ease;
}

.btn-gradient:hover {
    background: linear-gradient(to right, #ff6a00, #ee0979);
}


</style>
<body>
	<%
	ContactDTO contact = (ContactDTO) request.getAttribute("contact");
	%>
	<div id="home">
		<a href="home_page">HOME</a>
	</div>
	<div align="center">
		<h2>UPDATE CONTACT</h2>
		<form action="update_contact" method="post">
			<table>
				<tr>
					<td>ID</td>
					<td><input type="text" name="id" readonly="readonly"
						value="<%=contact.getId()%>"></td>
				</tr>
				<tr>
					<td>FIRST NAME</td>
					<td><input type="text" name="firstName" required="required"
						value="<%=contact.getFirstName()%>"></td>
				</tr>
				<tr>
					<td>LAST NAME</td>
					<td><input type="text" name="lastName" required="required"
						value="<%=contact.getLastName()%>"></td>
				</tr>
				<tr>
					<td>EMAIL</td>
					<td><input type="text" name="email" required="required"
						value="<%=contact.getEmail()%>"></td>
				</tr>
				<tr>
					<td>MOBILE</td>
					<td><input type="text" name="mobile" required="required"
						value="<%=contact.getMobile()%>"></td>
				</tr>
			</table>
			<input type="submit" value="UPDATE">
		</form>
	</div>
</body>
</html>