<%@ page language="java" import="java.util.*,jc.*,java.sql.*" pageEncoding="gb2312"%>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>

    <title>�޸���Ŀ����</title>
 
  </head>
  
  <body>
 
   <%
    request.setCharacterEncoding("GB2312");
    String id=request.getParameter("id");
    String yuanliaobianhao=request.getParameter("yuanliaobianhao");
    String yuanliaomingcheng=request.getParameter("yuanliaomingcheng");
    String shichangjiage=request.getParameter("shichangjiage");
    String xiancunshuliang=request.getParameter("xiancunshuliang");
    String suoxushuliang=request.getParameter("suoxushuliang");
  if(id==null)
  return;
  if(yuanliaobianhao.equals(""))
  throw new Exception();
  int nid=Integer.parseInt(id);
  float jiage =Float.parseFloat(shichangjiage);
  int xiancun=Integer.parseInt(xiancunshuliang);
  int suoxu=Integer.parseInt(suoxushuliang);
    DBUtil db=new DBUtil();
    String sql;
    sql = "update yuanliao set ԭ�ϱ�� ='" +yuanliaobianhao+"',ԭ������ ='"+yuanliaomingcheng+"',�г��۸� ='"+jiage+"',�ִ�����='"+xiancun+"',��������='"+suoxu+"' where ��� ="+nid+"";
    db.executeUpdate(sql);
    db.close();%>
    <div id="showtime"></div>
    <%response.setHeader("Refresh","0;url=yuanliao.jsp"); %>
  </body>
</html>
