<%@ page language="java" import="java.util.*,java.sql.*,jc.*" pageEncoding="gb2312"%>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    <title>�޸���Ŀ</title>
<link rel="stylesheet" href="css/daohangshouye.css" type="text/css"></link>
  </head>
  
  <body>
<body>
    <div id="logo"></div>
    <div id="zhongbu">
    <div id="daohang">
    <ul>
    <li><a href="caigou.html" >�ɹ�����</a></li>
     <li><a href="xiaoshou.html">���۹���</a></li>
      <li><a href="shengchan.html">��������</a></li>
       <li><a href="cangchu.html">�ִ�����</a></li>
        <li><a href="peisong.html">���͹���</a></li>
         <li><a href="yuangong.html" id="beijing">Ա������</a></li>
    </ul>
    </div>
    <div id="neirong">
  
  <%
 
   %>
    <form  method="post" action="yuangongappend.jsp">
    <table style="text-align: center;margin: auto;font-size: 25px" >
    <tr>
    <%out.print("<td  colspan=2 align='center' height='100' width='500'><h3>����Ա��</h3></td>"); %>
    </tr>
    <tr>
    <td width="500" height="100">Ա����ţ�<%out.print("<input type='text' name='ygbh'  >"); %>
    </td>
   
    <td width="500" height="100">ְλ��<%out.print("<input type='text' name='zw' >"); %>
    </td>
    </tr>
    
    <tr>
    <td width="500" height="100">Ա��������<%out.print("<input type='text' name='ygxm'  >"); %>
    </td>
    <td width="500" height="100">�Ա�<%out.print("<input type='text' name='xb' >"); %>
    </td>
    </tr>
    <tr>
   <td width="500" height="100">���䣺<%out.print("<input type='text' name='nl'  >"); %>
    </td>
    <td width="500" height="100">�绰��<%out.print("<input type='text' name='dh'  >"); %>
    </td>
    </tr>
    <tr>
   <td width="500" height="100">���䣺<%out.print("<input type='text' name='gl'  >"); %>
    </td>
    <td width="500" height="100">סַ��<%out.print("<input type='text' name='zz'  >"); %>
    </td>
    </tr>
    <tr align="center">
    <td colspan="2" height="100">
    <input type="submit" name="submit" value="�ύ"> &nbsp; &nbsp; &nbsp; 
    <input type="reset" name="reset" value="����"> 
    </td>
    </tr>
    
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

   