<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<html>
  <head>
    
    <title>������Ϣ</title>
	
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
	document.location.href="wuzixinxi_add.jsp?id=<%=id%>";
}

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

 <% 
HashMap ext = new HashMap(); 
if(request.getParameter("f")!=null){










new CommDAO().insert(request,response,"wuzixinxi",ext,true,false,""); 

}

%>

  <body >
 <form  action="wuzixinxi_add.jsp?f=f&id=<%=id%>"  method="post" name="form1"  onsubmit="return checkform();">
  ���������Ϣ:
  <br><br>
   <table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#cccccc" >
		<tr><td  width="200">���ʱ�ţ�</td><td><input name='wuzibianhao' type='text' id='wuzibianhao' value='<%=Info.getID()%>' onblur='' class="form-control" /></td></tr>		<tr><td  width="200">�������ƣ�</td><td><input name='wuzimingcheng' type='text' id='wuzimingcheng' value='' onblur='checkform()' class="form-control" />&nbsp;*<label id='clabelwuzimingcheng' /></td></tr>		<tr><td>�������</td><td><select name='wuzileibie' id='wuzileibie' class="form-control2"><option value="����Ʒ">����Ʒ</option><option value="�鼮">�鼮</option><option value="����">����</option></select></td></tr>		<tr><td  width="200">��棺</td><td><input name='kucun' type='text' id='kucun' value='' onblur='checkform()' class="form-control" />&nbsp;*<label id='clabelkucun' /></td></tr>		<tr><td  width="200">ͼƬ��</td><td><input name='tupian' type='text' id='tupian' size='50' value='' onblur='' class="form-control" /><div style="margin-top:12px;">&nbsp;<input type='button' value='�ϴ�' onClick="up('tupian')"  /></div></td></tr>		<tr><td  width="200">��ע��</td><td><textarea name='beizhu'  id='beizhu' onblur='' class="form-control" style="width:600px;height:80px;" ></textarea></td></tr>		
    <tr>
      <td>&nbsp;</td>
      <td><input type="submit" name="Submit" value="�ύ"  class="btn btn-info btn-small" />
      <input type="reset" name="Submit2" value="����" class="btn btn-info btn-small" /></td>
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
 
	var wuzimingchengobj = document.getElementById("wuzimingcheng"); if(wuzimingchengobj.value==""){document.getElementById("clabelwuzimingcheng").innerHTML="&nbsp;&nbsp;<font color=red>��������������</font>";return false;}else{document.getElementById("clabelwuzimingcheng").innerHTML="  "; } 	var kucunobj = document.getElementById("kucun"); if(kucunobj.value==""){document.getElementById("clabelkucun").innerHTML="&nbsp;&nbsp;<font color=red>��������</font>";return false;}else{document.getElementById("clabelkucun").innerHTML="  "; } 	var kucunobj = document.getElementById("kucun"); if(kucunobj.value!=""){ if(/^[0-9]+.?[0-9]*$/.test(kucunobj.value)){document.getElementById("clabelkucun").innerHTML=""; }else{document.getElementById("clabelkucun").innerHTML="&nbsp;&nbsp;<font color=red>����������</font>"; return false;}}      


return true;   
}   
popheight=450;
</script>  
<script src="images/hsgcommon/jq.js"></script>
<script src="images/hsgcommon/common.js"></script>
<script src="images/hsgcommon/bootbox.js"></script>
