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
     <li><a href="xiaoshou.html" id="beijing">���۹���</a></li>
      <li><a href="shengchan.html">��������</a></li>
       <li><a href="cangchu.html">�ִ�����</a></li>
        <li><a href="peisong.html">���͹���</a></li>
         <li><a href="yuangong.html">Ա������</a></li>
    </ul>
    </div>
    <div id="neirong">
  
  <%
 
   %>
    <form  method="post" action="shangpinappend.jsp">
    <table style="text-align: center;margin: auto;font-size: 25px" >
    <tr>
    <%out.print("<td  colspan=2 align='center' height='100' width='500'><h3>������Ʒ</h3></td>"); %>
    </tr>
    <tr>
    <td width="500" height="100">��Ʒ��ţ�<%out.print("<input type='text' name='yuanliaobianhao'  >"); %>
    </td>
   
    <td width="500" height="100">��Ʒ���ƣ�<%out.print("<input type='text' name='yuanliaomingcheng' >"); %>
    </td>
    </tr>
    
    <tr>
    <td width="500" height="100">��&nbsp;�ۣ�<%out.print("<input type='text' name='shichangjiage'  >"); %>
    </td>
    <td width="500" height="100">�ִ�������<%out.print("<input type='text' name='xiancunshuliang' >"); %>
    </td>
    </tr>
    <tr>
   <td width="500" height="100">����������<%out.print("<input type='text' name='suoxushuliang'  >"); %>
    </td>
    </tr>
    <tr align="center">
    <td colspan="2" height="300">
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

   