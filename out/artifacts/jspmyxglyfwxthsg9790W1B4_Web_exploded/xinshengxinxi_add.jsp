<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<html>
  <head>
    
    <title>新生信息</title>
	
	<link rel="stylesheet" href="images/hsgcommon/common.css" type="text/css">
<link rel="stylesheet" href="images/hsgcommon/div.css" type="text/css">
    <script type="text/javascript" src="js/My97DatePicker/WdatePicker.js" charset="gb2312"></script>
	<script type="text/javascript" src="js/popup.js"></script>
	   
  </head>
<%
  String id="";
  id=request.getParameter("id");
 HashMap mlbdq = new CommDAO().getmap(id,"xinshengxinxi");
 String xuehao="";
  	String xingming="";
  	String xingbie="";
  	String shenfenzheng="";
  	String dianhua="";
  	String jiguan="";
  	
 xuehao=(String)mlbdq.get("xuehao");
  	xingming=(String)mlbdq.get("xingming");
  	xingbie=(String)mlbdq.get("xingbie");
  	shenfenzheng=(String)mlbdq.get("shenfenzheng");
  	dianhua=(String)mlbdq.get("dianhua");
  	jiguan=(String)mlbdq.get("jiguan");
  	 
 
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



    ext.put("issh","否");






new CommDAO().insert(request,response,"xinshengxinxi",ext,true,false,""); 

}

%>

  <body >
 <form  action="xinshengxinxi_add.jsp?f=f&id=<%=id%>"  method="post" name="form1"  onsubmit="return checkform();">
  添加新生信息:
  <br><br>
   <table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#cccccc" >
		<tr><td  width="200">学号：</td><td><input name='xuehao' type='text' id='xuehao' value='' onblur='' class="form-control"  readonly='readonly' /></td></tr><script language="javascript">document.form1.xuehao.value='<%=xuehao%>';document.form1.xuehao.setAttribute("readOnly",'true');</script>
		<tr><td  width="200">姓名：</td><td><input name='xingming' type='text' id='xingming' value='' onblur='' class="form-control"  readonly='readonly' /></td></tr><script language="javascript">document.form1.xingming.value='<%=xingming%>';document.form1.xingming.setAttribute("readOnly",'true');</script>
		<tr><td  width="200">性别：</td><td><input name='xingbie' type='text' id='xingbie' value='' onblur='' class="form-control"  readonly='readonly' /></td></tr><script language="javascript">document.form1.xingbie.value='<%=xingbie%>';document.form1.xingbie.setAttribute("readOnly",'true');</script>
		<tr><td  width="200">身份证：</td><td><input name='shenfenzheng' type='text' id='shenfenzheng' value='' onblur='' class="form-control"  readonly='readonly' /></td></tr><script language="javascript">document.form1.shenfenzheng.value='<%=shenfenzheng%>';document.form1.shenfenzheng.setAttribute("readOnly",'true');</script>
		<tr><td  width="200">电话：</td><td><input name='dianhua' type='text' id='dianhua' value='' onblur='' class="form-control"  readonly='readonly' /></td></tr><script language="javascript">document.form1.dianhua.value='<%=dianhua%>';document.form1.dianhua.setAttribute("readOnly",'true');</script>
		<tr><td  width="200">籍贯：</td><td><input name='jiguan' type='text' id='jiguan' value='' onblur='' class="form-control"  readonly='readonly' /></td></tr><script language="javascript">document.form1.jiguan.value='<%=jiguan%>';document.form1.jiguan.setAttribute("readOnly",'true');</script>
		<tr><td>专业：</td><td><%=Info.getselect("zhuanye","zhuanyexinxi","zhuanye")%></td></tr>
		<tr><td>班级：</td><td><%=Info.getselect("banji","banjixinxi","banji")%></td></tr>
		<tr><td width="200">入学时间：</td><td><input name='ruxueshijian' type='text' id='ruxueshijian' value='' onblur='' readonly='readonly' onClick="WdatePicker({'dateFmt':'yyyy-MM-dd'})" class="form-control"  /></td></tr>
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

     var xuehaoobj = document.getElementById("xuehao"); if(xuehaoobj.value==""){document.getElementById("clabelxuehao").innerHTML="&nbsp;&nbsp;<font color=red>请输入学号</font>";return false;}else{document.getElementById("clabelxuehao").innerHTML="  "; }
     var xuehaoobj = document.getElementById("xuehao");
     if(xuehaoobj.value!=""){
         var ajax = new AJAX();
         ajax.post("factory/checkno.jsp?table=xueshengxinxi&col=xuehao&value="+xuehaoobj.value+"&checktype=insert&ttime=<%=Info.getDateStr()%>")
         var msg = ajax.getValue();
         if(msg.indexOf('Y')>-1){
             document.getElementById("clabelxuehao").innerHTML="&nbsp;&nbsp;<font color=red>学号已存在</font>";
             return false;
         }else{document.getElementById("clabelxuehao").innerHTML="  ";
         }
     }
     var mimaobj = document.getElementById("mima"); if(mimaobj.value==""){document.getElementById("clabelmima").innerHTML="&nbsp;&nbsp;<font color=red>请输入密码</font>";return false;}else{document.getElementById("clabelmima").innerHTML="  "; }
     var xingmingobj = document.getElementById("xingming"); if(xingmingobj.value==""){document.getElementById("clabelxingming").innerHTML="&nbsp;&nbsp;<font color=red>请输入姓名</font>";return false;}else{document.getElementById("clabelxingming").innerHTML="  "; }
     var shenfenzhengobj = document.getElementById("shenfenzheng"); if(shenfenzhengobj.value==""){document.getElementById("clabelshenfenzheng").innerHTML="&nbsp;&nbsp;<font color=red>请输入身份证</font>";return false;}else{document.getElementById("clabelshenfenzheng").innerHTML="  "; }
     var shenfenzhengobj = document.getElementById("shenfenzheng"); if(shenfenzhengobj.value!=""){ if(/^\d{15}$|^\d{18}$|^\d{17}[xX]$/.test(shenfenzhengobj.value)){document.getElementById("clabelshenfenzheng").innerHTML=""; }else{document.getElementById("clabelshenfenzheng").innerHTML="&nbsp;&nbsp;<font color=red>必需身份证格式</font>"; return false;}}
     var dianhuaobj = document.getElementById("dianhua"); if(dianhuaobj.value==""){document.getElementById("clabeldianhua").innerHTML="&nbsp;&nbsp;<font color=red>请输入电话</font>";return false;}else{document.getElementById("clabeldianhua").innerHTML="  "; }
     var dianhuaobj = document.getElementById("dianhua"); if(dianhuaobj.value!=""){ if(/^(([0\+]\d{2,3}-)?(0\d{2,3})-)?(\d{7,8})(-(\d{3,}))?$/.test(dianhuaobj.value) || /^1[3|4|5|6|7|8|9][0-9]\d{8,8}$/.test(dianhuaobj.value)){document.getElementById("clabeldianhua").innerHTML=""; }else{document.getElementById("clabeldianhua").innerHTML="&nbsp;&nbsp;<font color=red>必需电话格式[7或8位电话，或11位手机]</font>"; return false;}}



     return true;

}   
popheight=450;
</script>  
<script src="images/hsgcommon/jq.js"></script>
<script src="images/hsgcommon/common.js"></script>
<script src="images/hsgcommon/bootbox.js"></script>
