<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Scripting elements</title>
</head>
<body>

<div>
<h1>Example of JSP scriptlet tag</h1>
<%  
String name=request.getParameter("uname");  
out.print("welcome "+name);  

session.setAttribute("user",name);  

String driver=config.getInitParameter("dname");  
out.print(" <br> driver name is="+driver);  

String driver1=application.getInitParameter("dname");  
out.print("<br> driver name is="+driver1);

pageContext.setAttribute("user",name,PageContext.SESSION_SCOPE);  
%>
<br/>
<a href="second.jsp">second jsp page</a>  
</div>

<div>
<h1>Example of JSP expression tag that prints current time</h1>	
Current Time: <%= java.util.Calendar.getInstance().getTime() %>  
</div>

<div>
  <%! int data=50;
   int cube(int n){  
	  return n*n*n;  
	  }  
  %>  
	<h1>Example of JSP scriptlet tag</h1>
  <%= "Value of the variable is:"+data %> <br/>
  <%= "Cube of 3 is:"+cube(3) %>  
</div>
<div>
<h1>Example of JSP directives</h1>	
<%@ page import="java.util.Date" %> 
Today is: <%= new Date() %> 
</div>
</body>
</html>