<%@ page language="java" import="java.util.*,java.sql.*,jc.*" pageEncoding="gb2312"%>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    <title>客户新增</title>
<link rel="stylesheet" href="css/daohangshouye.css" type="text/css"></link>
  </head>
  
  <body>
<body>
    <div id="logo"></div>
    <div id="zhongbu">
    <div id="daohang">
    <ul>
    <li><a href="caigou.html" >采购管理</a></li>
     <li><a href="xiaoshou.html" id="beijing">销售管理</a></li>
      <li><a href="shengchan.html">生产管理</a></li>
       <li><a href="cangchu.html">仓储管理</a></li>
        <li><a href="peisong.html">配送管理</a></li>
         <li><a href="yuangong.html">员工管理</a></li>
    </ul>
    </div>
    <div id="neirong">
  
  <%
 
   %>
    <form  method="post" action="kehuappend.jsp">
    <table style="text-align: center;margin: auto;font-size: 25px" >
    <tr>
    <%out.print("<td  colspan=2 align='center' height='100' width='500'><h3>增加客户</h3></td>"); %>
    </tr>
    <tr>
    <td width="500" height="100">客户编号：<%out.print("<input type='text' name='khbh'  >"); %>
    </td>
   
    <td width="500" height="100">客户名称：<%out.print("<input type='text' name='khmc' >"); %>
    </td>
    </tr>
    
    <tr>
    <td width="500" height="100">等级：<%out.print("<input type='text' name='dj'  >"); %>
    </td>
    <td width="500" height="100">类型：<%out.print("<input type='text' name='lx' >"); %>
    </td>
    </tr>
    <tr>
   <td width="500" height="100">电话：<%out.print("<input type='text' name='dh'  >"); %>
    </td>
    <td width="500" height="100">地址：<%out.print("<input type='text' name='dz'  >"); %>
    </td>
    </tr>
    <tr align="center">
    <td colspan="2" height="300">
    <input type="submit" name="submit" value="提交"> &nbsp; &nbsp; &nbsp; 
    <input type="reset" name="reset" value="重置"> 
    </td>
    </tr>
    
    </table>
    </form>

    </div>
    </div>
    <div id="dibu">
    <p>本网站仅供期末作业，不得窃取或盗版，一经发现将采取法律手段</p>
    <p>版权所有&copy; 何亚鹏&nbsp;杨俊翊</p>
    </div>
  </body>
</html>

   