<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<html>
  <head>
    
    <title>Àﬁ…·–≈œ¢</title>
	
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
	document.location.href="sushexinxi_add.jsp?id=<%=id%>";
}

function hsgxia2shxurxu(nstr,nwbk)
{
	if (eval("form1."+nwbk).value.indexOf(nstr)>=0)
	{
		eval("form1."+nwbk).value=eval("form1."+nwbk).value.replace(nstr+"£ª", "");
	}
	else
	{
		eval("form1."+nwbk).value=eval("form1."+nwbk).value+nstr+"£ª";
	}
}
</script>

 <% 
HashMap ext = new HashMap(); 
if(request.getParameter("f")!=null){










new CommDAO().insert(request,response,"sushexinxi",ext,true,false,""); 

}

%>

  <body >
 <form  action="sushexinxi_add.jsp?f=f&id=<%=id%>"  method="post" name="form1"  onsubmit="return checkform();">
  ÃÌº”Àﬁ…·–≈œ¢:
  <br><br>
   <table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#cccccc" >
		<tr><td  width="200">Àﬁ…·∫≈£∫</td><td><input name='sushehao' type='text' id='sushehao' value='' onblur='checkform()' class="form-control" />&nbsp;*<label id='clabelsushehao' /></td></tr>		<tr><td  width="200">¬•≤„£∫</td><td><input name='louceng' type='text' id='louceng' value='' onblur='checkform()' class="form-control" />&nbsp;*<label id='clabellouceng' /></td></tr>		<tr><td  width="200">Œª÷√£∫</td><td><input name='weizhi' type='text' id='weizhi' value='' onblur='checkform()' class="form-control" style="width:600px;" />&nbsp;*<label id='clabelweizhi' /></td></tr>		<tr><td  width="200">±∏◊¢£∫</td><td><textarea name='beizhu'  id='beizhu' onblur='' class="form-control" style="width:600px;height:80px;" ></textarea></td></tr>		
    <tr>
      <td>&nbsp;</td>
      <td><input type="submit" name="Submit" value="Ã·Ωª"  class="btn btn-info btn-small" />
      <input type="reset" name="Submit2" value="÷ÿ÷√" class="btn btn-info btn-small" /></td>
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
 
	var sushehaoobj = document.getElementById("sushehao"); if(sushehaoobj.value==""){document.getElementById("clabelsushehao").innerHTML="&nbsp;&nbsp;<font color=red>«Î ‰»ÎÀﬁ…·∫≈</font>";return false;}else{document.getElementById("clabelsushehao").innerHTML="  "; } 	var sushehaoobj = document.getElementById("sushehao");  
if(sushehaoobj.value!=""){  
var ajax = new AJAX();
ajax.post("factory/checkno.jsp?table=sushexinxi&col=sushehao&value="+sushehaoobj.value+"&checktype=insert&ttime=<%=Info.getDateStr()%>") 
var msg = ajax.getValue();
if(msg.indexOf('Y')>-1){
document.getElementById("clabelsushehao").innerHTML="&nbsp;&nbsp;<font color=red>Àﬁ…·∫≈“—¥Ê‘⁄</font>";  
return false;
}else{document.getElementById("clabelsushehao").innerHTML="  ";  
}  
} 	var loucengobj = document.getElementById("louceng"); if(loucengobj.value==""){document.getElementById("clabellouceng").innerHTML="&nbsp;&nbsp;<font color=red>«Î ‰»Î¬•≤„</font>";return false;}else{document.getElementById("clabellouceng").innerHTML="  "; } 	var weizhiobj = document.getElementById("weizhi"); if(weizhiobj.value==""){document.getElementById("clabelweizhi").innerHTML="&nbsp;&nbsp;<font color=red>«Î ‰»ÎŒª÷√</font>";return false;}else{document.getElementById("clabelweizhi").innerHTML="  "; } 	


return true;   
}   
popheight=450;
</script>  
<script src="images/hsgcommon/jq.js"></script>
<script src="images/hsgcommon/common.js"></script>
<script src="images/hsgcommon/bootbox.js"></script>
