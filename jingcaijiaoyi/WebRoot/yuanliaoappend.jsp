<%@ page language="java" import="java.util.*,java.sql.*,jc.*" pageEncoding="gb2312"%>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    
    <title>My JSP 'append.jsp' starting page</title>
   
  </head>
  
  <body >
  
      <%
   request.setCharacterEncoding("gb2312");
   String yuanliaobianhao=request.getParameter("yuanliaobianhao");
   String yuanliaomingcheng=request.getParameter("yuanliaomingcheng");
   String shichangjiage=request.getParameter("shichangjiage");
   String xiancunshuliang=request.getParameter("xiancunshuliang");
   String suoxushuliang=request.getParameter("suoxushuliang");
   if(yuanliaobianhao==null)
   return;
   try{
   if(yuanliaobianhao.equals(""))
   throw new Exception();
   float jiage=Float.parseFloat(shichangjiage);
   int xiancun=Integer.parseInt(xiancunshuliang);
   int suoxu=Integer.parseInt(suoxushuliang);
   DBUtil db=new DBUtil();
   ResultSet rs=null;
   String sql="select * from yuanliao";
   rs=db.executeQuery(sql);
   rs.last();
   int xuhao=rs.getRow()+1;
   rs.close();
   db.executeUpdate("insert into yuanliao(���,ԭ�ϱ��,ԭ������,�г��۸�,�ִ�����,��������)"+"values('" + xuhao + "','" + yuanliaobianhao +"','" + yuanliaomingcheng +"','" + jiage +"','"+xiancun+"','"+suoxu+"')");
  db.close();
    %>
    

<script type="text/javascript">
 window.alert("��ӳɹ�");
  </script> 
  
    <%
    response.setHeader("Refresh","0;url=yuanliao.jsp");
      }catch(Exception e){
      %>
      <script type="text/javascript">
      window.alert("���������쳣����������ݲ���ȷ�����������룡");
      
      </script>
     
      
      <%
      response.setHeader("Refresh","0;url=yuanliaoxinzeng.jsp");
       }%>
     
  </body>
</html>
