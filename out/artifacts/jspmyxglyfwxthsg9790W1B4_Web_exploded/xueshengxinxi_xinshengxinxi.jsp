<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<html>
  <head>
    <title>学生信息</title>
	<link rel="stylesheet" href="images/hsgcommon/common.css" type="text/css">
<link rel="stylesheet" href="images/hsgcommon/div.css" type="text/css">
	<script type="text/javascript" src="js/My97DatePicker/WdatePicker.js" charset="gb2312"></script>
  </head>


  <body >
  <p>已有学生信息列表：</p>
  <form name="form1" id="form1" method="post" action="">
   搜索:  学号：<input name="xuehao" type="text" id="xuehao" class="form-control2"  />  姓名：<input name="xingming" type="text" id="xingming" class="form-control2"  /> 性别：<select name='xingbie' id='xingbie' class="form-control2"><option value="">所有</option><option value="男">男</option><option value="女">女</option></select>  身份证：<input name="shenfenzheng" type="text" id="shenfenzheng" class="form-control2"  />  电话：<input name="dianhua" type="text" id="dianhua" class="form-control2"  />  籍贯：<input name="jiguan" type="text" id="jiguan" class="form-control2"  />
   <input type="submit" name="Submit" value="查找" class="btn btn-info btn-small" /> <input type="button" name="Submit2" value="导出EXCEL" class="btn btn-info btn-small" onClick="javascript:location.href='xueshengxinxi_listxls.jsp';" />
</form>

<table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="cccccc">  
  <tr>
    <td width="30" align="center" bgcolor="cccccc">序号</td>
    <td bgcolor='#cccccc'>学号</td>
    <td bgcolor='#cccccc'>密码</td>
    <td bgcolor='#cccccc'>姓名</td>
    <td bgcolor='#cccccc' width='40' align='center'>性别</td>
    <td bgcolor='#cccccc'>身份证</td>
    <td bgcolor='#cccccc'>电话</td>
    <td bgcolor='#cccccc'>籍贯</td>
    <td bgcolor='#cccccc' width='90' align='center'>照片</td>
    
    <td bgcolor='#cccccc' width='80' align='center'>是否审核</td>
	
    <td width="138" align="center" bgcolor="cccccc">添加时间</td>
    
    <td width="60" align="center" bgcolor="cccccc">操作</td>
  </tr>
  <% 
  	


  	 new CommDAO().delete(request,"xueshengxinxi"); 
    String url = "xueshengxinxi_list.jsp?1=1"; 
    String sql =  "select * from xueshengxinxi where 1=1";
	
if(request.getParameter("xuehao")=="" ||request.getParameter("xuehao")==null ){}else{sql=sql+" and xuehao like '%"+request.getParameter("xuehao")+"%'";}
if(request.getParameter("xingming")=="" ||request.getParameter("xingming")==null ){}else{sql=sql+" and xingming like '%"+request.getParameter("xingming")+"%'";}
if(request.getParameter("xingbie")=="" ||request.getParameter("xingbie")==null ){}else{sql=sql+" and xingbie like '%"+request.getParameter("xingbie")+"%'";}
if(request.getParameter("shenfenzheng")=="" ||request.getParameter("shenfenzheng")==null ){}else{sql=sql+" and shenfenzheng like '%"+request.getParameter("shenfenzheng")+"%'";}
if(request.getParameter("dianhua")=="" ||request.getParameter("dianhua")==null ){}else{sql=sql+" and dianhua like '%"+request.getParameter("dianhua")+"%'";}
if(request.getParameter("jiguan")=="" ||request.getParameter("jiguan")==null ){}else{sql=sql+" and jiguan like '%"+request.getParameter("jiguan")+"%'";}
    sql+=" order by id desc";
	ArrayList<HashMap> list = PageManager.getPages(url,15,sql, request); 
	int i=0;
	for(HashMap map:list){ 
	i++;
	
	


     %>
  <tr>
    <td width="30" align="center"><%=i %></td>
    <td><%=map.get("xuehao") %></td>
    <td><%=map.get("mima") %></td>
    <td><%=map.get("xingming") %></td>
    <td align='center'><%=map.get("xingbie") %></td>
    <td><%=map.get("shenfenzheng") %></td>
    <td><%=map.get("dianhua") %></td>
    <td><%=map.get("jiguan") %></td>
    <td width='90' align='center'><a class="btn btn-info btn-small" href='<%=map.get("zhaopian") %>' target='_blank'><img src='<%=map.get("zhaopian") %>' width=88 height=99 border=0 /></a></td>
    
    <td align='center'><a class="btn btn-info btn-small" href="sh.jsp?id=<%=map.get("id")%>&yuan=<%=map.get("issh")%>&tablename=xueshengxinxi" onClick="return confirm('您确定要执行此操作？')"><%=map.get("issh")%></a></td>
	
    <td width="138" align="center"><%=map.get("addtime") %></td>
    <td width="60" align="center"><a class="btn btn-info btn-small" href='xinshengxinxi_add.jsp?id=<%=map.get("id")%>'>添加新生信息</a>
	
	<a class="btn btn-info btn-small" href="xueshengxinxi_list.jsp?scid=<%=map.get("id") %>" onClick="return confirm('真的要删除？')">删除</a>
	
	 <a class="btn btn-info btn-small" href="xueshengxinxi_detail.jsp?id=<%=map.get("id")%>">详细</a> </td>
  </tr>
  	<%
  }
   %>
</table>
<br>
  
<p class="fy">${page.info }</p>


  </body>
</html>


