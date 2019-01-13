<%@ page language="java" import="java.util.*,java.sql.*,jc.*" pageEncoding="gb2312"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'chazhaoyuangong.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
<%
DBUtil db=new DBUtil();
ResultSet rt=db.executeQuery("select * from yuangong");
String name=request.getParameter("name");
if(name==null)
{
%>
<h3><center>模糊查询</center></h3>
<form method="get">
<table border="1" align="center">

<tr><td colspan="8">
请输入职工姓名（可输入姓名中的某个字）<input type="text" name="name">
<input type="submit" name="submit" value="提交">
</td>
</tr>
<tr>

<th width="100">员工编号</th>
<th width="100">姓名</th>
<th width="100">性别</th>
<th width="100">年龄</th>
<th width="100">电话</th>
<th width="100">职位</th>
<th width="100">工龄</th>
<th width="100">住址</th>
</tr>
<% 
while(rt.next()){
%>
<tr align="center">
<td><%=rt.getString(1) %></td>
<td><%=rt.getString(3) %></td>
<td><%=rt.getString(4) %></td>
<td><%=rt.getInt(5) %></td>
<td><%=rt.getInt(6) %></td>
<td><%=rt.getString(2) %></td>
<td><%=rt.getFloat(7) %></td>
<td><%=rt.getString(8) %></td>
<td><a href="">修改</a></td>
<td><a href="">删除</a></td>
</tr>
<%} %>
</table>
</form>

<% 
}else{
name=new String(name.getBytes("ISO-8859-1"),"gb2312");
ResultSet rs=db.executeQuery("select * from yuangong as name where 员工姓名 like '%"+name+"%'");
rs.last();
rs.beforeFirst();
if(rs.next()){
rs.beforeFirst();
%>
<form method="get">
<table border="1" align="center">

<tr><td colspan="8">
请输入职工姓名（可输入姓名中的某个字）<input type="text" name="name">
<input type="submit" name="submit" value="提交">
</td>
</tr>
<tr>
<th width="100">员工编号</th>
<th width="100">姓名</th>
<th width="100">性别</th>
<th width="100">年龄</th>
<th width="100">电话</th>
<th width="100">职位</th>
<th width="100">工龄</th>
<th width="100">住址</th>
</tr>
<% 
while(rs.next()){
%>
<tr align="center">
<td><%=rs.getString(1) %></td>
<td><%=rs.getString(3) %></td>
<td><%=rs.getString(4) %></td>
<td><%=rs.getInt(5) %></td>
<td><%=rs.getInt(6) %></td>
<td><%=rs.getString(2) %></td>
<td><%=rs.getFloat(7) %></td>
<td><%=rs.getString(8) %></td>
<td><a href="">修改</a></td>
<td><a href="">删除</a></td>
</tr>
<%

}
}
db.close();
}
 %> 
 </table>
  </body>
</html>
