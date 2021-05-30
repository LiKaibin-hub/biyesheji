<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<html>
  <head>
    <title>校园风光</title>
	
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

new CommDAO().update(request,response,"xiaoyuanfengguang",ext,true,false,""); 
HashMap mmm = new CommDAO().getmap(id,"xiaoyuanfengguang"); 

%>
  <form  action="xiaoyuanfengguang_updt.jsp?f=f&id=<%=mmm.get("id")%>"  method="post" name="form1"  onsubmit="return checkform();">
  修改校园风光:
  <br><br>
 
   <table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#cccccc" style="border-collapse:collapse">  
          <tr><td>编号：</td><td><input name='bianhao' type='text' id='bianhao' value='<%= mmm.get("bianhao")%>' class="form-control" /></td></tr>     <tr><td>标题：</td><td><input name='biaoti' type='text' id='biaoti' value='<%= mmm.get("biaoti")%>' class="form-control" /></td></tr>     <tr><td>名称：</td><td><input name='mingcheng' type='text' id='mingcheng' value='<%= mmm.get("mingcheng")%>' class="form-control" /></td></tr>     <tr><td>地点：</td><td><input name='didian' type='text' id='didian' value='<%= mmm.get("didian")%>' class="form-control" /></td></tr>     <tr><td>图片：</td><td><input name='tupian' type='text' id='tupian' size='50' value='<%= mmm.get("tupian")%>' class="form-control" /> <div style="margin-top:16px;">&nbsp;<input type='button' value='上传' onClick="up('tupian')"/></div></td></tr>     <tr><td>介绍：</td><td><textarea name='jieshao' cols='50' rows='5' id='jieshao' class="form-control" style="width:600px;height:80px;" ><%=mmm.get("jieshao")%></textarea></td></tr>     <tr><td>备注：</td><td><input name='beizhu' type='text' id='beizhu' class="form-control"  style="width:600px;" value='<%=mmm.get("beizhu")%>' /></td></tr>
    <tr>
      <td>&nbsp;</td>
      <td><input type="submit" name="Submit" value="提交" onClick="return checkform();" class="btn btn-info btn-small" />
      <input type="reset" name="Submit2" value="重置" class="btn btn-info btn-small" /></td>
    </tr>
  </table>
</form>

  </body>
</html>


