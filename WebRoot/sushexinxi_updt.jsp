<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<html>
  <head>
    <title>������Ϣ</title>
	
	<script type="text/javascript" src="js/My97DatePicker/WdatePicker.js" charset="gb2312"></script>
	<script type="text/javascript" src="js/popup.js"></script>
    <link rel="stylesheet" href="images/hsgcommon/common.css" type="text/css">
<link rel="stylesheet" href="images/hsgcommon/div.css" type="text/css">

  </head>
<script language="javascript">

function hsgxia2shxurxu(nstr,nwbk)
{
	if (eval("form1."+nwbk).value.indexOf(nstr)>=0)
	{
		eval("form1."+nwbk).value=eval("form1."+nwbk).value.replace(nstr+"��", "");
	}
	else
	{
		eval("form1."+nwbk).value=eval("form1."+nwbk).value+nstr+"��";
	}
}
</script>

  <body >
   <% 

String id = request.getParameter("id"); 

HashMap ext = new HashMap(); 

new CommDAO().update(request,response,"sushexinxi",ext,true,false,""); 
HashMap mmm = new CommDAO().getmap(id,"sushexinxi"); 

%>
  <form  action="sushexinxi_updt.jsp?f=f&id=<%=mmm.get("id")%>"  method="post" name="form1"  onsubmit="return checkform();">
  �޸�������Ϣ:
  <br><br>
 
   <table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#cccccc" style="border-collapse:collapse">  
          <tr><td>����ţ�</td><td><input name='sushehao' type='text' id='sushehao' value='<%= mmm.get("sushehao")%>' class="form-control" /></td></tr>     <tr><td>¥�㣺</td><td><input name='louceng' type='text' id='louceng' value='<%= mmm.get("louceng")%>' class="form-control" /></td></tr>     <tr><td>λ�ã�</td><td><input name='weizhi' type='text' id='weizhi' class="form-control"  style="width:600px;" value='<%=mmm.get("weizhi")%>' /></td></tr>     <tr><td>��ע��</td><td><textarea name='beizhu' cols='50' rows='5' id='beizhu' class="form-control" style="width:600px;height:80px;" ><%=mmm.get("beizhu")%></textarea></td></tr>
    <tr>
      <td>&nbsp;</td>
      <td><input type="submit" name="Submit" value="�ύ" onClick="return checkform();" class="btn btn-info btn-small" />
      <input type="reset" name="Submit2" value="����" class="btn btn-info btn-small" /></td>
    </tr>
  </table>
</form>

  </body>
</html>


