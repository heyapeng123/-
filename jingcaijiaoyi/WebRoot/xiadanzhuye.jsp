<%@ page language="java" import="java.util.*,java.sql.*,jc.*" pageEncoding="gb2312"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'xiadanzhuye.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  <script type="text/javascript" src="js/jquery.js"></script>
 <script type="text/javascript">
    
    $(function(){
        $(".add").on("click", function(){
            // ���ҵ���ǰ�Ӻŵĸ�Ԫ��class="line"��div,��Ѱ�ҵ�ǰdiv�µ��ı���class="amount" 
            var $countInput = $(this).parent(".line").children(".count");
            $countInput.val($countInput.val()-0+1);
        });
        $(".reduce").on("click", function(){
            var $countInput = $(this).parent(".line").children(".count");
            if ($countInput.val()-0 > 0){
                $countInput.val($countInput.val()-1);
            }
        });
    });
    
</script>
  <style>
 
.add,.reduce{
        cursor:pointer;
        font-size: 35px;
        background-color: #999999;
        display:block;
        height:35px;
        width:35px;
        float: left;
       
    }
    .add:hover,.reduce:hover{
        color:red;
    }
     .line{
        margin: auto;
    }
    .count{
   
       width: 70px;
       height:35px;
       float: left;
       quotes: none;
       
       
    }
    .biaodan{
        border: 0px;
        text-align: center;
    
    }
    input::-webkit-outer-spin-button,
    input::-webkit-inner-spin-button {
       -webkit-appearance: none;
    }
    input[type="number"]{
       -moz-appearance: textfield;
    }
</style>
  </head>
  
  <body>
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
   String sql="select count(*) from shangpin order by ��� asc";
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
    <form action="Dingdan" method="post" onsubmit="return check(this);">
    <table border="1" bordercolor="#666666 #666666 #999999 #999999" align="center" cellpadding="0" cellspacing="0" style="text-align: center;">
    <tr>
    <td colspan="8" align="center"  height="50px"><h3>��Ʒ��Ϣ(��<%=rows %>����¼)</h3>
    </td>
    </tr>
    <%
    sql="select * from shangpin order by ��� asc limit "+(currentPage-1)*rowsPage+","+rowsPage;
    rs=db.executeQuery(sql);
     %>
    <tr>
    <td width="50">���</td>
    <td width="150" height="50px">��Ʒ����</td>
    <td width="360">��Ʒ����</td>
    <td width="150">����(Ԫ/kg)</td>
    <td width="300" align="center">����</td>
    </tr>
  <% 
    while(rs.next()){
    %>
    <tr>
    <td width="50" height="50px"><input name="xh" class="biaodan" readonly="readonly" value="<%=rs.getInt(1) %>"></td>
    <td width="150"><input name="spbm" class="biaodan" readonly="readonly" value="<%=(rs.getString(2)) %>"></td>
    <td width="300"><input name="spmc" class="biaodan" readonly="readonly" value="<%=(rs.getString(3))%>"></td>
    <td width="150"><input name="bj" class="biaodan" readonly="readonly" value="<%=rs.getFloat(4) %>"></td>
    
    <td width="300"><div class="line"><span class="reduce">-</span>&nbsp;<input name="sl" type="number" class="count" value="0" />&nbsp;<span class="add">+</span></div></td>
   <%  }
  db.close();%>
    </table>
    <br>
    <input type="reset" value="����">
    <input type="submit" value="�ύ">
   </form>
   
    <center>
    <a href="xiadanzhuye.jsp?currentPage=<%=currentPage-1 %>">��һҳ</a>&nbsp;
    <a href="xiadanzhuye.jsp?currentPage=<%=currentPage+1 %>">��һҳ</a>
    &nbsp;&nbsp;��<%=totalPage %>ҳ
   </center>
 
    </div>
  </body>
</html>
