<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<html>
  <head>
    <title>出库信息</title>
	<link rel="stylesheet" href="images/hsgcommon/common.css" type="text/css">
<link rel="stylesheet" href="images/hsgcommon/div.css" type="text/css">
	<script type="text/javascript" src="js/My97DatePicker/WdatePicker.js" charset="gb2312"></script>
  </head>


  <body >
  <p>已有出库信息列表：</p>
  <form name="form1" id="form1" method="post" action="">
   搜索:  物资编号：<input name="wuzibianhao" type="text" id="wuzibianhao" class="form-control2" />  物资名称：<input name="wuzimingcheng" type="text" id="wuzimingcheng" class="form-control2" />  物资类别：<input name="wuzileibie" type="text" id="wuzileibie" class="form-control2" />  出库人：<input name="chukuren" type="text" id="chukuren" class="form-control2" />
   <input type="submit" name="Submit" value="查找" class="btn btn-info btn-small" /> <input type="button" name="Submit2" value="导出EXCEL" class="btn btn-info btn-small" onClick="javascript:location.href='chukuxinxi_listxls.jsp';" />
</form>

<table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="cccccc" >  
  <tr>
    <td width="35" height="30" align="center" bgcolor="cccccc">序号</td>
    <td bgcolor='#cccccc'>物资编号</td>    <td bgcolor='#cccccc'>物资名称</td>    <td bgcolor='#cccccc'>物资类别</td>    <td bgcolor='#cccccc'>库存</td>    <td bgcolor='#cccccc'>出库数量</td>        <td bgcolor='#cccccc'>出库人</td>    
	
    <td width="138" height="30" align="center" bgcolor="cccccc">添加时间</td>
    
    <td width="220" height="30" align="center" bgcolor="cccccc">操作</td>
  </tr>
  <% 
  	


  	 new CommDAO().delete(request,"chukuxinxi"); 
    String url = "chukuxinxi_list.jsp?1=1"; 
    String sql =  "select * from chukuxinxi where 1=1";
	if(request.getParameter("wuzibianhao")=="" ||request.getParameter("wuzibianhao")==null ){}else{sql=sql+" and wuzibianhao like '%"+request.getParameter("wuzibianhao")+"%'";}if(request.getParameter("wuzimingcheng")=="" ||request.getParameter("wuzimingcheng")==null ){}else{sql=sql+" and wuzimingcheng like '%"+request.getParameter("wuzimingcheng")+"%'";}if(request.getParameter("wuzileibie")=="" ||request.getParameter("wuzileibie")==null ){}else{sql=sql+" and wuzileibie like '%"+request.getParameter("wuzileibie")+"%'";}if(request.getParameter("chukuren")=="" ||request.getParameter("chukuren")==null ){}else{sql=sql+" and chukuren like '%"+request.getParameter("chukuren")+"%'";}
    sql+=" order by id desc";
	ArrayList<HashMap> list = PageManager.getPages(url,15,sql, request); 
	int i=0;
	for(HashMap map:list){ 
	i++;
	
	


     %>
  <tr>
    <td width="35" align="center"><%=i %></td>
    <td><%=map.get("wuzibianhao") %></td>    <td><%=map.get("wuzimingcheng") %></td>    <td><%=map.get("wuzileibie") %></td>    <td><%=map.get("kucun") %></td>    <td><%=map.get("chukushuliang") %></td>        <td><%=map.get("chukuren") %></td>    
	
    <td width="138" align="center"><%=map.get("addtime") %></td>
    <td width="220" align="center"><a class="btn btn-info btn-small" href="chukuxinxi_updt.jsp?id=<%=map.get("id")%>">修改</a>  <a class="btn btn-info btn-small" href="chukuxinxi_list.jsp?scid=<%=map.get("id") %>" onClick="return confirm('真的要删除？')">删除</a> <a class="btn btn-info btn-small" href="chukuxinxi_detail.jsp?id=<%=map.get("id")%>">详细</a> </td>
  </tr>
  	<%
  }
   %>
</table>
<br>
  
<p class="fy">${page.info }</p>


  </body>
</html>

