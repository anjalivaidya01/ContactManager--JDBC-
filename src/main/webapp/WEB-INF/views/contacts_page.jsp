<%@page import="com.jspiders.springmvc1.dto.ContactDTO"%>
<%@page import="java.util.List"%>
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
    background-color: #f4f4f4;
    margin: 0;
    padding: 0;
    display: flex;
    flex-direction: column;
    align-items: center;
    height: 100vh;
    
}

a {
    text-decoration: none;
    color: #3498db;
    font-size: 16px;
    margin-bottom: 20px;
    display: inline-block;
}

h1 {
    font-size: 24px;
    color: #333;
    text-align: center;
    margin-bottom: 20px;
}

.message {
    text-align: center;
    font-size: 18px;
    color: #e74c3c;
    margin-bottom: 20px;
}

table {
    width: 80%;
    border-collapse: collapse;
    margin-bottom: 20px;
    background-color: #fff;
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
    border-radius: 8px;
    overflow: hidden;
}

th, td {
    padding: 12px 15px;
    text-align: left;
}

th {
    background: linear-gradient(to right, #ff416c, #ff4b2b);
    color: white;
    font-weight: bold;
}

tr:nth-child(even) {
    background-color: #f2f2f2;
}

tr:hover {
    background-color: #f5f5f5;
}

td {
    border-bottom: 1px solid #ddd;
}

input[type="submit"] {
    background: linear-gradient(to right, #2ecc71, #27ae60);
    color: white;
    padding: 10px 20px;
    border: none;
    border-radius: 4px;
    cursor: pointer;
    font-size: 16px;
    transition: background 0.3s ease;
}

input[type="submit"]:hover {
    background: linear-gradient(to right, #27ae60, #2ecc71);
}
    
</style>
<body>
<a href="home_page">HOME</a>
	<h1>IT'S A CONTACTS PAGE</h1>
	<%
	@SuppressWarnings("unchecked")
	List<ContactDTO> contacts = (List<ContactDTO>) request.getAttribute("contacts");
	if (contacts != null) {
	%>
	<table>
		<tr>
			<th>ID</th>
			<th>FIRST NAME</th>
			<th>LAST NAME</th>
			<th>EMAIL</th>
			<th>MOBILE</th>
		</tr>
		<%
		for (ContactDTO contact : contacts) {
		%>
		<tr>
			<td><%=contact.getId()%></td>
			<td><%=contact.getFirstName()%></td>
			<td><%=contact.getLastName()%></td>
			<td><%=contact.getEmail()%></td>
			<td><%=contact.getMobile()%></td>
		</tr>
		<%
		}
		%>
	</table>
	<%
	}
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