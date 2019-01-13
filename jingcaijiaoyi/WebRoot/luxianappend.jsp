<%@ page language="java" import="java.util.*,java.sql.*,jc.*" pageEncoding="gb2312"%>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    
    <title>My JSP 'append.jsp' starting page</title>
   
  </head>
  
  <body >
  
      <%
   request.setCharacterEncoding("gb2312");
   String lx=request.getParameter("lx");

  try{
  if(lx.equals("")|| lx.length()==0)
   throw new Exception();
   DBUtil db=new DBUtil();
   ResultSet rs=null;
   String sql="select * from kehu";
   rs=db.executeQuery(sql);
   rs.last();
   int xuhao=rs.getRow()+1;
   rs.close();
   db.executeUpdate("insert into kehu(序号,路线编号)"+"values('" + xuhao + "','"+lx+"')");
  db.close();
    %>
    

<script type="text/javascript">
 window.alert("添加成功");
  </script> 
  
    <%
    response.setHeader("Refresh","0;url=luxianxinxi.jsp");
      }catch(Exception e){
      %>
      <script type="text/javascript">
      window.alert("出现其他异常！输入的数据不正确，请重新输入！");
      
      </script>
     
      
      <%
      response.setHeader("Refresh","0;url=luxianxinzeng.jsp");
       }%>
     
  </body>
</html>
