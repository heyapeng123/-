<%@ page language="java" import="java.util.*,jc.*,java.sql.*" pageEncoding="gb2312"%>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>

    <title>�޸Ŀͻ���Ϣ</title>
 
  </head>
  
  <body>
 
   <%
    request.setCharacterEncoding("GB2312");
    String id=request.getParameter("id");
    String khbh=request.getParameter("khbh");
    String khmc=request.getParameter("khmc");
    String dj=request.getParameter("dj");
    String lx=request.getParameter("lx");
    String dh=request.getParameter("dh");
    String dz=request.getParameter("dz");
  if(id==null)
  return;
  if(khbh.equals(""))
  throw new Exception();
  int nid=Integer.parseInt(id);
  int dianhua=Integer.parseInt(dh);
    DBUtil db=new DBUtil();
    String sql;
    sql = "update kehu set �ͻ���� ='" +khbh+"',�ͻ����� ='"+khmc+"',�ȼ� ='"+dj+"',����='"+lx+"',�绰='"+dianhua+"',��ַ='"+dz+"' where ��� ="+nid+"";
    db.executeUpdate(sql);
    db.close();%>
    <script type="text/javascript">
    window.alert("�޸ĳɹ�");
    </script>
    <%response.setHeader("Refresh","0;url=kehuxinxi.jsp"); %>
  </body>
</html>
