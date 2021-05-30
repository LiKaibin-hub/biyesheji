<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<html>
  <head>
    
    <title>辅导员信息</title>
	
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
	document.location.href="fudaoyuanxinxi_add.jsp?id=<%=id%>";
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










new CommDAO().insert(request,response,"fudaoyuanxinxi",ext,true,false,""); 

}

%>

  <body >
 <form  action="fudaoyuanxinxi_add.jsp?f=f&id=<%=id%>"  method="post" name="form1"  onsubmit="return checkform();">
  添加辅导员信息:
  <br><br>
   <table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#cccccc" >
		<tr><td  width="200">工号：</td><td><input name='gonghao' type='text' id='gonghao' value='' onblur='checkform()' class="form-control" />&nbsp;*<label id='clabelgonghao' /></td></tr>
		<tr><td  width="200">密码：</td><td><input name='mima' type='text' id='mima' value='' onblur='checkform()' class="form-control" />&nbsp;*<label id='clabelmima' /></td></tr>
		<tr><td  width="200">姓名：</td><td><input name='xingming' type='text' id='xingming' value='' onblur='checkform()' class="form-control" />&nbsp;*<label id='clabelxingming' /></td></tr>
		<tr><td>性别：</td><td><select name='xingbie' id='xingbie' class="form-control2"><option value="男">男</option><option value="女">女</option></select></td></tr>
		<tr><td  width="200">手机号：</td><td><input name='shoujihao' type='text' id='shoujihao' value='' onblur='checkform()' class="form-control" />&nbsp;*<label id='clabelshoujihao' /></td></tr>
		<tr><td  width="200">身份证：</td><td><input name='shenfenzheng' type='text' id='shenfenzheng' value='' onblur='checkform()' class="form-control" style="width:600px;" />&nbsp;*<label id='clabelshenfenzheng' /></td></tr>
		<tr><td  width="200">地址：</td><td><input name='dizhi' type='text' id='dizhi' value='' onblur='checkform()' class="form-control" style="width:600px;" />&nbsp;*<label id='clabeldizhi' /></td></tr>
		<tr>
		  <td>权限分配：</td>
		  <td><p>
		    <input name='quanxianfenpei' type='text' id='quanxianfenpei' value='' onblur='checkform()' class="form-control" style="width:600px;" />
		  </p>
	      <a onClick="hsgxia2shxurxu('公示信息管理','quanxianfenpei')" style="cursor:pointer"><br>
	      <br>
	      <br>
	      公示信息管理</a>；
		  <a onClick="hsgxia2shxurxu('系统简介设置','quanxianfenpei')" style="cursor:pointer">系统简介设置</a>；
		  <a onClick="hsgxia2shxurxu('物资管理','quanxianfenpei')" style="cursor:pointer">物资管理</a>；
		  <a onClick="hsgxia2shxurxu('新生管理','quanxianfenpei')" style="cursor:pointer">新生管理</a>；
		  <a onClick="hsgxia2shxurxu('宿舍分配管理','quanxianfenpei')" style="cursor:pointer">宿舍分配管理</a>；
	      <p>&nbsp; </p></td>
     </tr>
		<tr><td  width="200">备注：</td><td><textarea name='beizhu'  id='beizhu' onblur='' class="form-control" style="width:600px;height:80px;" ></textarea></td></tr>
		
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
 
	var gonghaoobj = document.getElementById("gonghao"); if(gonghaoobj.value==""){document.getElementById("clabelgonghao").innerHTML="&nbsp;&nbsp;<font color=red>请输入工号</font>";return false;}else{document.getElementById("clabelgonghao").innerHTML="  "; } 
	var gonghaoobj = document.getElementById("gonghao");  
if(gonghaoobj.value!=""){  
var ajax = new AJAX();
ajax.post("factory/checkno.jsp?table=fudaoyuanxinxi&col=gonghao&value="+gonghaoobj.value+"&checktype=insert&ttime=<%=Info.getDateStr()%>") 
var msg = ajax.getValue();
if(msg.indexOf('Y')>-1){
document.getElementById("clabelgonghao").innerHTML="&nbsp;&nbsp;<font color=red>工号已存在</font>";  
return false;
}else{document.getElementById("clabelgonghao").innerHTML="  ";  
}  
} 
	var mimaobj = document.getElementById("mima"); if(mimaobj.value==""){document.getElementById("clabelmima").innerHTML="&nbsp;&nbsp;<font color=red>请输入密码</font>";return false;}else{document.getElementById("clabelmima").innerHTML="  "; } 
	var xingmingobj = document.getElementById("xingming"); if(xingmingobj.value==""){document.getElementById("clabelxingming").innerHTML="&nbsp;&nbsp;<font color=red>请输入姓名</font>";return false;}else{document.getElementById("clabelxingming").innerHTML="  "; } 
	var shoujihaoobj = document.getElementById("shoujihao"); if(shoujihaoobj.value==""){document.getElementById("clabelshoujihao").innerHTML="&nbsp;&nbsp;<font color=red>请输入手机号</font>";return false;}else{document.getElementById("clabelshoujihao").innerHTML="  "; } 
	var shoujihaoobj = document.getElementById("shoujihao"); if(shoujihaoobj.value!=""){ if(/^(([0\+]\d{2,3}-)?(0\d{2,3})-)?(\d{7,8})(-(\d{3,}))?$/.test(shoujihaoobj.value) || /^1[3|4|5|6|7|8|9][0-9]\d{8,8}$/.test(shoujihaoobj.value)){document.getElementById("clabelshoujihao").innerHTML=""; }else{document.getElementById("clabelshoujihao").innerHTML="&nbsp;&nbsp;<font color=red>必需电话格式[7或8位电话，或11位手机]</font>"; return false;}}  
    var shenfenzhengobj = document.getElementById("shenfenzheng"); if(shenfenzhengobj.value==""){document.getElementById("clabelshenfenzheng").innerHTML="&nbsp;&nbsp;<font color=red>请输入身份证</font>";return false;}else{document.getElementById("clabelshenfenzheng").innerHTML="  "; } 
	var shenfenzhengobj = document.getElementById("shenfenzheng"); if(shenfenzhengobj.value!=""){ if(/^\d{15}$|^\d{18}$|^\d{17}[xX]$/.test(shenfenzhengobj.value)){document.getElementById("clabelshenfenzheng").innerHTML=""; }else{document.getElementById("clabelshenfenzheng").innerHTML="&nbsp;&nbsp;<font color=red>必需身份证格式</font>"; return false;}}  
    var dizhiobj = document.getElementById("dizhi"); if(dizhiobj.value==""){document.getElementById("clabeldizhi").innerHTML="&nbsp;&nbsp;<font color=red>请输入地址</font>";return false;}else{document.getElementById("clabeldizhi").innerHTML="  "; } 
	


return true;   
}   
popheight=450;
</script>  
<script src="images/hsgcommon/jq.js"></script>
<script src="images/hsgcommon/common.js"></script>
<script src="images/hsgcommon/bootbox.js"></script>
