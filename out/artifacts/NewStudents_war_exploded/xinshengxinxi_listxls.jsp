<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>

<%
response.setContentType("application/vnd.ms-excel");
response.addHeader("Content-Disposition", "attachment;filename=xinshengxinxi.xls");
%>
<html>
  <head>
    <title>������Ϣ</title>
	<link rel="stylesheet" href="images/hsgcommon/common.css" type="text/css">
<link rel="stylesheet" href="images/hsgcommon/div.css" type="text/css">
  </head>

  <body >
  <p>����������Ϣ�б�</p>
  

<table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="cccccc" >  
  <tr>
    <td width="30" align="center" bgcolor="cccccc">���</td>
    <td bgcolor='#cccccc'>ѧ��</td>    <td bgcolor='#cccccc'>����</td>    <td bgcolor='#cccccc' width='40' align='center'>�Ա�</td>    <td bgcolor='#cccccc'>���֤</td>    <td bgcolor='#cccccc'>�绰</td>    <td bgcolor='#cccccc'>����</td>    <td bgcolor='#cccccc'>רҵ</td>    <td bgcolor='#cccccc'>�༶</td>    <td bgcolor='#cccccc' width='65' align='center'>��ѧʱ��</td>        
    <td width="138" align="center" bgcolor="cccccc">���ʱ��</td>
    

  </tr>
  <% 

    String url = "xinshengxinxi_list.jsp?1=1"; 
    String sql =  "select * from xinshengxinxi where 1=1";
    sql+=" order by id desc";
	ArrayList<HashMap> list = PageManager.getPages(url,15,sql, request); 
	int i=0;
	for(HashMap map:list){ 
	i++;

     %>
  <tr>
    <td width="30" align="center"><%=i %></td>
    <td><%=map.get("xuehao") %></td>    <td><%=map.get("xingming") %></td>    <td align='center'><%=map.get("xingbie") %></td>    <td><%=map.get("shenfenzheng") %></td>    <td><%=map.get("dianhua") %></td>    <td><%=map.get("jiguan") %></td>    <td><%=map.get("zhuanye") %></td>    <td><%=map.get("banji") %></td>    <td><%=map.get("ruxueshijian") %></td>        
    <td width="138" align="center"><%=map.get("addtime") %></td>
  </tr>
  	<%
  }
   %>
</table>

<br>
�������ݹ�<%=i %>��
  </body>
</html>

