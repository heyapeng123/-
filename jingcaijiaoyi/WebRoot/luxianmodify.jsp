<%@ page language="java" import="java.util.*,jc.*,java.sql.*" pageEncoding="gb2312"%>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>

    <title></title>
 
  </head>
  
  <body>
 
   <%
    request.setCharacterEncoding("GB2312");
    String id=request.getParameter("id");
    String lx=request.getParameter("lx");
  if(id==null)
  return;
  
  int nid=Integer.parseInt(id);
    DBUtil db=new DBUtil();
    String sql;
    sql = "update kehu set 路线编号='"+lx+"' where 序号 ="+nid+"";
    db.executeUpdate(sql);
    db.close();%>
    <script type="text/javascript">
    window.alert("修改成功");
    </script>
    <%response.setHeader("Refresh","0;url=luxianxinxi.jsp"); %>
  </body>
</html>
