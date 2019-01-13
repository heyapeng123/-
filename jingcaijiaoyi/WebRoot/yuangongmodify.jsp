<%@ page language="java" import="java.util.*,jc.*,java.sql.*" pageEncoding="gb2312"%>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>

    <title>修改书目操作</title>
 
  </head>
  
  <body>
 
   <%
    request.setCharacterEncoding("GB2312");
    String ygbh=request.getParameter("ygbh");
    String zw=request.getParameter("zw");
    String ygxm=request.getParameter("ygxm");
    String xb=request.getParameter("xb");
    String nl=request.getParameter("nl");
    String dh=request.getParameter("dh");
    String gl=request.getParameter("gl");
    String zz=request.getParameter("zz");
    DBUtil db=new DBUtil();
    int nianling=Integer.parseInt(nl);
    int dianhua=Integer.parseInt(dh);
    String sql;
    sql = "update yuangong set 员工编号 ='" +ygbh+"',职位 ='" +zw+"',员工姓名 ='" +ygxm+"',性别 ='" +xb+"',年龄 ='" +nianling+"',电话 ='" +dianhua+"',工龄 ='" +gl+"',住址 ='" +zz+"' where 员工编号 ="+ygbh+"";
    db.executeUpdate(sql);
    db.close();%>
    <script type="text/javascript">
    window.alert("修改成功");
    </script>
    <%response.setHeader("Refresh","0;url=sijixinxi.jsp"); %>
  </body>
</html>
