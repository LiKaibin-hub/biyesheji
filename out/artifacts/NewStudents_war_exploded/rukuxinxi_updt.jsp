<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<html>
  <head>
    <title>入库信息</title>
	
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
		eval("form1."+nwbk).value=eval("form1."+nwbk).value.replace(nstr+"；", "");
	}
	else
	{
		eval("form1."+nwbk).value=eval("form1."+nwbk).value+nstr+"；";
	}
}
</script>

  <body >
   <% 

String id = request.getParameter("id"); 

HashMap ext = new HashMap(); 

new CommDAO().update(request,response,"rukuxinxi",ext,true,false,""); 
HashMap mmm = new CommDAO().getmap(id,"rukuxinxi"); 

%>
  <form  action="rukuxinxi_updt.jsp?f=f&id=<%=mmm.get("id")%>"  method="post" name="form1"  onsubmit="return checkform();">
  修改入库信息:
  <br><br>
 
   <table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#cccccc" style="border-collapse:collapse">  
          <tr><td>物资编号：</td><td><input name='wuzibianhao' type='text' id='wuzibianhao' value='<%= mmm.get("wuzibianhao")%>' class="form-control" /></td></tr>     <tr><td>物资名称：</td><td><input name='wuzimingcheng' type='text' id='wuzimingcheng' value='<%= mmm.get("wuzimingcheng")%>' class="form-control" /></td></tr>     <tr><td>物资类别：</td><td><input name='wuzileibie' type='text' id='wuzileibie' value='<%= mmm.get("wuzileibie")%>' class="form-control" /></td></tr>     <tr><td>库存：</td><td><input name='kucun' type='text' id='kucun' value='<%= mmm.get("kucun")%>' class="form-control" /></td></tr>     <tr><td>入库数量：</td><td><input name='rukushuliang' type='text' id='rukushuliang' value='<%= mmm.get("rukushuliang")%>' class="form-control" /></td></tr>     <tr><td>备注：</td><td><textarea name='beizhu' cols='50' rows='5' id='beizhu' class="form-control" style="width:600px;height:80px;" ><%=mmm.get("beizhu")%></textarea></td></tr>     <tr><td>入库人：</td><td><input name='rukuren' type='text' id='rukuren' value='<%= mmm.get("rukuren")%>' class="form-control" /></td></tr>
    <tr>
      <td>&nbsp;</td>
      <td><input type="submit" name="Submit" value="提交" onClick="return checkform();" class="btn btn-info btn-small" />
      <input type="reset" name="Submit2" value="重置" class="btn btn-info btn-small" /></td>
    </tr>
  </table>
</form>

  </body>
</html>


