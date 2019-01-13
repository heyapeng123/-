<%@ page language="java" import="java.util.*,java.sql.*,jc.*" pageEncoding="gb2312"%>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    
    <title>客户新增</title>
   
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
   db.executeUpdate("insert into kehu(序号,客户编号,客户名称,等级,类型,电话,地址)"+"values('" + xuhao + "','" + khbh +"','" + khmc +"','" + dj +"','"+lx+"','"+dianhua+"','"+dz+"')");
  db.close();
    %>
    

<script type="text/javascript">
 window.alert("添加成功");
  </script> 
  
    <%
    response.setHeader("Refresh","0;url=kehuxinxi.jsp");
      }catch(Exception e){
      %>
      <script type="text/javascript">
      window.alert("出现其他异常！输入的数据不正确，请重新输入！");
      
      </script>
     
      
      <%
      response.setHeader("Refresh","0;url=kehuxinzeng.jsp");
       }%>
     
  </body>
</html>
