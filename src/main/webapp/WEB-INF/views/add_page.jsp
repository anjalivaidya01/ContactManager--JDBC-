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
    justify-content: center;
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

.form-container {
    background-color: #fff;
    padding: 20px;
    border-radius: 8px;
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
    width: 300px;
}

table {
    width: 100%;
    border-collapse: collapse;
}

td {
    padding: 10px;
    vertical-align: middle;
}

input[type="text"] {
    width: calc(100% - 20px);
    padding: 8px;
    margin: 4px 0;
    border: 1px solid #ccc;
    border-radius: 4px;
}

input[type="submit"] {
    background: linear-gradient(to right, #ff416c, #ff4b2b);
    color: white;
    padding: 10px 20px;
    border: none;
    border-radius: 4px;
    cursor: pointer;
    font-size: 16px;
    width: 100%;
    margin-top: 10px;
    transition: background 0.3s ease;
}

input[type="submit"]:hover {
    background: linear-gradient(to right, #ff4b2b, #ff416c);
}
   
</style>

<body>
	<a href="home_page">HOME</a>
	<h1>IT'S AN ADD PAGE</h1>
	<div align="center">
		<form action="add_contact" method="post">
			<table>
				<tr>
					<td>FIRST NAME</td>
					<td><input type="text" name="firstName" required="required"></td>
				</tr>
				<tr>
					<td>LAST NAME</td>
					<td><input type="text" name="lastName" required="required"></td>
				</tr>
				<tr>
					<td>EMAIL</td>
					<td><input type="text" name="email" required="required"></td>
				</tr>
				<tr>
					<td>MOBILE</td>
					<td><input type="text" name="mobile" required="required"></td>
				</tr>
			</table>
			<input type="submit" value="ADD">
		</form>
	</div>
</body>
</html>