<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<html>
  <head>
    
    <title>入库信息</title>
	
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
	document.location.href="rukuxinxi_add.jsp?id=<%=id%>&wuzibianhao="+document.form1.wuzibianhao.value;
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









new CommDAO().commOper("update wuzixinxi set kucun=kucun+"+request.getParameter("rukushuliang")+" where wuzibianhao='"+request.getParameter("wuzibianhao")+"'");
new CommDAO().insert(request,response,"rukuxinxi",ext,true,false,""); 

}

%>

  <body >
 <form  action="rukuxinxi_add.jsp?f=f&id=<%=id%>"  method="post" name="form1"  onsubmit="return checkform();">
  添加入库信息:
  <br><br>
   <table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#cccccc" >
		<tr><td>物资编号：</td><td><%=Info.getselectsl("wuzibianhao","wuzixinxi","wuzibianhao")%>&nbsp;*<label id='clabelwuzibianhao' /></td></tr>
		<tr><td  width="200">物资名称：</td><td><input name='wuzimingcheng' type='text' id='wuzimingcheng' class="form-control" >&nbsp;*<label id='clabelwuzimingcheng' /></td></tr>
		<tr><td  width="200">物资类别：</td><td><input name='wuzileibie' type='text' id='wuzileibie' class="form-control" ></td></tr>
		
		<tr><td  width="200">库存：</td><td><input name='kucun' type='text' id='kucun' class="form-control" ></td></tr>
		
		
		
		<tr><td  width="200">入库数量：</td><td><input name='rukushuliang' type='text' id='rukushuliang' value='' onblur='checkform()' class="form-control" />&nbsp;<label id='clabelrukushuliang' />必需数字型</td></tr>
		<tr><td  width="200">备注：</td><td><textarea name='beizhu'  id='beizhu' onblur='' class="form-control" style="width:600px;height:80px;" ></textarea></td></tr>
		<tr><td  width="200">入库人：</td><td><input name='rukuren' type='text' id='rukuren' onblur='' class="form-control" value='<%=request.getSession().getAttribute("username")%>' readonly="readonly" /></td></tr>
		
    <tr>
      <td>&nbsp;</td>
      <td><input type="submit" name="Submit" value="提交"  class="btn btn-info btn-small" />
      <input type="reset" name="Submit2" value="重置" class="btn btn-info btn-small" /></td>
    </tr>
  </table>
</form>

  </body>
</html>

<%
if(request.getParameter("wuzibianhao")==null || request.getParameter("wuzibianhao").equals("")){}else{

HashMap mmm = new CommDAO().getmaps("wuzibianhao",request.getParameter("wuzibianhao"),"wuzixinxi"); 
%>
<script language="javascript">
document.form1.wuzibianhao.value="<%=mmm.get("wuzibianhao")%>";
document.form1.wuzimingcheng.value="<%=mmm.get("wuzimingcheng")%>";
document.form1.wuzileibie.value="<%=mmm.get("wuzileibie")%>";
document.form1.kucun.value="<%=mmm.get("kucun")%>";
//suilafuzhi

</script>
<%
}
%>


<script language=javascript src='js/ajax.js'></script>

<%@page import="java.util.ArrayList"%> 
<%@page import="java.util.HashMap"%> 

<script language=javascript >  
 
 function checkform(){  
 
	var wuzibianhaoobj = document.getElementById("wuzibianhao"); if(wuzibianhaoobj.value==""){document.getElementById("clabelwuzibianhao").innerHTML="&nbsp;&nbsp;<font color=red>请输入物资编号</font>";return false;}else{document.getElementById("clabelwuzibianhao").innerHTML="  "; } 
	var wuzimingchengobj = document.getElementById("wuzimingcheng"); if(wuzimingchengobj.value==""){document.getElementById("clabelwuzimingcheng").innerHTML="&nbsp;&nbsp;<font color=red>请输入物资名称</font>";return false;}else{document.getElementById("clabelwuzimingcheng").innerHTML="  "; } 
	var rukushuliangobj = document.getElementById("rukushuliang"); if(rukushuliangobj.value!=""){ if(/^[0-9]+.?[0-9]*$/.test(rukushuliangobj.value)){document.getElementById("clabelrukushuliang").innerHTML=""; }else{document.getElementById("clabelrukushuliang").innerHTML="&nbsp;&nbsp;<font color=red>必需数字型</font>"; return false;}}  
    


return true;   
}   
popheight=450;
</script>  
<script src="images/hsgcommon/jq.js"></script>
<script src="images/hsgcommon/common.js"></script>
<script src="images/hsgcommon/bootbox.js"></script>
