<%@ page language="java" import="java.util.*,java.sql.*,jc.*" pageEncoding="gb2312"%>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    
    <title>My JSP 'append.jsp' starting page</title>
   
  </head>
  
  <body >
  
      <%
   request.setCharacterEncoding("gb2312");
   String ygbh=request.getParameter("ygbh");
   String zw=request.getParameter("zw");
   String ygxm=request.getParameter("ygxm");
   String xb=request.getParameter("xb");
   String nl=request.getParameter("nl");
   String dh=request.getParameter("dh");
   String gl=request.getParameter("gl");
   String zz=request.getParameter("zz");
   if(ygbh==null)
   return;
   try{
   if(ygbh.equals(""))
   throw new Exception();
   int nianling=Integer.parseInt(nl);
   int dianhua=Integer.parseInt(dh);
   DBUtil db=new DBUtil();
   ResultSet rs=null;
   String sql="select * from yuangong";
   rs=db.executeQuery(sql);
   rs.last();
   rs.close();
   db.executeUpdate("insert into yuangong(Ա�����,ְλ,Ա������,�Ա�,����,�绰,����,סַ)"+"values('" + ygbh + "','" + zw +"','" + ygxm +"','" + xb +"','"+nianling+"','"+dianhua+"','"+gl+"','"+zz+"')");
  db.close();
    %>
    

<script type="text/javascript">
 window.alert("��ӳɹ�");
  </script> 
  
    <%
    response.setHeader("Refresh","0;url=yuangongxinxi.jsp");
      }catch(Exception e){
      %>
      <script type="text/javascript">
      window.alert("�����쳣����������ݲ���ȷ�����������룡");
      
      </script>
     
      
      <%
      response.setHeader("Refresh","0;url=yuangongxinzeng.jsp");
       }%>
     
  </body>
</html>
