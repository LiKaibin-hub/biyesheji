<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<html>
  <head>
    <title>辅导员信息</title>
	<link rel="stylesheet" href="images/hsgcommon/common.css" type="text/css">
<link rel="stylesheet" href="images/hsgcommon/div.css" type="text/css">
	<script type="text/javascript" src="js/My97DatePicker/WdatePicker.js" charset="gb2312"></script>
  </head>


  <body >
  <p>已有辅导员信息列表：</p>
  <form name="form1" id="form1" method="post" action="">
   搜索:  工号：<input name="gonghao" type="text" id="gonghao" class="form-control2" />  姓名：<input name="xingming" type="text" id="xingming" class="form-control2" /> 性别：<select name='xingbie' id='xingbie' class="form-control2"><option value="">所有</option><option value="男">男</option><option value="女">女</option></select>  手机号：<input name="shoujihao" type="text" id="shoujihao" class="form-control2" />  身份证：<input name="shenfenzheng" type="text" id="shenfenzheng" class="form-control2" />  地址：<input name="dizhi" type="text" id="dizhi" class="form-control2" />
   <input type="submit" name="Submit" value="查找" class="btn btn-info btn-small" /> <input type="button" name="Submit2" value="导出EXCEL" class="btn btn-info btn-small" onClick="javascript:location.href='fudaoyuanxinxi_listxls.jsp';" />
</form>

<table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="cccccc" >  
  <tr>
    <td width="11" height="30" align="center" bgcolor="cccccc">序号</td>
    <td width="111" bgcolor='#cccccc'>工号</td>
    <td width="71" bgcolor='#cccccc'>密码</td>
    <td width="70" bgcolor='#cccccc'>姓名</td>
    <td bgcolor='#cccccc' width='61' align='center'>性别</td>
    <td width="126" bgcolor='#cccccc'>手机号</td>
    <td width="191" bgcolor='#cccccc'>身份证</td>
    <td width="204" bgcolor='#cccccc'>地址</td>
    
    
	
    <td width="248" align="center" bgcolor="cccccc">权限分配</td>
    <td width="165" height="30" align="center" bgcolor="cccccc">添加时间</td>
    
    <td width="158" height="30" align="center" bgcolor="cccccc">操作</td>
  </tr>
  <% 
  	


  	 new CommDAO().delete(request,"fudaoyuanxinxi"); 
    String url = "fudaoyuanxinxi_list.jsp?1=1"; 
    String sql =  "select * from fudaoyuanxinxi where 1=1";
	
if(request.getParameter("gonghao")=="" ||request.getParameter("gonghao")==null ){}else{sql=sql+" and gonghao like '%"+request.getParameter("gonghao")+"%'";}
if(request.getParameter("xingming")=="" ||request.getParameter("xingming")==null ){}else{sql=sql+" and xingming like '%"+request.getParameter("xingming")+"%'";}
if(request.getParameter("xingbie")=="" ||request.getParameter("xingbie")==null ){}else{sql=sql+" and xingbie like '%"+request.getParameter("xingbie")+"%'";}
if(request.getParameter("shoujihao")=="" ||request.getParameter("shoujihao")==null ){}else{sql=sql+" and shoujihao like '%"+request.getParameter("shoujihao")+"%'";}
if(request.getParameter("shenfenzheng")=="" ||request.getParameter("shenfenzheng")==null ){}else{sql=sql+" and shenfenzheng like '%"+request.getParameter("shenfenzheng")+"%'";}
if(request.getParameter("dizhi")=="" ||request.getParameter("dizhi")==null ){}else{sql=sql+" and dizhi like '%"+request.getParameter("dizhi")+"%'";}
    sql+=" order by id desc";
	ArrayList<HashMap> list = PageManager.getPages(url,15,sql, request); 
	int i=0;
	for(HashMap map:list){ 
	i++;
	
	


     %>
  <tr>
    <td width="11" align="center"><%=i %></td>
    <td><%=map.get("gonghao") %></td>
    <td><%=map.get("mima") %></td>
    <td><%=map.get("xingming") %></td>
    <td align='center'><%=map.get("xingbie") %></td>
    <td><%=map.get("shoujihao") %></td>
    <td><%=map.get("shenfenzheng") %></td>
    <td><%=map.get("dizhi") %></td>
    
    
	
    <td width="248" align="center"><%=map.get("quanxianfenpei") %></td>
    <td width="165" align="center"><%=map.get("addtime") %></td>
    <td width="158" align="center"><a class="btn btn-info btn-small" href="fudaoyuanxinxi_updt.jsp?id=<%=map.get("id")%>">修改</a>  <a class="btn btn-info btn-small" href="fudaoyuanxinxi_list.jsp?scid=<%=map.get("id") %>" onClick="return confirm('真的要删除？')">删除</a> <a class="btn btn-info btn-small" href="fudaoyuanxinxi_detail.jsp?id=<%=map.get("id")%>">详细</a> </td>
  </tr>
  	<%
  }
   %>
</table>
<br>
  
<p class="fy">${page.info }</p>


  </body>
</html>

