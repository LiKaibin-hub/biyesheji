<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<html>
  <head>
    <title>宿舍分配</title>
	<link rel="stylesheet" href="images/hsgcommon/common.css" type="text/css">
<link rel="stylesheet" href="images/hsgcommon/div.css" type="text/css">
	<script type="text/javascript" src="js/My97DatePicker/WdatePicker.js" charset="gb2312"></script>
  </head>


  <body >
  <p>已有宿舍分配列表：</p>
  <form name="form1" id="form1" method="post" action="">
   搜索:  学号：<input name="xuehao" type="text" id="xuehao" class="form-control2" />  姓名：<input name="xingming" type="text" id="xingming" class="form-control2" />  性别：<input name="xingbie" type="text" id="xingbie" class="form-control2" />  宿舍号：<input name="sushehao" type="text" id="sushehao" class="form-control2" />  楼层：<input name="louceng" type="text" id="louceng" class="form-control2" />
   <input type="submit" name="Submit" value="查找" class="btn btn-info btn-small" /> <input type="button" name="Submit2" value="导出EXCEL" class="btn btn-info btn-small" onClick="javascript:location.href='sushefenpei_listxls.jsp';" />
</form>

<table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="cccccc" >  
  <tr>
    <td width="35" height="30" align="center" bgcolor="cccccc">序号</td>
    <td bgcolor='#cccccc'>学号</td>    <td bgcolor='#cccccc'>姓名</td>    <td bgcolor='#cccccc' width='40' align='center'>性别</td>    <td bgcolor='#cccccc'>电话</td>    <td bgcolor='#cccccc'>班级</td>    <td bgcolor='#cccccc'>宿舍号</td>    <td bgcolor='#cccccc'>楼层</td>    <td bgcolor='#cccccc'>位置</td>    <td bgcolor='#cccccc' width='65' align='center'>分配日期</td>        <td bgcolor='#cccccc'>分配人</td>    
	
    <td width="138" height="30" align="center" bgcolor="cccccc">添加时间</td>
    
    <td width="220" height="30" align="center" bgcolor="cccccc">操作</td>
  </tr>
  <% 
  	


  	 new CommDAO().delete(request,"sushefenpei"); 
    String url = "sushefenpei_list.jsp?1=1"; 
    String sql =  "select * from sushefenpei where 1=1";
	if(request.getParameter("xuehao")=="" ||request.getParameter("xuehao")==null ){}else{sql=sql+" and xuehao like '%"+request.getParameter("xuehao")+"%'";}if(request.getParameter("xingming")=="" ||request.getParameter("xingming")==null ){}else{sql=sql+" and xingming like '%"+request.getParameter("xingming")+"%'";}if(request.getParameter("xingbie")=="" ||request.getParameter("xingbie")==null ){}else{sql=sql+" and xingbie like '%"+request.getParameter("xingbie")+"%'";}if(request.getParameter("sushehao")=="" ||request.getParameter("sushehao")==null ){}else{sql=sql+" and sushehao like '%"+request.getParameter("sushehao")+"%'";}if(request.getParameter("louceng")=="" ||request.getParameter("louceng")==null ){}else{sql=sql+" and louceng like '%"+request.getParameter("louceng")+"%'";}
    sql+=" order by id desc";
	ArrayList<HashMap> list = PageManager.getPages(url,15,sql, request); 
	int i=0;
	for(HashMap map:list){ 
	i++;
	
	


     %>
  <tr>
    <td width="35" align="center"><%=i %></td>
    <td><%=map.get("xuehao") %></td>    <td><%=map.get("xingming") %></td>    <td align='center'><%=map.get("xingbie") %></td>    <td><%=map.get("dianhua") %></td>    <td><%=map.get("banji") %></td>    <td><%=map.get("sushehao") %></td>    <td><%=map.get("louceng") %></td>    <td><%=map.get("weizhi") %></td>    <td><%=map.get("fenpeiriqi") %></td>        <td><%=map.get("fenpeiren") %></td>    
	
    <td width="138" align="center"><%=map.get("addtime") %></td>
    <td width="220" align="center"><a class="btn btn-info btn-small" href="sushefenpei_updt.jsp?id=<%=map.get("id")%>">修改</a>  <a class="btn btn-info btn-small" href="sushefenpei_list.jsp?scid=<%=map.get("id") %>" onClick="return confirm('真的要删除？')">删除</a> <a class="btn btn-info btn-small" href="sushefenpei_detail.jsp?id=<%=map.get("id")%>">详细</a> </td>
  </tr>
  	<%
  }
   %>
</table>
<br>
  
<p class="fy">${page.info }</p>


  </body>
</html>

