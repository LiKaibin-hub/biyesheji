<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<html>
  <head>
    
    <title>宿舍分配</title>
	
	<link rel="stylesheet" href="images/hsgcommon/common.css" type="text/css">
<link rel="stylesheet" href="images/hsgcommon/div.css" type="text/css">
    <script type="text/javascript" src="js/My97DatePicker/WdatePicker.js" charset="gb2312"></script>
	<script type="text/javascript" src="js/popup.js"></script>
	   
  </head>
<%
  String id="";
  id=request.getParameter("id");
  id=request.getParameter("id");
 HashMap mlbdq = new CommDAO().getmap(id,"xinshengxinxi");
 String xuehao="";  	String xingming="";  	String xingbie="";  	String dianhua="";  	String banji="";  	
 xuehao=(String)mlbdq.get("xuehao");  	xingming=(String)mlbdq.get("xingming");  	xingbie=(String)mlbdq.get("xingbie");  	dianhua=(String)mlbdq.get("dianhua");  	banji=(String)mlbdq.get("banji");  	 
 
   %>
<script language="javascript">

function gow()
{
	document.location.href="sushefenpei_add.jsp?id=<%=id%>&sushehao="+document.form1.sushehao.value;
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










new CommDAO().insert(request,response,"sushefenpei",ext,true,false,""); 

}

%>

  <body >
 <form  action="sushefenpei_add.jsp?f=f&id=<%=id%>"  method="post" name="form1"  onsubmit="return checkform();">
  添加宿舍分配:
  <br><br>
   <table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#cccccc" >
		<tr><td  width="200">学号：</td><td><input name='xuehao' type='text' id='xuehao' value='' onblur='' class="form-control"  readonly='readonly' /></td></tr><script language="javascript">document.form1.xuehao.value='<%=xuehao%>';document.form1.xuehao.setAttribute("readOnly",'true');</script>		<tr><td  width="200">姓名：</td><td><input name='xingming' type='text' id='xingming' value='' onblur='' class="form-control"  readonly='readonly' /></td></tr><script language="javascript">document.form1.xingming.value='<%=xingming%>';document.form1.xingming.setAttribute("readOnly",'true');</script>		<tr><td  width="200">性别：</td><td><input name='xingbie' type='text' id='xingbie' value='' onblur='' class="form-control"  readonly='readonly' /></td></tr><script language="javascript">document.form1.xingbie.value='<%=xingbie%>';document.form1.xingbie.setAttribute("readOnly",'true');</script>		<tr><td  width="200">电话：</td><td><input name='dianhua' type='text' id='dianhua' value='' onblur='' class="form-control"  readonly='readonly' /></td></tr><script language="javascript">document.form1.dianhua.value='<%=dianhua%>';document.form1.dianhua.setAttribute("readOnly",'true');</script>		<tr><td  width="200">班级：</td><td><input name='banji' type='text' id='banji' value='' onblur='' class="form-control"  readonly='readonly' /></td></tr><script language="javascript">document.form1.banji.value='<%=banji%>';document.form1.banji.setAttribute("readOnly",'true');</script>		<tr><td>宿舍号：</td><td><%=Info.getselectsl("sushehao","sushexinxi","sushehao")%></td></tr>		<tr><td  width="200">楼层：</td><td><input name='louceng' type='text' id='louceng' class="form-control" ></td></tr>		<tr><td  width="200">位置：</td><td><input name='weizhi' type='text' id='weizhi' class="form-control" ></td></tr>		<tr><td width="200">分配日期：</td><td><input name='fenpeiriqi' type='text' id='fenpeiriqi' value='' onblur='' readonly='readonly' onClick="WdatePicker({'dateFmt':'yyyy-MM-dd'})" class="form-control"  /></td></tr>		<tr><td  width="200">备注：</td><td><textarea name='beizhu'  id='beizhu' onblur='' class="form-control" style="width:600px;height:80px;" ></textarea></td></tr>		<tr><td  width="200">分配人：</td><td><input name='fenpeiren' type='text' id='fenpeiren' onblur='' class="form-control" value='<%=request.getSession().getAttribute("username")%>' readonly="readonly" /></td></tr>		
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
if(request.getParameter("sushehao")==null || request.getParameter("sushehao").equals("")){}else{

HashMap mmm = new CommDAO().getmaps("sushehao",request.getParameter("sushehao"),"sushexinxi"); 
%>
<script language="javascript">
document.form1.sushehao.value="<%=mmm.get("sushehao")%>";document.form1.louceng.value="<%=mmm.get("louceng")%>";document.form1.weizhi.value="<%=mmm.get("weizhi")%>";//suilafuzhi

</script>
<%
}
%>

<script language=javascript src='js/ajax.js'></script>

<%@page import="java.util.ArrayList"%> 
<%@page import="java.util.HashMap"%> 

<script language=javascript >  
 
 function checkform(){  
 
	


return true;   
}   
popheight=450;
</script>  
<script src="images/hsgcommon/jq.js"></script>
<script src="images/hsgcommon/common.js"></script>
<script src="images/hsgcommon/bootbox.js"></script>
