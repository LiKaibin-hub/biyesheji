<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<html>
  <head>
    <title>������Ϣ��ϸ</title>
    <link rel="stylesheet" href="images/hsgcommon/common.css" type="text/css">
<link rel="stylesheet" href="images/hsgcommon/div.css" type="text/css">

  </head>

  <body >
  <%
	String id=request.getParameter("id");
	HashMap m = new CommDAO().getmap(id,"chukuxinxi");
     %>
  ������Ϣ��ϸ:
  <br><br>
  
   <table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#cccccc" >  
   <tr>
     <td width='11%'>���ʱ�ţ�</td><td width='39%'><%=m.get("wuzibianhao")%></td><td width='11%'>�������ƣ�</td><td width='39%'><%=m.get("wuzimingcheng")%></td></tr><tr><td width='11%'>�������</td><td width='39%'><%=m.get("wuzileibie")%></td><td width='11%'>��棺</td><td width='39%'><%=m.get("kucun")%></td></tr><tr><td width='11%'>����������</td><td width='39%'><%=m.get("chukushuliang")%></td><td width='11%'>��ע��</td><td width='39%'><%=m.get("beizhu")%></td></tr><tr><td width='11%'>�����ˣ�</td><td width='39%'><%=m.get("chukuren")%></td><td>&nbsp;</td><td>&nbsp;</td></tr><tr><td colspan=4 align=center><input type=button name=Submit5 value=���� onClick="javascript:history.back()" />&nbsp;<input type=button name=Submit5 value=��ӡ onClick="javascript:window.print()" /></td></tr>
    
  </table>

  </body>
</html>



