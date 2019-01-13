<%@ page language="java" import="java.util.*,java.sql.*,jc.*" pageEncoding="UTF-8"%>


<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>库存信息</title>
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
      <li><a href="shengchan.html" >生产管理</a></li>
       <li><a href="cangchu.html" id="beijing">仓储管理</a></li>
        <li><a href="peisong.html">配送管理</a></li>
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
   String kehuname;
   String currentPageString=request.getParameter("currentPage");
   if(currentPageString!=null){
   currentPage=Integer.parseInt(currentPageString);
   }
   String sql="select count(*) from kucun";
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
    <td colspan="8" align="center"  height="50px"><h3>库存信息详情(共<%=rows %>条记录)</h3>
    </td>
    </tr>
    <%
    sql="select * from kucun limit "+(currentPage-1)*rowsPage+","+rowsPage;
    rs=db.executeQuery(sql);
     %>
    <tr>
    <td width="250" height="50px">商品编号</td>
    <td width="250" height="50px">商品名称</td>
    <td width="100" height="50px">库存数量</td>
    <td width="250" height="50px">原料编号</td>
    <td width="250" height="50px">原料名称</td>
    <td width="100" height="50px">库存数量</td>
  <% 
    while(rs.next()){
    %>
    <tr>
    <td width="250" height="50px"><%=rs.getString(1) %></td>
    <td width="250" height="50px"><%=rs.getString(2) %></td>
    <td width="100" height="50px"><%=rs.getInt(3) %></td>
    <td width="250" height="50px"><%=(rs.getString(4))%></td>
    <td width="250" height="50px"><%=rs.getString(5) %></td>
    <td width="100" height="50px"><%=rs.getInt(6) %></td>
    
     </tr>
   <%  }
  db.close();%>
    </table>
    <br>
   
    <center>
    <a href="kucunxinxi.jsp?currentPage=<%=currentPage-1 %>">上一页</a>&nbsp;
    <a href="kucunxinxi.jsp?currentPage=<%=currentPage+1 %> ">下一页</a>
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
