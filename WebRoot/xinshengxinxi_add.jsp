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
	document.location.href="xinshengxinxi_add.jsp?id=<%=id%>";
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







new CommDAO().insert(request,response,"xinshengxinxi",ext,true,false,""); 

}

%>

  <body >
 <form  action="xinshengxinxi_add.jsp?f=f&id=<%=id%>"  method="post" name="form1"  onsubmit="return checkform();">
  ����������Ϣ:
  <br><br>
   <table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#cccccc" >
		<tr><td  width="200">ѧ�ţ�</td><td><input name='xuehao' type='text' id='xuehao' value='' onblur='checkform()' class="form-control"  /> *<label id='clabelxuehao' /></td></tr>
       <tr><td  width="200">���룺</td><td><input name='mima' type='text' id='mima' value='' onblur='checkform()'  class="form-control" />&nbsp;*<label id='clabelmima' /></td></tr>
		<tr><td  width="200">������</td><td><input name='xingming' type='text' id='xingming' value='' onblur='checkform()' class="form-control"   /> *<label id='clabelxingming' /></td></tr>
		<tr><td  width="200">�Ա�</td><td><select name='xingbie' id='xingbie' value='' onblur='' class="form-control">
            <option value="��">��</option>
            <option value="Ů">Ů</option>
        </select> </td></tr>
		<tr><td  width="200">����֤��</td><td><input name='shenfenzheng' type='text' id='shenfenzheng' value='' onblur='checkform()' class="form-control"   /> *<label id='clabelshenfenzheng' /></td></tr>
		<tr><td  width="200">�绰��</td><td><input name='dianhua' type='text' id='dianhua' value='' onblur='checkform()' class="form-control"  /> *<label id='clabeldianhua' /></td></tr>
		<tr><td  width="200">���᣺</td><td><input name='jiguan' type='text' id='jiguan' value='' onblur='' class="form-control"  /> </td></tr>
		<tr><td>רҵ��</td><td><%=Info.getselect("zhuanye","zhuanyexinxi","zhuanye")%></td></tr>
		<tr><td>�༶��</td><td><%=Info.getselect("banji","banjixinxi","banji")%></td></tr>
		<tr><td width="200">��ѧʱ�䣺</td><td><input name='ruxueshijian' type='text' id='ruxueshijian' value='' onblur='' readonly='readonly' onClick="WdatePicker({'dateFmt':'yyyy-MM-dd'})" class="form-control"  /></td></tr>
		<tr><td  width="200">��ע��</td><td><textarea name='beizhu'  id='beizhu' onblur='' class="form-control" style="width:600px;height:80px;" ></textarea></td></tr>
		
    <tr>
      <td>&nbsp;</td>
      <td><input type="submit" name="Submit" value="�ύ"   class="btn btn-info btn-small" />
      <input type="reset" name="Submit2" value="����" class="btn btn-info btn-small" /></td>
    </tr>
  </table>
</form>

  </body>
</html>



<script language=javascript src='js/ajax.js'></script>

<%@page import="java.util.HashMap"%> 

<script language=javascript >

 function checkform(){

     var xuehaoobj = document.getElementById("xuehao");
     if(xuehaoobj.value==""){
         document.getElementById("clabelxuehao").innerHTML="&nbsp;&nbsp;<font color=red>������ѧ��</font>";
         return false;
     }else{
         document.getElementById("clabelxuehao").innerHTML="  ";
     }
     var mimaobj = document.getElementById("mima");
     if(mimaobj.value==""){
         document.getElementById("clabelmima").innerHTML="&nbsp;&nbsp;<font color=red>����������</font>";return false;
     }else{
         document.getElementById("clabelmima").innerHTML="  ";
     }
     var xingmingobj = document.getElementById("xingming"); if(xingmingobj.value==""){document.getElementById("clabelxingming").innerHTML="&nbsp;&nbsp;<font color=red>����������</font>";return false;}else{document.getElementById("clabelxingming").innerHTML="  "; }
     var shenfenzhengobj = document.getElementById("shenfenzheng"); if(shenfenzhengobj.value==""){document.getElementById("clabelshenfenzheng").innerHTML="&nbsp;&nbsp;<font color=red>����������֤</font>";return false;}else{document.getElementById("clabelshenfenzheng").innerHTML="  "; }
     var shenfenzhengobj = document.getElementById("shenfenzheng"); if(shenfenzhengobj.value!=""){ if(/^\d{15}$|^\d{18}$|^\d{17}[xX]$/.test(shenfenzhengobj.value)){document.getElementById("clabelshenfenzheng").innerHTML=""; }else{document.getElementById("clabelshenfenzheng").innerHTML="&nbsp;&nbsp;<font color=red>��������֤��ʽ</font>"; return false;}}
     var dianhuaobj = document.getElementById("dianhua"); if(dianhuaobj.value==""){document.getElementById("clabeldianhua").innerHTML="&nbsp;&nbsp;<font color=red>������绰</font>";return false;}else{document.getElementById("clabeldianhua").innerHTML="  "; }
     var dianhuaobj = document.getElementById("dianhua"); if(dianhuaobj.value!=""){ if(/^(([0\+]\d{2,3}-)?(0\d{2,3})-)?(\d{7,8})(-(\d{3,}))?$/.test(dianhuaobj.value) || /^1[3|4|5|6|7|8|9][0-9]\d{8,8}$/.test(dianhuaobj.value)){document.getElementById("clabeldianhua").innerHTML=""; }else{document.getElementById("clabeldianhua").innerHTML="&nbsp;&nbsp;<font color=red>����绰��ʽ[7��8λ�绰����11λ�ֻ�]</font>"; return false;}}


}
popheight=450;
</script>
<script src="images/hsgcommon/jq.js"></script>
<script src="images/hsgcommon/common.js"></script>
<script src="images/hsgcommon/bootbox.js"></script>