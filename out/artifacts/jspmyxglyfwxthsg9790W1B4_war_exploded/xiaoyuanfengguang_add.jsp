<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<html>
  <head>
    
    <title>校园风光</title>
	
	<link rel="stylesheet" href="images/hsgcommon/common.css" type="text/css">
<link rel="stylesheet" href="images/hsgcommon/div.css" type="text/css">
    <script type="text/javascript" src="js/My97DatePicker/WdatePicker.js" charset="gb2312"></script>
	<script type="text/javascript" src="js/popup.js"></script>
	   
  </head>
<%
  String id="";
  id=request.getParameter("id");
  
 
   %>
<script language="javascript">

function gow()
{
	document.location.href="xiaoyuanfengguang_add.jsp?id=<%=id%>";
}

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

 <% 
HashMap ext = new HashMap(); 
if(request.getParameter("f")!=null){







ext.put("dianzan_d","0");
ext.put("dianzan_c","0");

new CommDAO().insert(request,response,"xiaoyuanfengguang",ext,true,false,""); 

}

%>

  <body >
 <form  action="xiaoyuanfengguang_add.jsp?f=f&id=<%=id%>"  method="post" name="form1"  onsubmit="return checkform();">
  添加校园风光:
  <br><br>
   <table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#cccccc" >
		<tr><td  width="200">编号：</td><td><input name='bianhao' type='text' id='bianhao' value='' onblur='checkform()' class="form-control" />&nbsp;*<label id='clabelbianhao' /></td></tr>		<tr><td  width="200">标题：</td><td><input name='biaoti' type='text' id='biaoti' value='' onblur='checkform()' class="form-control" />&nbsp;*<label id='clabelbiaoti' /></td></tr>		<tr><td  width="200">名称：</td><td><input name='mingcheng' type='text' id='mingcheng' value='' onblur='' class="form-control" /></td></tr>		<tr><td  width="200">地点：</td><td><input name='didian' type='text' id='didian' value='' onblur='' class="form-control" /></td></tr>		<tr><td  width="200">图片：</td><td><input name='tupian' type='text' id='tupian' size='50' value='' onblur='' class="form-control" /><div style="margin-top:12px;">&nbsp;<input type='button' value='上传' onClick="up('tupian')"  /></div></td></tr>		<tr><td  width="200">介绍：</td><td><textarea name='jieshao'  id='jieshao' onblur='' class="form-control" style="width:600px;height:80px;" ></textarea></td></tr>		<tr><td  width="200">备注：</td><td><input name='beizhu' type='text' id='beizhu' value='' onblur='' class="form-control" style="width:600px;" /></td></tr>		
    <tr>
      <td>&nbsp;</td>
      <td><input type="submit" name="Submit" value="提交"  class="btn btn-info btn-small" />
      <input type="reset" name="Submit2" value="重置" class="btn btn-info btn-small" /></td>
    </tr>
  </table>
</form>

  </body>
</html>



<script language=javascript src='js/ajax.js'></script>

<%@page import="java.util.ArrayList"%> 
<%@page import="java.util.HashMap"%> 

<script language=javascript >  
 
 function checkform(){  
 
	var bianhaoobj = document.getElementById("bianhao"); if(bianhaoobj.value==""){document.getElementById("clabelbianhao").innerHTML="&nbsp;&nbsp;<font color=red>请输入编号</font>";return false;}else{document.getElementById("clabelbianhao").innerHTML="  "; } 	var bianhaoobj = document.getElementById("bianhao");  
if(bianhaoobj.value!=""){  
var ajax = new AJAX();
ajax.post("factory/checkno.jsp?table=xiaoyuanfengguang&col=bianhao&value="+bianhaoobj.value+"&checktype=insert&ttime=<%=Info.getDateStr()%>") 
var msg = ajax.getValue();
if(msg.indexOf('Y')>-1){
document.getElementById("clabelbianhao").innerHTML="&nbsp;&nbsp;<font color=red>编号已存在</font>";  
return false;
}else{document.getElementById("clabelbianhao").innerHTML="  ";  
}  
} 	var biaotiobj = document.getElementById("biaoti"); if(biaotiobj.value==""){document.getElementById("clabelbiaoti").innerHTML="&nbsp;&nbsp;<font color=red>请输入标题</font>";return false;}else{document.getElementById("clabelbiaoti").innerHTML="  "; } 	


return true;   
}   
popheight=450;
</script>  
<script src="images/hsgcommon/jq.js"></script>
<script src="images/hsgcommon/common.js"></script>
<script src="images/hsgcommon/bootbox.js"></script>
