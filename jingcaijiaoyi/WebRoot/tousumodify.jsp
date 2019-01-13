<%@ page language="java" import="java.util.*,jc.*,java.sql.*" pageEncoding="gb2312"%>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>

    <title>修改书目操作</title>
 
  </head>
  
  <body>
 
   <%
    request.setCharacterEncoding("GB2312");
    String id=request.getParameter("id");
    String khbh=request.getParameter("khbh");
    String khmc=request.getParameter("khmc");
    String tsnr=request.getParameter("tsnr");
  if(id==null)
  return;
  if(khbh.equals(""))
  throw new Exception();
  int nid=Integer.parseInt(id);
    DBUtil db=new DBUtil();
    String sql;
    sql = "update tousu set 客户编号 ='" +khbh+"',客户名称 ='"+khmc+"',投诉内容 ='"+tsnr+"' where 序号 ="+nid+"";
    db.executeUpdate(sql);
    db.close();%>
    <script type="text/javascript">
    window.alert("修改成功");
    </script>
    <%response.setHeader("Refresh","0;url=tousu.jsp"); %>
  </body>
</html>
