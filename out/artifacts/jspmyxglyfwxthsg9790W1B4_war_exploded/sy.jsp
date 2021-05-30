<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>

<html>
  <head>
    
    <title>迎新管理与服务系统</title>
<LINK href="images/style.css" type=text/css rel=stylesheet>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312"><style type="text/css">
<!--
body,td,th {
	font-size: 12px;
}
-->
</style></head>
 <BODY leftMargin=5 topMargin=5 rightMargin=5>
<table width="100%" height="210" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#D9E9FF" style="border-collapse:collapse">  
  <TBODY>
    <TR 
  align=middle bgColor=#ffffff>
      <td colspan="4" style="font-size:45px"  bgColor=#CADCEA><strong><%=request.getSession().getAttribute("username")%>，欢迎回来！</strong></td>
    </TR>
    <TR   align=center
  bgColor=#ffffff>
      <TD width="14%" align="center" valign="bottom"  style="font-size:40px" >您的权限：</TD>
      <TD width="37%"  align="center" valign="bottom" style="font-size:40px;font-style: italic" ><font class="t4"><%=request.getSession().getAttribute("cx")%></font></TD>
    </TR>
  </TBODY>
</TABLE>
<p>&nbsp;</p>
<P align=right>&nbsp;</P>
</BODY>
</html>


