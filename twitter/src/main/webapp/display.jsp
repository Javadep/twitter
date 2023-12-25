<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
       <%@page import="java.sql.*" %>
   <%@page import="java.io.*,javax.servlet.ServletException,javax.servlet.http.*,com.oreilly.servlet.MultipartRequest" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script></head>
<body>
<table border="2px">
<tr>
<th>Id</th>
<th>Name</th>
<th>email</th>
<th>photo</th>
</tr>
<%
Class.forName("com.mysql.cj.jdbc.Driver");
Connection shiv=DriverManager.getConnection("jdbc:mysql://localhost:1234/fcroad","root","");
Statement stmt=shiv.createStatement();
ResultSet rs=stmt.executeQuery("select * from jmroad");
while(rs.next())
{
	%>
	<tr>
	<td><%=rs.getInt(1) %></td>
	<td><%=rs.getString(2) %></td>
	<td><%=rs.getString(3) %></td>
	<td><img class="image-thumbnali npm" src="ganesh\<%=rs.getString(4)%>"width:200px; height:200px; /></td>
	</tr>

<%
}
%>	
</table>
</body>
</html>