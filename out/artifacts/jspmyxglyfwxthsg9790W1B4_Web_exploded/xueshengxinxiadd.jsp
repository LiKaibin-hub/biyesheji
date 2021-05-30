<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>学生信息</title>
  <meta content="width=device-width, initial-scale=1.0" name="viewport">
  <meta content="Author" name="WebThemez">
  <link href="qtimages/images/apple-touch-icon.png" rel="apple-touch-icon">
  <link href="qtimages/lib/font-awesome/css/font-awesome.min.css" rel="stylesheet">
  <link href="qtimages/lib/animate/animate.min.css" rel="stylesheet">
  <link href="qtimages/lib/ionicons/css/ionicons.min.css" rel="stylesheet">
  <link href="qtimages/lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">
  <link href="qtimages/lib/magnific-popup/magnific-popup.css" rel="stylesheet">
  <link href="qtimages/lib/ionicons/css/ionicons.min.css" rel="stylesheet">
  <link href="qtimages/lib/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <link href="qtimages/css/style.css" rel="stylesheet">
  <link rel="stylesheet" href="qtimages/css/custom.css">
<meta http-equiv="Content-Type" content="text/html; charset=gb2312"></head>
<%

  String id="";

 
  
 

   %>
<script type="text/javascript" src="js/My97DatePicker/WdatePicker.js" charset="gb2312"></script>
	<script type="text/javascript" src="js/popup.js"></script>
	<script language=javascript src='js/ajax.js'></script>
	<script language="javascript">
function checkform()
{
	var xuehaoobj = document.getElementById("xuehao"); if(xuehaoobj.value==""){document.getElementById("clabelxuehao").innerHTML="&nbsp;&nbsp;<font color=red>请输入学号</font>";return false;}else{document.getElementById("clabelxuehao").innerHTML="  "; } 	var xuehaoobj = document.getElementById("xuehao");  
if(xuehaoobj.value!=""){  
var ajax = new AJAX();
ajax.post("factory/checkno.jsp?table=xueshengxinxi&col=xuehao&value="+xuehaoobj.value+"&checktype=insert&ttime=<%=Info.getDateStr()%>") 
var msg = ajax.getValue();
if(msg.indexOf('Y')>-1){
document.getElementById("clabelxuehao").innerHTML="&nbsp;&nbsp;<font color=red>学号已存在</font>";  
return false;
}else{document.getElementById("clabelxuehao").innerHTML="  ";  
}  
} 	var mimaobj = document.getElementById("mima"); if(mimaobj.value==""){document.getElementById("clabelmima").innerHTML="&nbsp;&nbsp;<font color=red>请输入密码</font>";return false;}else{document.getElementById("clabelmima").innerHTML="  "; } 	var xingmingobj = document.getElementById("xingming"); if(xingmingobj.value==""){document.getElementById("clabelxingming").innerHTML="&nbsp;&nbsp;<font color=red>请输入姓名</font>";return false;}else{document.getElementById("clabelxingming").innerHTML="  "; } 	var shenfenzhengobj = document.getElementById("shenfenzheng"); if(shenfenzhengobj.value==""){document.getElementById("clabelshenfenzheng").innerHTML="&nbsp;&nbsp;<font color=red>请输入身份证</font>";return false;}else{document.getElementById("clabelshenfenzheng").innerHTML="  "; } 	var shenfenzhengobj = document.getElementById("shenfenzheng"); if(shenfenzhengobj.value!=""){ if(/^\d{15}$|^\d{18}$|^\d{17}[xX]$/.test(shenfenzhengobj.value)){document.getElementById("clabelshenfenzheng").innerHTML=""; }else{document.getElementById("clabelshenfenzheng").innerHTML="&nbsp;&nbsp;<font color=red>必需身份证格式</font>"; return false;}}      var dianhuaobj = document.getElementById("dianhua"); if(dianhuaobj.value==""){document.getElementById("clabeldianhua").innerHTML="&nbsp;&nbsp;<font color=red>请输入电话</font>";return false;}else{document.getElementById("clabeldianhua").innerHTML="  "; } 	var dianhuaobj = document.getElementById("dianhua"); if(dianhuaobj.value!=""){ if(/^(([0\+]\d{2,3}-)?(0\d{2,3})-)?(\d{7,8})(-(\d{3,}))?$/.test(dianhuaobj.value) || /^1[3|4|5|6|7|8|9][0-9]\d{8,8}$/.test(dianhuaobj.value)){document.getElementById("clabeldianhua").innerHTML=""; }else{document.getElementById("clabeldianhua").innerHTML="&nbsp;&nbsp;<font color=red>必需电话格式[7或8位电话，或11位手机]</font>"; return false;}}      
}
function gow()
{
	document.location.href="xueshengxinxiadd.jsp?id=<%=id%>";
}
popheight=850;
</script>


<body id="body">
<%@ include file="qttop.jsp"%>
<%@ include file="bht.jsp"%>
  <main id="main">
    <section id="services" class="wow fadeInUp">
      <div class="container">
	   <div class="section-header">
            <h2>◇◆ 学生信息 ◆◇</h2>
          </div>
        <div class="row">
         
		      <% 
HashMap ext = new HashMap(); 
if(request.getParameter("f")!=null){



ext.put("issh","否");






new CommDAO().insert(request,response,"xueshengxinxi",ext,true,false,""); 

 }
%>
   <form  action="xueshengxinxiadd.jsp?f=f&id=<%=id%>"  method="post" name="form1"  onsubmit="return checkform();">
    <table width="100%" border="0" align="center" cellpadding="3" cellspacing="1" bordercolor="#00FFFF" style="border-collapse:collapse"  class="newsline">  
       <tr><td  width="200">学号：</td><td><input name='xuehao' type='text' id='xuehao' value='' onblur='checkform()' class="user" />&nbsp;*<label id='clabelxuehao' /></td></tr>		<tr><td  width="200">密码：</td><td><input name='mima' type='text' id='mima' value='' onblur='checkform()' class="user" />&nbsp;*<label id='clabelmima' /></td></tr>		<tr><td  width="200">姓名：</td><td><input name='xingming' type='text' id='xingming' value='' onblur='checkform()' class="user" />&nbsp;*<label id='clabelxingming' /></td></tr>		<tr><td>性别：</td><td><select name='xingbie' id='xingbie' class="xingbie"><option value="男">男</option><option value="女">女</option></select></td></tr>		<tr><td  width="200">身份证：</td><td><input name='shenfenzheng' type='text' id='shenfenzheng' value='' onblur='checkform()' class="user" style="width:600px;" />&nbsp;*<label id='clabelshenfenzheng' /></td></tr>		<tr><td  width="200">电话：</td><td><input name='dianhua' type='text' id='dianhua' value='' onblur='checkform()' class="user" />&nbsp;*<label id='clabeldianhua' /></td></tr>		<tr><td  width="200">籍贯：</td><td><input name='jiguan' type='text' id='jiguan' value='' onblur='' class="user" /></td></tr>		<tr><td  width="200">照片：</td><td><input name='zhaopian' type='text' id='zhaopian' size='50' value='' onblur='' class="user" />&nbsp;<input type='button' value='上传' onClick="up('zhaopian')"   class="content-form-signup" /></td></tr>		<tr><td  width="200">备注：</td><td><textarea name='beizhu'  id='beizhu' onblur='' class="user" style="width:600px;height:80px;" ></textarea></td></tr>		
    <tr>
      <td>&nbsp;</td>
      <td><input type="submit" name="Submit" value="提交" onclick="return checkform();" class="content-form-signup" />
      <input type="reset" name="reset" value="重置" class="content-form-signup" /></td>
    </tr>
	</table>
  </form>	
						  
        </div>
      </div>
    </section>
<%@ include file="qtdown.jsp"%>
  </main>

</body> 
</html>

<!--yoxudixtu-->
