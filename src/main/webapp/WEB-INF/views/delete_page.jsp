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

#home a {
    text-decoration: none;
    color: #3498db;
    font-size: 16px;
    margin: 20px 0;
    display: inline-block;
}

h2 {
    font-size: 24px;
    color: #333;
    margin-bottom: 20px;
}

form {
    background-color: #fff;
    padding: 20px;
    border-radius: 8px;
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
    width: 300px;
    text-align: center;
    margin-bottom: 20px;
}

form label {
    display: block;
    margin-bottom: 10px;
    font-weight: bold;
}

form input[type="text"] {
    width: calc(100% - 22px);
    padding: 10px;
    margin-bottom: 10px;
    border: 1px solid #ddd;
    border-radius: 4px;
}

form input[type="submit"] {
    background: linear-gradient(to right, #f6d365, #fda085);
    color: #fff;
    padding: 10px 20px;
    border: none;
    border-radius: 4px;
    cursor: pointer;
    transition: background 0.3s ease;
}

form input[type="submit"]:hover {
    background: linear-gradient(to right, #fda085, #f6d365);
}

table {
    width: 80%;
    border-collapse: collapse;
    margin: 20px 0;
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
    background: linear-gradient(to right, #2980b9, #3498db);
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

.message {
    text-align: center;
    font-size: 18px;
    color: #e74c3c;
    margin-bottom: 20px;
}
   
</style>
<body>
	<div id="home">
		<a href="home_page">HOME</a>
	</div>
	<div align="center">
		<h2>DELETE CONTACT</h2>
		<form action="delete_contact">
			<label>ENTER ID</label> <input type="text" name="id"
				required="required"> <input type="submit" value="DELETE">
		</form>
	</div>
	<%
	@SuppressWarnings("unchecked")
	List<ContactDTO> contacts = (List<ContactDTO>) request.getAttribute("contacts");
	if (contacts != null) {
	%>
	<div align="center">
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
	</div>
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