<%@ page language="java" import="java.util.*,java.sql.*,jc.*" pageEncoding="gb2312"%>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    <title>�޸Ŀͻ���Ϣ</title>
<link rel="stylesheet" href="css/daohangshouye.css" type="text/css"></link>
  </head>
  
  <body>
<body>
    <div id="logo"></div>
    <div id="zhongbu">
    <div id="daohang">
    <ul>
    <li><a href="caigou.html" >�ɹ�����</a></li>
     <li><a href="xiaoshou.html" id="beijing">���۹���</a></li>
      <li><a href="shengchan.html">��������</a></li>
       <li><a href="cangchu.html">�ִ�����</a></li>
        <li><a href="peisong.html">���͹���</a></li>
         <li><a href="yuangong.html">Ա������</a></li>
    </ul>
    </div>
    <div id="neirong">
  
  <%
  String id=request.getParameter("id");
  if(id==null)
  return ;
  DBUtil db=new DBUtil();
  ResultSet rs=db.executeQuery("select * from kehu where ���="+id);
rs.next();
   %>
    <form  method="post" action="kehumodify.jsp">
    <table style="text-align: center;margin: auto;font-size: 25px" >
    <tr>
    <%out.print("<td  colspan=2 align='center' height='100' width='500'>�޸Ŀͻ���"+id+"����¼</td>"); %>
    </tr>
    <%out.print("<input  type='hidden' name='id' value="+rs.getInt(1)+">"); %>
    <tr>
    <td width="500" height="100">�ͻ���ţ�<%out.print("<input type='text' name='khbh' value="+rs.getString(2)+" >"); %>
    </td>
   
    <td width="500" height="100">�ͻ����ƣ�<%out.print("<input type='text' name='khmc' value="+rs.getString(3)+">"); %>
    </td>
    </tr>
    
    <tr>
    <td width="500" height="100">�ȼ���<%out.print("<input type='text' name='dj' value="+rs.getString(4)+" >"); %>
    </td>
    <td width="500" height="100">���ͣ�<%out.print("<input type='text' name='lx' value="+rs.getString(5)+" >"); %>
    </td>
    </tr>
    <tr>
   <td width="500" height="100">�绰��<%out.print("<input type='text' name='dh' value="+rs.getInt(6)+" >"); %>
    </td>
    <td width="500" height="100">��ַ��<%out.print("<input type='text' name='dz' value="+rs.getString(7)+" >"); %>
    </td>
    </tr>
    <tr align="center">
    <td colspan="2" height="300">
    <input type="submit" name="submit" value="�ύ"> &nbsp; &nbsp; &nbsp; 
    <input type="reset" name="reset" value="����"> 
    </td>
    </tr>
    <%rs.close(); %>
    </table>
    </form>

    </div>
    </div>
    <div id="dibu">
    <p>����վ������ĩ��ҵ��������ȡ����棬һ�����ֽ���ȡ�����ֶ�</p>
    <p>��Ȩ����&copy; ������&nbsp;��</p>
    </div>
  </body>
</html>

   