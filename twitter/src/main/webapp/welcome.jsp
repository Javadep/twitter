<%
HttpSession s1=request.getSession(false);
String p;
p=(String)s1.getAttribute("abc");

if(p==null || s1.getAttribute("abc")==null)
{
	response.sendRedirect("login.html");
}
%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<h1>welcome dashbord page</h1>
<a href="logout.jsp">logout</a>

</body>
</html>