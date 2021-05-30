<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<html>
  <head>
    <title>入库信息</title>
	 <link rel="stylesheet" href="images/hsgcommon/common.css" type="text/css">
<link rel="stylesheet" href="images/hsgcommon/div.css" type="text/css">
	<script type="text/javascript" src="js/My97DatePicker/WdatePicker.js" charset="gb2312"></script>
  </head>


  <body >
  <p>已有入库信息列表：</p>
  <form name="form1" id="form1" method="post" action="">
   搜索:  物资编号：<input name="wuzibianhao" type="text" id="wuzibianhao" class="form-control2"  />  物资名称：<input name="wuzimingcheng" type="text" id="wuzimingcheng" class="form-control2"  />  物资类别：<input name="wuzileibie" type="text" id="wuzileibie" class="form-control2"  />  入库人：<input name="rukuren" type="text" id="rukuren" class="form-control2"  />
     <input type="submit" name="Submit" value="查找" class="btn btn-info btn-small" />
</form>

<table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="cccccc" >  
  <tr>
    <td width="30" align="center" bgcolor="cccccc">序号</td>
    <td bgcolor='#cccccc'>物资编号</td>    <td bgcolor='#cccccc'>物资名称</td>    <td bgcolor='#cccccc'>物资类别</td>    <td bgcolor='#cccccc'>库存</td>    <td bgcolor='#cccccc'>入库数量</td>    <td bgcolor='#cccccc'>入库人</td>    
    <td width="138" align="center" bgcolor="cccccc">添加时间</td>
    <td width="220" align="center" bgcolor="cccccc">操作</td>
  </tr>
 <% 
  	


  	 new CommDAO().delete(request,"rukuxinxi"); 
    String url = "rukuxinxi_list2.jsp?1=1"; 
    String sql =  "select * from rukuxinxi where rukuren='"+request.getSession().getAttribute("username")+"' ";
	if(request.getParameter("wuzibianhao")=="" ||request.getParameter("wuzibianhao")==null ){}else{sql=sql+" and wuzibianhao like '%"+request.getParameter("wuzibianhao")+"%'";}if(request.getParameter("wuzimingcheng")=="" ||request.getParameter("wuzimingcheng")==null ){}else{sql=sql+" and wuzimingcheng like '%"+request.getParameter("wuzimingcheng")+"%'";}if(request.getParameter("wuzileibie")=="" ||request.getParameter("wuzileibie")==null ){}else{sql=sql+" and wuzileibie like '%"+request.getParameter("wuzileibie")+"%'";}if(request.getParameter("rukuren")=="" ||request.getParameter("rukuren")==null ){}else{sql=sql+" and rukuren like '%"+request.getParameter("rukuren")+"%'";}
    sql+=" order by id desc";
	ArrayList<HashMap> list = PageManager.getPages(url,15,sql, request); 
	int i=0;
	for(HashMap map:list){ 
	i++;
	
	


     %>
  <tr>
    <td width="30" align="center"><%=i %></td>
    <td><%=map.get("wuzibianhao") %></td> <td><%=map.get("wuzimingcheng") %></td> <td><%=map.get("wuzileibie") %></td> <td><%=map.get("kucun") %></td> <td><%=map.get("rukushuliang") %></td>  <td><%=map.get("rukuren") %></td> 
    <td width="138" align="center"><%=map.get("addtime") %></td>
    <td width="220" align="center"><a class="btn btn-info btn-small" href="rukuxinxi_updt.jsp?id=<%=map.get("id")%>">修改</a>  <a class="btn btn-info btn-small" href="rukuxinxi_list2.jsp?scid=<%=map.get("id") %>" onClick="return confirm('真的要删除？')">删除</a> <a class="btn btn-info btn-small" href="rukuxinxi_detail.jsp?id=<%=map.get("id")%>">详细</a> </td>
  </tr>
  	<%
  }
   %>
</table><br>
  
<p class="fy">${page.info }</p>


  </body>
</html>

