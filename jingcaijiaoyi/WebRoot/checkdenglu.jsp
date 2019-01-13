<%@ page language="java" import="java.util.*,java.sql.*,jc.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'checkdenglu.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
    <%
    try{
    boolean bSuccess=false;
    request.setCharacterEncoding("gb2312");
    String name=request.getParameter("name");
    String pwd=request.getParameter("pwd");
    if(name!=null && pwd!=null)
    {
    if(!pwd.equals("")&&!name.equals(""))
    {
    DBUtil db=new DBUtil();
    ResultSet rs=db.executeQuery("select * from user where 用户名='"+name+"' and 密码='"+pwd+"'");
    bSuccess=rs.next();
    if(bSuccess)
    response.sendRedirect("guanlishouye.html");
    db.close();
    }
    }
    if(!bSuccess)
    {
    %>
    <script type="text/javascript">
    window.alert("用户名或密码错误！请重新输入！");
    </script>
    <% 
    response.setHeader("Refresh","0;url=denglu2.html");
    }
    }catch(Exception e){
    
    }
     %>
  </body>
</html>
