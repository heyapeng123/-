<%@ page language="java" import="java.util.*,java.sql.*,jc.*" pageEncoding="gb2312"%>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    <title>修改员工信息</title>
<link rel="stylesheet" href="css/daohangshouye.css" type="text/css"></link>
  </head>
  
  <body>
<body>
    <div id="logo"></div>
    <div id="zhongbu">
    <div id="daohang">
    <ul>
    <li><a href="caigou.html" >采购管理</a></li>
     <li><a href="xiaoshou.html">销售管理</a></li>
      <li><a href="shengchan.html">生产管理</a></li>
       <li><a href="cangchu.html">仓储管理</a></li>
        <li><a href="peisong.html">配送管理</a></li>
         <li><a href="yuangong.html" id="beijing">员工管理</a></li>
    </ul>
    </div>
    <div id="neirong">
  
  <%
  String id=request.getParameter("id");
  if(id==null)
  return ;
  DBUtil db=new DBUtil();
  ResultSet rs=db.executeQuery("select * from yuangong where 员工编号="+id);
  rs.next();
  String name=rs.getString(3);
   %>
    <form  method="post" action="yuangongmodify.jsp">
    <table style="text-align: center;margin: auto;font-size: 25px" >
    <tr>
    <%out.print("<td  colspan=2 align='center' height='100' width='500'>修改"+name+"的信息</td>"); %>
    </tr>
    <tr>
    <td width="500" height="100">员工编号：<%out.print("<input type='text' name='ygbh' value="+rs.getString(1)+" >"); %>
    </td>
   
    <td width="500" height="100">职位：<%out.print("<input type='text' name='zw' value="+rs.getString(2)+">"); %>
    </td>
    </tr>
    
    <tr>
    <td width="500" height="100">员工姓名：<%out.print("<input type='text' name='ygxm' value="+rs.getString(3)+" >"); %>
    </td>
    <td width="500" height="100">性别：<%out.print("<input type='text' name='xb' value="+rs.getString(4)+" >"); %>
    </td>
    </tr>
    <tr>
   <td width="500" height="100">年龄：<%out.print("<input type='text' name='nl' value="+rs.getInt(5)+" >"); %>
    </td>
    <td width="500" height="100">电话：<%out.print("<input type='text' name='dh' value="+rs.getInt(6)+" >"); %>
    </td>
    </tr>
      <tr>
   <td width="500" height="100">工龄：<%out.print("<input type='text' name='gl' value="+rs.getString(7)+" >"); %>
    </td>
    <td width="500" height="100">住址：<%out.print("<input type='text' name='zz' value="+rs.getString(8)+" >"); %>
    </td>
    </tr>
    <tr align="center">
    <td colspan="2" height="100">
    <input type="submit" name="submit" value="提交"> &nbsp; &nbsp; &nbsp; 
    <input type="reset" name="reset" value="重置"> 
    </td>
    </tr>
    <%rs.close(); %>
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

   