<%@ page language="java" import="java.util.*,jc.*,java.sql.*" pageEncoding="gb2312"%>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>

    <title>�޸���Ŀ����</title>
 
  </head>
  
  <body>
 
   <%
    request.setCharacterEncoding("GB2312");
    String sjbh=request.getParameter("sjbh");
    String fzlx=request.getParameter("fzlx");
    DBUtil db=new DBUtil();
    String sql;
    sql = "update yuangong set ������ ='" +fzlx+"' where Ա����� ="+sjbh+"";
    db.executeUpdate(sql);
    db.close();%>
    <script type="text/javascript">
    window.alert("�޸ĳɹ�");
    </script>
    <%response.setHeader("Refresh","0;url=sijixinxi.jsp"); %>
  </body>
</html>
