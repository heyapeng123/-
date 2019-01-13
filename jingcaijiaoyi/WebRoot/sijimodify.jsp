<%@ page language="java" import="java.util.*,jc.*,java.sql.*" pageEncoding="gb2312"%>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>

    <title>修改书目操作</title>
 
  </head>
  
  <body>
 
   <%
    request.setCharacterEncoding("GB2312");
    String sjbh=request.getParameter("sjbh");
    String fzlx=request.getParameter("fzlx");
    DBUtil db=new DBUtil();
    String sql;
    sql = "update yuangong set 负责区 ='" +fzlx+"' where 员工编号 ="+sjbh+"";
    db.executeUpdate(sql);
    db.close();%>
    <script type="text/javascript">
    window.alert("修改成功");
    </script>
    <%response.setHeader("Refresh","0;url=sijixinxi.jsp"); %>
  </body>
</html>
