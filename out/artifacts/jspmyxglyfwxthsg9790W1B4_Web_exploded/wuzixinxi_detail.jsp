<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<html>
  <head>
    <title>物资信息详细</title>
    <link rel="stylesheet" href="images/hsgcommon/common.css" type="text/css">
<link rel="stylesheet" href="images/hsgcommon/div.css" type="text/css">

  </head>

  <body >
  <%
	String id=request.getParameter("id");
	HashMap m = new CommDAO().getmap(id,"wuzixinxi");
     %>
  物资信息详细:
  <br><br>
  
   <table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#cccccc" >  
   <tr>
     <td width='11%' height=44>物资编号：</td><td width='39%'><%=m.get("wuzibianhao")%></td><td  rowspan=4 align=center><a href=<%=m.get("tupian")%> target=_blank><img src=<%=m.get("tupian")%> width=228 height=215 border=0></a></td></tr><tr><td width='11%' height=44>物资名称：</td><td width='39%'><%=m.get("wuzimingcheng")%></td></tr><tr><td width='11%' height=44>物资类别：</td><td width='39%'><%=m.get("wuzileibie")%></td></tr><tr><td width='11%' height=44>库存：</td><td width='39%'><%=m.get("kucun")%></td></tr><tr><td width='11%' height=100  >备注：</td><td width='39%' colspan=2 height=100 ><%=m.get("beizhu")%></td></tr><tr><td colspan=3 align=center><input type=button name=Submit5 value=返回 onClick="javascript:history.back()" />&nbsp;<input type=button name=Submit5 value=打印 onClick="javascript:window.print()" /></td></tr>
    
  </table>

  </body>
</html>



