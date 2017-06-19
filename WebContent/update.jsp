<%@page import="com.java.dao.DatabaseMysql"%>
<jsp:useBean id="u" class="com.java.dao.Employee"></jsp:useBean>  
<jsp:setProperty property="*" name="u"/>  
<%
int i=DatabaseMysql.update(u);
if(i>0)
{
	response.sendRedirect("view.jsp");
}
else
{
	out.println("<p>Not Updated....</p>");
}
%>

