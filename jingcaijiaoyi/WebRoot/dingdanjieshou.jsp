<%@ page language="java" import="java.util.*,jc.*,java.sql.*" pageEncoding="gb2312"%>

<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'dingdanjieshou.jsp' starting page</title>
    
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
   
   request.setCharacterEncoding("gb2312");
   String xh=request.getParameter("xh");
   String spbm=request.getParameter("spbm");
   String spmc=request.getParameter("spmc");
   String bj=request.getParameter("bj");
   String sl=request.getParameter("sl");
   DBUtil db=new DBUtil();
   ResultSet rs=null;
   int xuhao=Integer.parseInt(xh);
   float danjia=Float.parseFloat(bj);
   int shuliang=Integer.parseInt(sl);
   String sql="insert into dingdan(序号,商品编号,商品名称,单价,数量)"+" values("+xuhao+","+spbm+","+spmc+","+danjia+","+shuliang+")";
   db.executeUpdate(sql);
   db.close(); 
    %>
    <script type="text/javascript">
    window.alert("下单成功");
    </script>
    <%
    response.setHeader("Refresh","0;url=xiadanzhuye.jsp");
     %>
  </body>
</html>
