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
String u,p,cp;
u=request.getParameter("t1");
p=request.getParameter("t2");
cp=request.getParameter("t3");
Class.forName("com.mysql.cj.jdbc.Driver");
Connection shiv=DriverManager.getConnection("jdbc:mysql://localhost:1234/twitter","root","");
if(p.equals(cp))
{

PreparedStatement p2= shiv.prepareStatement("insert into reg (username,pass,cpass)values('"+u+"','"+p+"','"+cp+"')");
int t=p2.executeUpdate();
if(t>0)
{
	out.println("<script>window.alert.('registration success')</script>");
	out.println("<script>window.location.href='login.html'</script>");
}
}
else
{
	response.sendRedirect("fail.jsp");
}



%>

</body>
</html>