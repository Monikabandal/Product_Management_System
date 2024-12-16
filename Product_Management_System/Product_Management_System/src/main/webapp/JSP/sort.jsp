<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>View Products</title>
<style>
body {
	font-family: 'Arial', sans-serif;
	background-color: #f4f7fc;
	color: #333;
	display: flex;
	justify-content: center;
	align-items: center;
	min-height: 100vh;
	margin: 0;
	padding: 0;
}

.container {
	width: 90%;
	max-width: 1000px;
	background: #fff;
	border-radius: 8px;
	padding: 20px;
	box-shadow: 0 8px 16px rgba(0, 0, 0, 0.1);
}

.header {
	text-align: center;
	font-size: 32px;
	font-weight: bold;
	color: #6c5ce7;
	margin-bottom: 30px;
}

table {
	width: 100%;
	border-collapse: collapse;
	margin: 20px 0;
	box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
}

th {
	background-color: #6c5ce7;
	color: white;
	padding: 12px;
	text-align: center;
	font-size: 16px;
	text-transform: uppercase;
}

td {
	padding: 10px;
	text-align: center;
	font-size: 14px;
	border: 1px solid #ddd;
	background-color: #f9f9f9;
}

td:hover {
	background-color: #f1f1f1;
}

button {
	padding: 10px 20px;
	border: none;
	background-color: #ff6b6b;
	color: white;
	font-size: 14px;
	border-radius: 5px;
	cursor: pointer;
	transition: all 0.3s ease;
}

button:hover {
	background-color: #e84118;
}

.actions {
	text-align: center;
	margin-top: 20px;
}

.actions button {
	margin: 10px;
	padding: 14px 30px;
	font-size: 16px;
	background-color: BLACK;
	color: white;
	border-radius: 10px;
	cursor: pointer;
	transition: all 0.3s ease;
}

.actions button:hover {
	background-color: #00cec9;
}
</style>
</head>
<body>
	<div class="container">
		<div class="header">View Products</div>
		<form>
			<table>
				<thead>
					<tr>
						<th>SELECT</th>
						<th>ID</th>
						<th>NAME</th>
						<th>PRICE</th>
						<th>DESCRIPTION</th>

					</tr>
				</thead>
				<tbody>

					<c:forEach items="${prod}" var="p">
						<tr>
							<td><input type="radio" name="id" value="${p.id}"></td>
							<td>${p.id}</td>
							<td>${p.name}</td>
							<td>${p.price}</td>
							<td>${p.description}</td>
						</tr>
					</c:forEach>
				</tbody>
			</table>

			<div class="actions">
				<button type="submit" formaction="/">BACK</button>


			</div>
	</div>
	</form>
</body>
</html>
