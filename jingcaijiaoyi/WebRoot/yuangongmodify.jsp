<%@ page language="java" import="java.util.*,jc.*,java.sql.*" pageEncoding="gb2312"%>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>

    <title>�޸���Ŀ����</title>
 
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
    sql = "update yuangong set Ա����� ='" +ygbh+"',ְλ ='" +zw+"',Ա������ ='" +ygxm+"',�Ա� ='" +xb+"',���� ='" +nianling+"',�绰 ='" +dianhua+"',���� ='" +gl+"',סַ ='" +zz+"' where Ա����� ="+ygbh+"";
    db.executeUpdate(sql);
    db.close();%>
    <script type="text/javascript">
    window.alert("�޸ĳɹ�");
    </script>
    <%response.setHeader("Refresh","0;url=sijixinxi.jsp"); %>
  </body>
</html>
