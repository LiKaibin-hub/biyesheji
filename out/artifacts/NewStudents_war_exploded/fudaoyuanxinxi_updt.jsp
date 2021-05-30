<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<html>
  <head>
    <title>辅导员信息</title>
	
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

new CommDAO().update(request,response,"fudaoyuanxinxi",ext,true,false,""); 
HashMap mmm = new CommDAO().getmap(id,"fudaoyuanxinxi"); 

%>
  <form  action="fudaoyuanxinxi_updt.jsp?f=f&id=<%=mmm.get("id")%>"  method="post" name="form1"  onsubmit="return checkform();">
  修改辅导员信息:
  <br><br>
 
   <table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#cccccc" style="border-collapse:collapse">  
     
     <tr><td>工号：</td><td><input name='gonghao' type='text' id='gonghao' value='<%= mmm.get("gonghao")%>' class="form-control" /></td></tr>
     <tr><td>密码：</td><td><input name='mima' type='text' id='mima' value='<%= mmm.get("mima")%>' class="form-control" /></td></tr>
     <tr><td>姓名：</td><td><input name='xingming' type='text' id='xingming' value='<%= mmm.get("xingming")%>' class="form-control" /></td></tr>
     <tr><td>性别：</td><td><select name='xingbie' id='xingbie' class="form-control2"><option value="男">男</option><option value="女">女</option></select></td></tr><script language="javascript">document.form1.xingbie.value='<%=mmm.get("xingbie")%>';</script>
     <tr><td>手机号：</td><td><input name='shoujihao' type='text' id='shoujihao' value='<%= mmm.get("shoujihao")%>' class="form-control" /></td></tr>
     <tr><td>身份证：</td><td><input name='shenfenzheng' type='text' id='shenfenzheng' class="form-control"  style="width:600px;" value='<%=mmm.get("shenfenzheng")%>' /></td></tr>
     <tr><td>地址：</td><td><input name='dizhi' type='text' id='dizhi' class="form-control"  style="width:600px;" value='<%=mmm.get("dizhi")%>' /></td></tr>
     <tr>
       <td>权限分配：</td>
       <td><p>
           <input name='quanxianfenpei' type='text' id='quanxianfenpei' value='<%=mmm.get("quanxianfenpei")%>' onblur='checkform()' class="form-control" style="width:600px;" />
         </p>
           <a onClick="hsgxia2shxurxu('校园信息管理','quanxianfenpei')" style="cursor:pointer"><br>
           <br>
           <br>
             校园信息管理</a>； <a onClick="hsgxia2shxurxu('系统简介设置','quanxianfenpei')" style="cursor:pointer">系统简介设置</a>； <a onClick="hsgxia2shxurxu('物资管理','quanxianfenpei')" style="cursor:pointer">物资管理</a>； <a onClick="hsgxia2shxurxu('新生管理','quanxianfenpei')" style="cursor:pointer">新生管理</a>； <a onClick="hsgxia2shxurxu('宿舍分配管理','quanxianfenpei')" style="cursor:pointer">宿舍分配管理</a>；
         <p>&nbsp; </p></td>
     </tr>
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


