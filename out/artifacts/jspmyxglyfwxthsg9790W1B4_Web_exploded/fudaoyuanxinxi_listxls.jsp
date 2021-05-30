<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>

<%
response.setContentType("application/vnd.ms-excel");
response.addHeader("Content-Disposition", "attachment;filename=fudaoyuanxinxi.xls");
%>
<html>
  <head>
    <title>辅导员信息</title>
	<link rel="stylesheet" href="images/hsgcommon/common.css" type="text/css">
<link rel="stylesheet" href="images/hsgcommon/div.css" type="text/css">
  </head>

  <body >
  <p>已有辅导员信息列表：</p>
  

<table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="cccccc" >  
  <tr>
    <td width="30" align="center" bgcolor="cccccc">序号</td>
    <td bgcolor='#cccccc'>工号</td>    <td bgcolor='#cccccc'>密码</td>    <td bgcolor='#cccccc'>姓名</td>    <td bgcolor='#cccccc' width='40' align='center'>性别</td>    <td bgcolor='#cccccc'>手机号</td>    <td bgcolor='#cccccc'>身份证</td>    <td bgcolor='#cccccc'>地址</td>        
    <td width="138" align="center" bgcolor="cccccc">添加时间</td>
    

  </tr>
  <% 

    String url = "fudaoyuanxinxi_list.jsp?1=1"; 
    String sql =  "select * from fudaoyuanxinxi where 1=1";
    sql+=" order by id desc";
	ArrayList<HashMap> list = PageManager.getPages(url,15,sql, request); 
	int i=0;
	for(HashMap map:list){ 
	i++;

     %>
  <tr>
    <td width="30" align="center"><%=i %></td>
    <td><%=map.get("gonghao") %></td>    <td><%=map.get("mima") %></td>    <td><%=map.get("xingming") %></td>    <td align='center'><%=map.get("xingbie") %></td>    <td><%=map.get("shoujihao") %></td>    <td><%=map.get("shenfenzheng") %></td>    <td><%=map.get("dizhi") %></td>        
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

