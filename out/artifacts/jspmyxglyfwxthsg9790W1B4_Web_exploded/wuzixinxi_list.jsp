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
  </head>


  <body >
  <p>����������Ϣ�б�</p>
  <form name="form1" id="form1" method="post" action="">
   ����:  ���ʱ�ţ�<input name="wuzibianhao" type="text" id="wuzibianhao" class="form-control2" />  �������ƣ�<input name="wuzimingcheng" type="text" id="wuzimingcheng" class="form-control2" />
   <input type="submit" name="Submit" value="����" class="btn btn-info btn-small" /> <input type="button" name="Submit2" value="����EXCEL" class="btn btn-info btn-small" onClick="javascript:location.href='wuzixinxi_listxls.jsp';" />
</form>

<table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="cccccc" >  
  <tr>
    <td width="35" height="30" align="center" bgcolor="cccccc">���</td>
    <td bgcolor='#cccccc'>���ʱ��</td>    <td bgcolor='#cccccc'>��������</td>    <td bgcolor='#cccccc'>�������</td>    <td bgcolor='#cccccc'>���</td>    <td bgcolor='#cccccc' width='90' align='center'>ͼƬ</td>        
	
    <td width="138" height="30" align="center" bgcolor="cccccc">���ʱ��</td>
    
    <td width="220" height="30" align="center" bgcolor="cccccc">����</td>
  </tr>
  <% 
  	

int kucuntx=0;
  	 new CommDAO().delete(request,"wuzixinxi"); 
    String url = "wuzixinxi_list.jsp?1=1"; 
    String sql =  "select * from wuzixinxi where 1=1";
	if(request.getParameter("wuzibianhao")=="" ||request.getParameter("wuzibianhao")==null ){}else{sql=sql+" and wuzibianhao like '%"+request.getParameter("wuzibianhao")+"%'";}if(request.getParameter("wuzimingcheng")=="" ||request.getParameter("wuzimingcheng")==null ){}else{sql=sql+" and wuzimingcheng like '%"+request.getParameter("wuzimingcheng")+"%'";}
    sql+=" order by id desc";
	ArrayList<HashMap> list = PageManager.getPages(url,15,sql, request); 
	int i=0;
	for(HashMap map:list){ 
	i++;
	
	
if(Float.valueOf((String)map.get("kucun")).floatValue()<50){kucuntx=kucuntx+1;}

     %>
  <tr>
    <td width="35" align="center"><%=i %></td>
    <td><%=map.get("wuzibianhao") %></td>    <td><%=map.get("wuzimingcheng") %></td>    <td><%=map.get("wuzileibie") %></td>    <td><%=map.get("kucun") %></td>    <td width='90' align='center'><a  href='<%=map.get("tupian") %>' target='_blank'><img src='<%=map.get("tupian") %>' width=88 height=99 border=0 /></a></td>        
	
    <td width="138" align="center"><%=map.get("addtime") %></td>
    <td width="220" align="center"><a class="btn btn-info btn-small" href="wuzixinxi_updt.jsp?id=<%=map.get("id")%>">�޸�</a>  <a class="btn btn-info btn-small" href="wuzixinxi_list.jsp?scid=<%=map.get("id") %>" onClick="return confirm('���Ҫɾ����')">ɾ��</a> <a class="btn btn-info btn-small" href="wuzixinxi_detail.jsp?id=<%=map.get("id")%>">��ϸ</a> </td>
  </tr>
  	<%
  }
   %>
</table>
<br>
  
<p class="fy">${page.info }</p>

 <%
 if(kucuntx>0)
{
%>
 <style>
#winpop { width:200px; height:0px; position:absolute; right:0; bottom:0; border:1px solid #666; margin:0; padding:1px; overflow:hidden; display:none;} 
#winpop .title { width:100%; height:22px; line-height:20px; background:#FFCC00; font-weight:bold; text-align:center; font-size:12px;} 
#winpop .con { width:100%; height:90px; line-height:20px; font-weight:bold; font-size:12px; color:#FF0000; text-align:center} 
#silu { font-size:12px; color:#666; position:absolute; right:0; text-align:right; text-decoration:underline; line-height:22px;} 
.close { position:absolute; right:4px; top:-1px; color:#FFF; cursor:pointer} 
</style> 
<script type="text/javascript"> 
function tips_pop(){ 
var MsgPop=document.getElementById("winpop"); 
var popH=parseInt(MsgPop.style.height);//������ĸ߶�ת��Ϊ���� 
if (popH==0){ 
MsgPop.style.display="block";//��ʾ���صĴ��� 
show=setInterval("changeH('up')",2); 
} 
else { 
hide=setInterval("changeH('down')",2); 
} 
} 
function changeH(str) { 
var MsgPop=document.getElementById("winpop"); 
var popH=parseInt(MsgPop.style.height); 
if(str=="up"){ 
if (popH <=100){ 
MsgPop.style.height=(popH+4).toString()+"px"; 
} 
else{ 
clearInterval(show); 
} 
} 
if(str=="down"){ 
if (popH>=4){ 
MsgPop.style.height=(popH-4).toString()+"px"; 
} 
else{ 
clearInterval(hide);  
MsgPop.style.display="none"; //����DIV 
} 
} 
} 
window.onload=function(){ //���� 
document.getElementById('winpop').style.height='0px'; 
setTimeout("tips_pop()",500); //3������tips_pop()������� 
} 
</script> <div id="silu"> 
<body>
</div> 
<div id="winpop"> 
<div class="title">ϵͳ���ѣ� <span class="close" onClick="tips_pop()">X </span> </div> 
<div class="con">��ǰ��<%=kucuntx%>�����ֵ��¼С��50��лл��</div>
<%
}
%>
  </body>
</html>

