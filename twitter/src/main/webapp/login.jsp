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
<%
String u,p;
u=request.getParameter("t1");
p=request.getParameter("t2");
Class.forName("com.mysql.cj.jdbc.Driver");
Connection shiv=DriverManager.getConnection("jdbc:mysql://localhost:1234/twitter","root","");

Statement stmt=shiv.createStatement();
ResultSet rs=stmt.executeQuery("select* from reg where username='"+u+"'and pass='"+p+"'");
if(rs.next())
{
	HttpSession s1= request.getSession();
	s1.setAttribute("pqr",u);
	out.println("<script>window.alert.('login success')</script>");
	out.print("<script>window.location.href='welcome.jsp'</script>");	
}
else
{
	response.sendRedirect("logout.jsp");
}


%>

</body>
</html>