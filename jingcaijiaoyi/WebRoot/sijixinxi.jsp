<%@ page language="java" import="java.util.*,java.sql.*,jc.*" pageEncoding="UTF-8"%>


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
        <li><a href="peisong.html" id="beijing">配送管理</a></li>
         <li><a href="yuangong.html">员工管理</a></li>
    </ul>
    </div>
    <div id="neirong">
   <%
    DBUtil db=new DBUtil();
    ResultSet rs=null;
   int rowsPage=10;
   int totalPage;
   int currentPage=1;
   int rows;
   String currentPageString=request.getParameter("currentPage");
   if(currentPageString!=null){
   currentPage=Integer.parseInt(currentPageString);
   }
   String sql="select count(*) from yuangong where 职位='司机' order by 员工编号 asc";
   rs=db.executeQuery(sql);
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
    <td colspan="9" align="center"  height="50px"><h3>司机信息(共<%=rows %>条记录)</h3></td>
  
    
    </tr>
    <%
    sql="select * from yuangong where 职位='司机' order by 员工编号 asc limit "+(currentPage-1)*rowsPage+","+rowsPage;
    rs=db.executeQuery(sql);
     %>
    <tr>
    <td width="150">司机编号</td>
    <td width="150" height="50px">司机姓名</td>
    <td width="200">性别</td>
    <td width="150">年龄</td>
    <td width="150">电话</td>
    <td width="150">工龄</td>
    <td width="300">负责路线</td>
    <td width="200" colspan="2" align="center">操作</td>
    </tr>
  <% 
    while(rs.next()){
    %>
    <tr>
    <td width="150" height="50px"><%=rs.getString(1) %></td>
    <td width="200"><%=(rs.getString(3))%></td>
    <td width="150"><%=rs.getString(4) %></td>
    <td width="150"><%=rs.getInt(5) %></td>
    <td width="150"><%=rs.getInt(6) %></td>
    <td width="150"><%=rs.getString(7) %></td>
     <td width="150"><%=rs.getString(9) %></td>
    <td width="100"><a href="sijixiugai.jsp?id=<%=rs.getString(1) %>" >修改</a></td>
    <td width="100"><a href="sijidelete.jsp?id=<%=rs.getString(1) %>" style="color:red; " onclick='return window.confirm("确定要删除此客户信息吗？请慎重！！！")'>删除</a></td>
    </tr>
   <%  }
  db.close();%>
    </table>
    <br>
   
    <center>
    <a href="sijixinxi.jsp?currentPage=<%=currentPage-1 %>">上一页</a>&nbsp;
    <a href="sijixinxi.jsp?currentPage=<%=currentPage+1 %>">下一页</a>
    &nbsp;&nbsp;共<%=totalPage %>页
   </center>
 
    </div>
    </div>
    <div id="dibu">
    <p>本网站仅供期末作业，不得窃取或盗版，一经发现将采取法律手段</p>
    <p>版权所有&copy; 何亚鹏&nbsp;杨俊翊</p>
    </div>
  </body>
</html>
