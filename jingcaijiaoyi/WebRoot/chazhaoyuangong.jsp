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
<h3><center>ģ����ѯ</center></h3>
<form method="get">
<table border="1" align="center">

<tr><td colspan="8">
������ְ�������������������е�ĳ���֣�<input type="text" name="name">
<input type="submit" name="submit" value="�ύ">
</td>
</tr>
<tr>

<th width="100">Ա�����</th>
<th width="100">����</th>
<th width="100">�Ա�</th>
<th width="100">����</th>
<th width="100">�绰</th>
<th width="100">ְλ</th>
<th width="100">����</th>
<th width="100">סַ</th>
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
<td><a href="">�޸�</a></td>
<td><a href="">ɾ��</a></td>
</tr>
<%} %>
</table>
</form>

<% 
}else{
name=new String(name.getBytes("ISO-8859-1"),"gb2312");
ResultSet rs=db.executeQuery("select * from yuangong as name where Ա������ like '%"+name+"%'");
rs.last();
rs.beforeFirst();
if(rs.next()){
rs.beforeFirst();
%>
<form method="get">
<table border="1" align="center">

<tr><td colspan="8">
������ְ�������������������е�ĳ���֣�<input type="text" name="name">
<input type="submit" name="submit" value="�ύ">
</td>
</tr>
<tr>
<th width="100">Ա�����</th>
<th width="100">����</th>
<th width="100">�Ա�</th>
<th width="100">����</th>
<th width="100">�绰</th>
<th width="100">ְλ</th>
<th width="100">����</th>
<th width="100">סַ</th>
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
<td><a href="">�޸�</a></td>
<td><a href="">ɾ��</a></td>
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
