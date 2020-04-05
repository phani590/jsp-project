<html>  
<body>  
<%   
  
String name=(String)session.getAttribute("user");  
out.print("Hello "+name);  

String name1=(String)pageContext.getAttribute("user",PageContext.SESSION_SCOPE);  
out.print("<br> Hello "+name1);  
  
%>  
</body>  
</html>  