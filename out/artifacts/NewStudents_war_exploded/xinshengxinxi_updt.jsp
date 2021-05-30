<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<html>
  <head>
    <title>新生信息</title>
	
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

new CommDAO().update(request,response,"xinshengxinxi",ext,true,false,""); 
HashMap mmm = new CommDAO().getmap(id,"xinshengxinxi"); 

%>
  <form  action="xinshengxinxi_updt.jsp?f=f&id=<%=mmm.get("id")%>"  method="post" name="form1"  onsubmit="return checkform();">
  修改新生信息:
  <br><br>
 
   <table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#cccccc" style="border-collapse:collapse">  
     
     <tr><td>学号：</td><td><input name='xuehao' type='text' id='xuehao' value='<%= mmm.get("xuehao")%>' class="form-control" /></td></tr>
     <tr><td>密码：</td><td><input name='mima' type='text' id='mima' value='<%= mmm.get("mima")%>' class="form-control" /></td></tr>
     <tr><td>姓名：</td><td><input name='xingming' type='text' id='xingming' value='<%= mmm.get("xingming")%>' class="form-control" /></td></tr>
     <tr><td>性别：</td><td><input name='xingbie' type='text' id='xingbie' value='<%= mmm.get("xingbie")%>' class="form-control" /></td></tr>
     <tr><td>身份证：</td><td><input name='shenfenzheng' type='text' id='shenfenzheng' value='<%= mmm.get("shenfenzheng")%>' class="form-control" /></td></tr>
     <tr><td>电话：</td><td><input name='dianhua' type='text' id='dianhua' value='<%= mmm.get("dianhua")%>' class="form-control" /></td></tr>
     <tr><td>籍贯：</td><td><input name='jiguan' type='text' id='jiguan' value='<%= mmm.get("jiguan")%>' class="form-control" /></td></tr>
     <tr><td>专业：</td><td><%=Info.getselect("zhuanye","zhuanyexinxi","zhuanye")%></td></tr><script language="javascript">document.form1.zhuanye.value='<%=mmm.get("zhuanye")%>';</script>
     <tr><td>班级：</td><td><%=Info.getselect("banji","banjixinxi","banji")%></td></tr><script language="javascript">document.form1.banji.value='<%=mmm.get("banji")%>';</script>
     <tr><td>入学时间：</td><td><input name='ruxueshijian' type='text' id='ruxueshijian' value='<%= mmm.get("ruxueshijian")%>' onclick="WdatePicker({'dateFmt':'yyyy-MM-dd'})" readonly='readonly' class="form-control"  /></td></tr>
     <tr><td>备注：</td><td><textarea name='beizhu' cols='50' rows='5' id='beizhu' class="form-control" style="width:600px;height:80px;" ><%=mmm.get("beizhu")%></textarea></td></tr>
    <tr>
      <td>&nbsp;</td>
      <td><input type="submit" name="Submit" value="提交" onClick="return checkform();" class="btn btn-info btn-small" />
      <input type="reset" name="Submit2" value="重置" class="btn btn-info btn-small" /></td>
    </tr>
  </table>
</form>

  </body>
</html>


