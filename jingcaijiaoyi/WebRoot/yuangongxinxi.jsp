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
    <li><a href="caigou.html" >�ɹ�����</a></li>
     <li><a href="xiaoshou.html" >���۹���</a></li>
      <li><a href="shengchan.html">��������</a></li>
       <li><a href="cangchu.html">�ִ�����</a></li>
        <li><a href="peisong.html" >���͹���</a></li>
         <li><a href="yuangong.html" id="beijing">Ա������</a></li>
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
    String sql="select count(*) from yuangong order by Ա����� asc";
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
    <td colspan="8" align="center"  height="50px" ><h3>Ա����Ϣ(��<%=rows %>����¼)</h3></td>
   <td colspan="2" align="center" rowspan="2"><input type="button" value="����"  onClick="javascript:location.href='yuangongxinzeng.jsp'" style="font-size: 25px;background-color: #999999;color: #ffffff;">
    </td>
    
    </tr>
    <%
    sql="select * from yuangong  order by Ա����� asc limit "+(currentPage-1)*rowsPage+","+rowsPage;
    rs=db.executeQuery(sql);
     %>
     
    
     <tr>
    <td colspan="8" align="left"><h4>������ְ������:<input type="text" name="name" style="border: 1px solid;margin: 4px;width:150px;">
<input type="submit" name="submit" value="����" style="font-size: 20px;margin: 4px;"></h4></td>
    </tr>
    <tr>
    <td width="150">Ա�����</td>
    <td width="150">ְλ</td>
    <td width="150" height="50px">Ա������</td>
    <td width="200">�Ա�</td>
    <td width="150">����</td>
    <td width="150">�绰</td>
    <td width="150">����</td>
    <td width="300">סַ</td>
    <td width="200" colspan="2" align="center">����</td>
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
    <td width="100"><a href="yuangongxiugai.jsp?id=<%=rs.getString(1) %>" >�޸�</a></td>
    <td width="100"><a href="yuangongdelete.jsp?id=<%=rs.getString(1) %>" style="color:red; " onclick='return window.confirm("ȷ��Ҫɾ���˿ͻ���Ϣ�������أ�����")'>ɾ��</a></td>
    </tr>
   <%  }
  db.close();%>
    </table>
   
    <br>
   
    <center>
    <a href="yuangongxinxi.jsp?currentPage=<%=currentPage-1 %>">��һҳ</a>&nbsp;
    <a href="yuangongxinxi.jsp?currentPage=<%=currentPage+1 %>">��һҳ</a>
    &nbsp;&nbsp;��<%=totalPage %>ҳ
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
 ResultSet rs=db.executeQuery("select count(*) from yuangong as name where Ա������ like '%"+name+"%' order by Ա����� asc");
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
    <td colspan="8" align="center"  height="50px" ><h3>Ա����Ϣ(��<%=rows %>����¼)</h3></td>
   <td colspan="2" align="center" rowspan="2"><input type="button" value="����"  onClick="javascript:location.href='yuangongxinzeng.jsp'" style="font-size: 25px;background-color: #999999;color: #ffffff;">
    </td>
    <%
    
    rs=db.executeQuery("select * from yuangong as name where Ա������ like '%"+name+"%' order by Ա����� asc limit "+(currentPage-1)*rowsPage+","+rowsPage);
     %>
    </tr> 
     <tr>
    <td colspan="8" align="left"><h4>������ְ������:<input type="text" name="name" style="border: 1px solid;margin: 4px;width:150px;">
<input type="submit" name="submit" value="����" style="font-size: 20px;margin: 4px;"></h4></td>
    </tr>
    <tr>
    <td width="150">Ա�����</td>
    <td width="150">ְλ</td>
    <td width="150" height="50px">Ա������</td>
    <td width="200">�Ա�</td>
    <td width="150">����</td>
    <td width="150">�绰</td>
    <td width="150">����</td>
    <td width="300">סַ</td>
    <td width="200" colspan="2" align="center">����</td>
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
    <td width="100"><a href="yuangongxiugai.jsp?id=<%=rs.getString(1) %>" >�޸�</a></td>
    <td width="100"><a href="yuangongdelete.jsp?id=<%=rs.getString(1) %>" style="color:red; " onclick='return window.confirm("ȷ��Ҫɾ���˿ͻ���Ϣ�������أ�����")'>ɾ��</a></td>
    </tr>
   <%  }
  db.close();
  %>
    </table>
    
    <br>
   
    <center>
    <a href="yuangongxinxi.jsp?currentPage=<%=currentPage-1 %>">��һҳ</a>&nbsp;
    <a href="yuangongxinxi.jsp?currentPage=<%=currentPage+1 %>">��һҳ</a>
    &nbsp;&nbsp;��<%=totalPage %>ҳ
   </center>
</form>
    
     <%
     }
     }%>
     </div>
    </div>
    <div id="dibu">
    <p>����վ������ĩ��ҵ��������ȡ����棬һ�����ֽ���ȡ�����ֶ�</p>
    <p>��Ȩ����&copy; ������&nbsp;��</p>
    </div>
  </body>
</html>
