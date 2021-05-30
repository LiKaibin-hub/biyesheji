<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<html>
  <head>
    <title>出库信息详细</title>
    <link rel="stylesheet" href="images/hsgcommon/common.css" type="text/css">
<link rel="stylesheet" href="images/hsgcommon/div.css" type="text/css">

  </head>

  <body >
  <%
	String id=request.getParameter("id");
	HashMap m = new CommDAO().getmap(id,"chukuxinxi");
     %>
  出库信息详细:
  <br><br>
  
   <table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#cccccc" >  
   <tr>
     <td width='11%'>物资编号：</td><td width='39%'><%=m.get("wuzibianhao")%></td><td width='11%'>物资名称：</td><td width='39%'><%=m.get("wuzimingcheng")%></td></tr><tr><td width='11%'>物资类别：</td><td width='39%'><%=m.get("wuzileibie")%></td><td width='11%'>库存：</td><td width='39%'><%=m.get("kucun")%></td></tr><tr><td width='11%'>出库数量：</td><td width='39%'><%=m.get("chukushuliang")%></td><td width='11%'>备注：</td><td width='39%'><%=m.get("beizhu")%></td></tr><tr><td width='11%'>出库人：</td><td width='39%'><%=m.get("chukuren")%></td><td>&nbsp;</td><td>&nbsp;</td></tr><tr><td colspan=4 align=center><input type=button name=Submit5 value=返回 onClick="javascript:history.back()" />&nbsp;<input type=button name=Submit5 value=打印 onClick="javascript:window.print()" /></td></tr>
    
  </table>

  </body>
</html>



