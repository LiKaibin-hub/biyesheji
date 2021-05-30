<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>

<%
response.setContentType("application/vnd.ms-excel");
response.addHeader("Content-Disposition", "attachment;filename=chukuxinxi.xls");
%>
<html>
  <head>
    <title>出库信息</title>
	<link rel="stylesheet" href="images/hsgcommon/common.css" type="text/css">
<link rel="stylesheet" href="images/hsgcommon/div.css" type="text/css">
  </head>

  <body >
  <p>已有出库信息列表：</p>
  

<table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="cccccc" >  
  <tr>
    <td width="30" align="center" bgcolor="cccccc">序号</td>
    <td bgcolor='#cccccc'>物资编号</td>    <td bgcolor='#cccccc'>物资名称</td>    <td bgcolor='#cccccc'>物资类别</td>    <td bgcolor='#cccccc'>库存</td>    <td bgcolor='#cccccc'>出库数量</td>        <td bgcolor='#cccccc'>出库人</td>    
    <td width="138" align="center" bgcolor="cccccc">添加时间</td>
    

  </tr>
  <% 

    String url = "chukuxinxi_list.jsp?1=1"; 
    String sql =  "select * from chukuxinxi where 1=1";
    sql+=" order by id desc";
	ArrayList<HashMap> list = PageManager.getPages(url,15,sql, request); 
	int i=0;
	for(HashMap map:list){ 
	i++;

     %>
  <tr>
    <td width="30" align="center"><%=i %></td>
    <td><%=map.get("wuzibianhao") %></td>    <td><%=map.get("wuzimingcheng") %></td>    <td><%=map.get("wuzileibie") %></td>    <td><%=map.get("kucun") %></td>    <td><%=map.get("chukushuliang") %></td>        <td><%=map.get("chukuren") %></td>    
    <td width="138" align="center"><%=map.get("addtime") %></td>
  </tr>
  	<%
  }
   %>
</table>

<br>
以上数据共<%=i %>条
  </body>
</html>

