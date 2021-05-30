<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>

<%
response.setContentType("application/vnd.ms-excel");
response.addHeader("Content-Disposition", "attachment;filename=sushefenpei.xls");
%>
<html>
  <head>
    <title>宿舍分配</title>
	<link rel="stylesheet" href="images/hsgcommon/common.css" type="text/css">
<link rel="stylesheet" href="images/hsgcommon/div.css" type="text/css">
  </head>

  <body >
  <p>已有宿舍分配列表：</p>
  

<table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="cccccc" >  
  <tr>
    <td width="30" align="center" bgcolor="cccccc">序号</td>
    <td bgcolor='#cccccc'>学号</td>    <td bgcolor='#cccccc'>姓名</td>    <td bgcolor='#cccccc' width='40' align='center'>性别</td>    <td bgcolor='#cccccc'>电话</td>    <td bgcolor='#cccccc'>班级</td>    <td bgcolor='#cccccc'>宿舍号</td>    <td bgcolor='#cccccc'>楼层</td>    <td bgcolor='#cccccc'>位置</td>    <td bgcolor='#cccccc' width='65' align='center'>分配日期</td>        <td bgcolor='#cccccc'>分配人</td>    
    <td width="138" align="center" bgcolor="cccccc">添加时间</td>
    

  </tr>
  <% 

    String url = "sushefenpei_list.jsp?1=1"; 
    String sql =  "select * from sushefenpei where 1=1";
    sql+=" order by id desc";
	ArrayList<HashMap> list = PageManager.getPages(url,15,sql, request); 
	int i=0;
	for(HashMap map:list){ 
	i++;

     %>
  <tr>
    <td width="30" align="center"><%=i %></td>
    <td><%=map.get("xuehao") %></td>    <td><%=map.get("xingming") %></td>    <td align='center'><%=map.get("xingbie") %></td>    <td><%=map.get("dianhua") %></td>    <td><%=map.get("banji") %></td>    <td><%=map.get("sushehao") %></td>    <td><%=map.get("louceng") %></td>    <td><%=map.get("weizhi") %></td>    <td><%=map.get("fenpeiriqi") %></td>        <td><%=map.get("fenpeiren") %></td>    
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

