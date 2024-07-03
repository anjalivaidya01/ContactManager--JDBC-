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

h1 {
    text-align: center;
    color: #555;
}

nav {
    text-align: center;
}

nav a {
    color: #fff;
    background: linear-gradient(to right, #ff416c, #ff4b2b);
    padding: 10px 20px;
    border-radius: 5px;
    margin: 0 5px;
    text-decoration: none;
    font-weight: bold;
    transition: background-color 0.3s;
}

nav a:hover {
    background: linear-gradient(to right, #ff4b2b, #ff416c);
}


</style>
<body>
	<div align="center">
		<nav>
			<a href="add_page">ADD</a> <a href="contacts_page">CONTACTS</a> <a
				href="edit_page">EDIT</a> <a href="delete_page">DELETE</a> <a
				href="signout">SIGN OUT</a><a href="delete_user">DELETE USER</a>
				
		</nav>
		<h1>WELCOME TO CONTACT MANAGER APPLICATION</h1>
	</div>
</body>
</html>