<%@ page language="java" import="java.util.*,java.sql.*,jc.*" pageEncoding="gb2312"%>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    
    <title>My JSP 'append.jsp' starting page</title>
   
  </head>
  
  <body >
  
      <%
   request.setCharacterEncoding("gb2312");
   String khbh=request.getParameter("khbh");
   String khmc=request.getParameter("khmc");
   String tsnr=request.getParameter("tsnr");
   if(khbh==null)
   return;
   try{
   DBUtil db=new DBUtil();
   ResultSet rs=null;
   String sql="select * from tousu";
   rs=db.executeQuery(sql);
   rs.last();
   int xuhao=rs.getRow()+1;
   rs.close();
   db.executeUpdate("insert into tousu(���,�ͻ����,�ͻ�����,Ͷ������)"+"values('" + xuhao + "','" + khbh +"','" + khmc +"','" + tsnr +"')");
  db.close();
    %>
    

<script type="text/javascript">
 window.alert("��ӳɹ�");
  </script> 
  
    <%
    response.setHeader("Refresh","0;url=tousu.jsp");
      }catch(Exception e){
      %>
      <script type="text/javascript">
      window.alert("���������쳣����������ݲ���ȷ�����������룡");
      
      </script>
     
      
      <%
      response.setHeader("Refresh","0;url=tousuxinzeng.jsp");
       }%>
     
  </body>
</html>
