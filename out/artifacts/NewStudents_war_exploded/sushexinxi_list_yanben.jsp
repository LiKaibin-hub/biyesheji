<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<html>
  <head>
    <title>宿舍信息</title>
	<link rel="stylesheet" href="images/hsgcommon/common.css" type="text/css">
<link rel="stylesheet" href="images/hsgcommon/div.css" type="text/css">
	<script type="text/javascript" src="js/My97DatePicker/WdatePicker.js" charset="gb2312"></script>
  </head>


  <body >
  <p>已有宿舍信息列表：</p>
  <form name="form1" id="form1" method="post" action="">
   搜索:  宿舍号：<input name="sushehao" type="text" id="sushehao" class="form-control2"  />  楼层：<input name="louceng" type="text" id="louceng" class="form-control2"  />  位置：<input name="weizhi" type="text" id="weizhi" class="form-control2"  />
   <input type="submit" name="Submit" value="查找" class="btn btn-info btn-small" /> <input type="button" name="Submit2" value="导出EXCEL" class="btn btn-info btn-small" onClick="javascript:location.href='sushexinxi_listxls.jsp';" />
</form>

<table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="cccccc">  
  <tr>
    <td width="30" align="center" bgcolor="cccccc">序号</td>
    <td bgcolor='#cccccc'>宿舍号</td>    <td bgcolor='#cccccc'>楼层</td>    <td bgcolor='#cccccc'>位置</td>    <td bgcolor='#cccccc'>备注</td>    
	
    <td width="138" align="center" bgcolor="cccccc">添加时间</td>
    
    <td width="60" align="center" bgcolor="cccccc">操作</td>
  </tr>
  <% 
  	


  	 new CommDAO().delete(request,"sushexinxi"); 
    String url = "sushexinxi_list.jsp?1=1"; 
    String sql =  "select * from sushexinxi where 1=1";
	if(request.getParameter("sushehao")=="" ||request.getParameter("sushehao")==null ){}else{sql=sql+" and sushehao like '%"+request.getParameter("sushehao")+"%'";}if(request.getParameter("louceng")=="" ||request.getParameter("louceng")==null ){}else{sql=sql+" and louceng like '%"+request.getParameter("louceng")+"%'";}if(request.getParameter("weizhi")=="" ||request.getParameter("weizhi")==null ){}else{sql=sql+" and weizhi like '%"+request.getParameter("weizhi")+"%'";}
    sql+=" order by id desc";
	ArrayList<HashMap> list = PageManager.getPages(url,15,sql, request); 
	int i=0;
	for(HashMap map:list){ 
	i++;
	
	


     %>
  <tr>
    <td width="30" align="center"><%=i %></td>
    <td><%=map.get("sushehao") %></td>    <td><%=map.get("louceng") %></td>    <td><%=map.get("weizhi") %></td>    <td><%=map.get("beizhu") %></td>    
	
    <td width="138" align="center"><%=map.get("addtime") %></td>
    <td width="60" align="center"><!--lianjie1-->  </td>
  </tr>
  	<%
  }
   %>
</table>
<br>
  
<p class="fy">${page.info }</p>


  </body>
</html>

