<%@ page language="java" import="java.util.*,java.sql.*,jc.*" pageEncoding="gb2312"%>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    
    <title>�ͻ�����</title>
   
  </head>
  
  <body >
  
      <%
   request.setCharacterEncoding("gb2312");
   String khbh=request.getParameter("khbh");
   String khmc=request.getParameter("khmc");
   String dj=request.getParameter("dj");
   String lx=request.getParameter("lx");
   String dh=request.getParameter("dh");
    String dz=request.getParameter("dz");
   if(khbh==null)
   return;
   try{
   if(khbh.equals(""))
   throw new Exception();
   int dianhua=Integer.parseInt(dh);
   DBUtil db=new DBUtil();
   ResultSet rs=null;
   String sql="select * from kehu";
   rs=db.executeQuery(sql);
   rs.last();
   int xuhao=rs.getRow()+1;
   rs.close();
   db.executeUpdate("insert into kehu(���,�ͻ����,�ͻ�����,�ȼ�,����,�绰,��ַ)"+"values('" + xuhao + "','" + khbh +"','" + khmc +"','" + dj +"','"+lx+"','"+dianhua+"','"+dz+"')");
  db.close();
    %>
    

<script type="text/javascript">
 window.alert("��ӳɹ�");
  </script> 
  
    <%
    response.setHeader("Refresh","0;url=kehuxinxi.jsp");
      }catch(Exception e){
      %>
      <script type="text/javascript">
      window.alert("���������쳣����������ݲ���ȷ�����������룡");
      
      </script>
     
      
      <%
      response.setHeader("Refresh","0;url=kehuxinzeng.jsp");
       }%>
     
  </body>
</html>
