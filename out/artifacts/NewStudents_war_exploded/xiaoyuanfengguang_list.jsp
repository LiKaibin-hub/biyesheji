<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<html>
  <head>
    <title>校园风光</title>
	<link rel="stylesheet" href="images/hsgcommon/common.css" type="text/css">
<link rel="stylesheet" href="images/hsgcommon/div.css" type="text/css">
	<script type="text/javascript" src="js/My97DatePicker/WdatePicker.js" charset="gb2312"></script>
  </head>


  <body >
  <p>已有校园风光列表：</p>
  <form name="form1" id="form1" method="post" action="">
   搜索:  编号：<input name="bianhao" type="text" id="bianhao" class="form-control2" />  标题：<input name="biaoti" type="text" id="biaoti" class="form-control2" />  名称：<input name="mingcheng" type="text" id="mingcheng" class="form-control2" />  地点：<input name="didian" type="text" id="didian" class="form-control2" />
   <input type="submit" name="Submit" value="查找" class="btn btn-info btn-small" /> <input type="button" name="Submit2" value="导出EXCEL" class="btn btn-info btn-small" onClick="javascript:location.href='xiaoyuanfengguang_listxls.jsp';" />
</form>

<table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="cccccc" >  
  <tr>
    <td width="35" height="30" align="center" bgcolor="cccccc">序号</td>
    <td bgcolor='#cccccc'>编号</td>    <td bgcolor='#cccccc'>标题</td>    <td bgcolor='#cccccc'>名称</td>    <td bgcolor='#cccccc'>地点</td>    <td bgcolor='#cccccc' width='90' align='center'>图片</td>        <td bgcolor='#cccccc'>备注</td>    
	<td width="90" align="center" bgcolor="#cccccc">评论管理</td>
    <td width="138" height="30" align="center" bgcolor="cccccc">添加时间</td>
    
    <td width="220" height="30" align="center" bgcolor="cccccc">操作</td>
  </tr>
  <% 
  	


  	 new CommDAO().delete(request,"xiaoyuanfengguang"); 
    String url = "xiaoyuanfengguang_list.jsp?1=1"; 
    String sql =  "select * from xiaoyuanfengguang where 1=1";
	if(request.getParameter("bianhao")=="" ||request.getParameter("bianhao")==null ){}else{sql=sql+" and bianhao like '%"+request.getParameter("bianhao")+"%'";}if(request.getParameter("biaoti")=="" ||request.getParameter("biaoti")==null ){}else{sql=sql+" and biaoti like '%"+request.getParameter("biaoti")+"%'";}if(request.getParameter("mingcheng")=="" ||request.getParameter("mingcheng")==null ){}else{sql=sql+" and mingcheng like '%"+request.getParameter("mingcheng")+"%'";}if(request.getParameter("didian")=="" ||request.getParameter("didian")==null ){}else{sql=sql+" and didian like '%"+request.getParameter("didian")+"%'";}
    sql+=" order by id desc";
	ArrayList<HashMap> list = PageManager.getPages(url,15,sql, request); 
	int i=0;
	for(HashMap map:list){ 
	i++;
	
	


     %>
  <tr>
    <td width="35" align="center"><%=i %></td>
    <td><%=map.get("bianhao") %></td>    <td><%=map.get("biaoti") %></td>    <td><%=map.get("mingcheng") %></td>    <td><%=map.get("didian") %></td>    <td width='90' align='center'><a  href='<%=map.get("tupian") %>' target='_blank'><img src='<%=map.get("tupian") %>' width=88 height=99 border=0 /></a></td>        <td><%=map.get("beizhu") %></td>    
	<td width="90" align="center"><a class="btn btn-info btn-small" href="pinglun_list.jsp?id=<%=map.get("id")%>&biao=xiaoyuanfengguang">评论管理</a></td>
    <td width="138" align="center"><%=map.get("addtime") %></td>
    <td width="220" align="center"><a class="btn btn-info btn-small" href="xiaoyuanfengguang_updt.jsp?id=<%=map.get("id")%>">修改</a>  <a class="btn btn-info btn-small" href="xiaoyuanfengguang_list.jsp?scid=<%=map.get("id") %>" onClick="return confirm('真的要删除？')">删除</a> <a class="btn btn-info btn-small" href="xiaoyuanfengguangdetail.jsp?id=<%=map.get("id")%>" target="_blank">详细</a> </td>
  </tr>
  	<%
  }
   %>
</table>
<br>
  
<p class="fy">${page.info }</p>


  </body>
</html>

