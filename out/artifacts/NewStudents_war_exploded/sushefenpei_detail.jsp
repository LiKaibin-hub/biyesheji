<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<html>
  <head>
    <title>���������ϸ</title>
    <link rel="stylesheet" href="images/hsgcommon/common.css" type="text/css">
<link rel="stylesheet" href="images/hsgcommon/div.css" type="text/css">

  </head>

  <body >
  <%
	String id=request.getParameter("id");
	HashMap m = new CommDAO().getmap(id,"sushefenpei");
     %>
  ���������ϸ:
  <br><br>
  
   <table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#cccccc" >  
   <tr>
     <td width='11%'>ѧ�ţ�</td><td width='39%'><%=m.get("xuehao")%></td><td width='11%'>������</td><td width='39%'><%=m.get("xingming")%></td></tr><tr><td width='11%'>�Ա�</td><td width='39%'><%=m.get("xingbie")%></td><td width='11%'>�绰��</td><td width='39%'><%=m.get("dianhua")%></td></tr><tr><td width='11%'>�༶��</td><td width='39%'><%=m.get("banji")%></td><td width='11%'>����ţ�</td><td width='39%'><%=m.get("sushehao")%></td></tr><tr><td width='11%'>¥�㣺</td><td width='39%'><%=m.get("louceng")%></td><td width='11%'>λ�ã�</td><td width='39%'><%=m.get("weizhi")%></td></tr><tr><td width='11%'>�������ڣ�</td><td width='39%'><%=m.get("fenpeiriqi")%></td><td width='11%'>��ע��</td><td width='39%'><%=m.get("beizhu")%></td></tr><tr><td width='11%'>�����ˣ�</td><td width='39%'><%=m.get("fenpeiren")%></td><td>&nbsp;</td><td>&nbsp;</td></tr><tr><td colspan=4 align=center><input type=button name=Submit5 value=���� onClick="javascript:history.back()" />&nbsp;<input type=button name=Submit5 value=��ӡ onClick="javascript:window.print()" /></td></tr>
    
  </table>

  </body>
</html>



