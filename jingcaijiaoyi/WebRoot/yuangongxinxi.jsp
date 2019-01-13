<%@ page language="java" import="java.util.*,java.sql.*,jc.*" pageEncoding="gb2312"%>


<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'shangpinxinxi.jsp' starting page</title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	
	
	<link rel="stylesheet" href="css/daohangshouye.css" type="text/css"></link>
	</head>
  <body>
   <div id="logo"></div>
    <div id="zhongbu">
    <div id="daohang">
    <ul>
    <li><a href="caigou.html" >采购管理</a></li>
     <li><a href="xiaoshou.html" >销售管理</a></li>
      <li><a href="shengchan.html">生产管理</a></li>
       <li><a href="cangchu.html">仓储管理</a></li>
        <li><a href="peisong.html" >配送管理</a></li>
         <li><a href="yuangong.html" id="beijing">员工管理</a></li>
    </ul>
    </div>
    <div id="neirong">
   <%
    DBUtil db=new DBUtil();
     
    String name=request.getParameter("name");
   
    if(name==null)
{
 %>
 <form method="post">
 <% 
 int rowsPage=9;
   int totalPage;
   int currentPage=1;
   int rows;
   String currentPageString=request.getParameter("currentPage");
   if(currentPageString!=null){
   currentPage=Integer.parseInt(currentPageString);
   }
    String sql="select count(*) from yuangong order by 员工编号 asc";
    ResultSet rs=db.executeQuery(sql);
   rs.next();
   rows=rs.getInt(1);
   totalPage=rows%rowsPage==0?rows/rowsPage:rows/rowsPage+1;
   if(currentPage>totalPage){
   currentPage=totalPage;
   }
   if(currentPage<1){
   currentPage=1;
   }
    %>
     
    <table border="1" bordercolor="#666666 #666666 #999999 #999999" align="center" cellpadding="0" cellspacing="0" style="text-align: center;">
    <tr>
    <td colspan="8" align="center"  height="50px" ><h3>员工信息(共<%=rows %>条记录)</h3></td>
   <td colspan="2" align="center" rowspan="2"><input type="button" value="新增"  onClick="javascript:location.href='yuangongxinzeng.jsp'" style="font-size: 25px;background-color: #999999;color: #ffffff;">
    </td>
    
    </tr>
    <%
    sql="select * from yuangong  order by 员工编号 asc limit "+(currentPage-1)*rowsPage+","+rowsPage;
    rs=db.executeQuery(sql);
     %>
     
    
     <tr>
    <td colspan="8" align="left"><h4>请输入职工姓名:<input type="text" name="name" style="border: 1px solid;margin: 4px;width:150px;">
<input type="submit" name="submit" value="查找" style="font-size: 20px;margin: 4px;"></h4></td>
    </tr>
    <tr>
    <td width="150">员工编号</td>
    <td width="150">职位</td>
    <td width="150" height="50px">员工姓名</td>
    <td width="200">性别</td>
    <td width="150">年龄</td>
    <td width="150">电话</td>
    <td width="150">工龄</td>
    <td width="300">住址</td>
    <td width="200" colspan="2" align="center">操作</td>
    </tr>
  <% 
    while(rs.next()){
    %>
    <tr>
    <td width="150" height="50px"><%=rs.getString(1) %></td>
    <td width="150" height="50px"><%=rs.getString(2) %></td>
    <td width="200"><%=(rs.getString(3))%></td>
    <td width="150"><%=rs.getString(4) %></td>
    <td width="150"><%=rs.getInt(5) %></td>
    <td width="150"><%=rs.getInt(6) %></td>
    <td width="150"><%=rs.getString(7) %></td>
     <td width="150"><%=rs.getString(8) %></td>
    <td width="100"><a href="yuangongxiugai.jsp?id=<%=rs.getString(1) %>" >修改</a></td>
    <td width="100"><a href="yuangongdelete.jsp?id=<%=rs.getString(1) %>" style="color:red; " onclick='return window.confirm("确定要删除此客户信息吗？请慎重！！！")'>删除</a></td>
    </tr>
   <%  }
  db.close();%>
    </table>
   
    <br>
   
    <center>
    <a href="yuangongxinxi.jsp?currentPage=<%=currentPage-1 %>">上一页</a>&nbsp;
    <a href="yuangongxinxi.jsp?currentPage=<%=currentPage+1 %>">下一页</a>
    &nbsp;&nbsp;共<%=totalPage %>页
   </center>
    </form>
 
    <% 
}else{
   int rowsPage=9;
   int totalPage;
   int currentPage=1;
   int rows;
   String currentPageString1=request.getParameter("currentPage");
   if(currentPageString1!=null){
   currentPage=Integer.parseInt(currentPageString1);
   }
name=new String(name.getBytes("ISO-8859-1"),"gb2312");
 ResultSet rs=db.executeQuery("select count(*) from yuangong as name where 员工姓名 like '%"+name+"%' order by 员工编号 asc");
   rs.last();
rs.beforeFirst();
if(rs.next()){
rs.beforeFirst();
   rs.next();
   rows=rs.getInt(1);
   totalPage=rows%rowsPage==0?rows/rowsPage:rows/rowsPage+1;
   if(currentPage>totalPage){
   currentPage=totalPage;
   }
   if(currentPage<1){
   currentPage=1;
   }
    %>
     <form method="post">
    <table border="1" bordercolor="#666666 #666666 #999999 #999999" align="center" cellpadding="0" cellspacing="0" style="text-align: center;">
    <tr>
    <td colspan="8" align="center"  height="50px" ><h3>员工信息(共<%=rows %>条记录)</h3></td>
   <td colspan="2" align="center" rowspan="2"><input type="button" value="新增"  onClick="javascript:location.href='yuangongxinzeng.jsp'" style="font-size: 25px;background-color: #999999;color: #ffffff;">
    </td>
    <%
    
    rs=db.executeQuery("select * from yuangong as name where 员工姓名 like '%"+name+"%' order by 员工编号 asc limit "+(currentPage-1)*rowsPage+","+rowsPage);
     %>
    </tr> 
     <tr>
    <td colspan="8" align="left"><h4>请输入职工姓名:<input type="text" name="name" style="border: 1px solid;margin: 4px;width:150px;">
<input type="submit" name="submit" value="查找" style="font-size: 20px;margin: 4px;"></h4></td>
    </tr>
    <tr>
    <td width="150">员工编号</td>
    <td width="150">职位</td>
    <td width="150" height="50px">员工姓名</td>
    <td width="200">性别</td>
    <td width="150">年龄</td>
    <td width="150">电话</td>
    <td width="150">工龄</td>
    <td width="300">住址</td>
    <td width="200" colspan="2" align="center">操作</td>
    </tr>
  <% 
    while(rs.next()){
    %>
    <tr>
    <td width="150" height="50px"><%=rs.getString(1) %></td>
    <td width="150" height="50px"><%=rs.getString(2) %></td>
    <td width="200"><%=(rs.getString(3))%></td>
    <td width="150"><%=rs.getString(4) %></td>
    <td width="150"><%=rs.getInt(5) %></td>
    <td width="150"><%=rs.getInt(6) %></td>
    <td width="150"><%=rs.getString(7) %></td>
     <td width="150"><%=rs.getString(8) %></td>
    <td width="100"><a href="yuangongxiugai.jsp?id=<%=rs.getString(1) %>" >修改</a></td>
    <td width="100"><a href="yuangongdelete.jsp?id=<%=rs.getString(1) %>" style="color:red; " onclick='return window.confirm("确定要删除此客户信息吗？请慎重！！！")'>删除</a></td>
    </tr>
   <%  }
  db.close();
  %>
    </table>
    
    <br>
   
    <center>
    <a href="yuangongxinxi.jsp?currentPage=<%=currentPage-1 %>">上一页</a>&nbsp;
    <a href="yuangongxinxi.jsp?currentPage=<%=currentPage+1 %>">下一页</a>
    &nbsp;&nbsp;共<%=totalPage %>页
   </center>
</form>
    
     <%
     }
     }%>
     </div>
    </div>
    <div id="dibu">
    <p>本网站仅供期末作业，不得窃取或盗版，一经发现将采取法律手段</p>
    <p>版权所有&copy; 何亚鹏&nbsp;杨俊翊</p>
    </div>
  </body>
</html>
