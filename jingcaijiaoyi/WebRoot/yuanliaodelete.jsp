<%@ page language="java" import="java.util.*,java.sql.*,jc.*" pageEncoding="gb2312"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
   </head>
  
  <body>
   <%   DBUtil db=new DBUtil();
   		request.setCharacterEncoding("gb2312");
    	String id=request.getParameter("id");
    	if (id==null){
    		return;
    	}
    		int nid=Integer.parseInt(id);
	    	String sql="delete from yuanliao where ÐòºÅ="+nid;
	    	db.executeUpdate(sql);
	    	db.close();
	    	%>
	    	
    <%
    response.setHeader("Refresh","0;url=yuanliao.jsp");
	    %>
  </body>
</html>
