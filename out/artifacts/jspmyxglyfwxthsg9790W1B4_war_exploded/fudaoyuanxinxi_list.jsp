<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<html>
  <head>
    <title>����Ա��Ϣ</title>
	<link rel="stylesheet" href="images/hsgcommon/common.css" type="text/css">
<link rel="stylesheet" href="images/hsgcommon/div.css" type="text/css">
	<script type="text/javascript" src="js/My97DatePicker/WdatePicker.js" charset="gb2312"></script>
  </head>


  <body >
  <p>���и���Ա��Ϣ�б�</p>
  <form name="form1" id="form1" method="post" action="">
   ����:  ���ţ�<input name="gonghao" type="text" id="gonghao" class="form-control2" />  ������<input name="xingming" type="text" id="xingming" class="form-control2" /> �Ա�<select name='xingbie' id='xingbie' class="form-control2"><option value="">����</option><option value="��">��</option><option value="Ů">Ů</option></select>  �ֻ��ţ�<input name="shoujihao" type="text" id="shoujihao" class="form-control2" />  ���֤��<input name="shenfenzheng" type="text" id="shenfenzheng" class="form-control2" />  ��ַ��<input name="dizhi" type="text" id="dizhi" class="form-control2" />
   <input type="submit" name="Submit" value="����" class="btn btn-info btn-small" /> <input type="button" name="Submit2" value="����EXCEL" class="btn btn-info btn-small" onClick="javascript:location.href='fudaoyuanxinxi_listxls.jsp';" />
</form>

<table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="cccccc" >  
  <tr>
    <td width="11" height="30" align="center" bgcolor="cccccc">���</td>
    <td width="111" bgcolor='#cccccc'>����</td>
    <td width="71" bgcolor='#cccccc'>����</td>
    <td width="70" bgcolor='#cccccc'>����</td>
    <td bgcolor='#cccccc' width='61' align='center'>�Ա�</td>
    <td width="126" bgcolor='#cccccc'>�ֻ���</td>
    <td width="191" bgcolor='#cccccc'>���֤</td>
    <td width="204" bgcolor='#cccccc'>��ַ</td>
    
    
	
    <td width="248" align="center" bgcolor="cccccc">Ȩ�޷���</td>
    <td width="165" height="30" align="center" bgcolor="cccccc">���ʱ��</td>
    
    <td width="158" height="30" align="center" bgcolor="cccccc">����</td>
  </tr>
  <% 
  	


  	 new CommDAO().delete(request,"fudaoyuanxinxi"); 
    String url = "fudaoyuanxinxi_list.jsp?1=1"; 
    String sql =  "select * from fudaoyuanxinxi where 1=1";
	
if(request.getParameter("gonghao")=="" ||request.getParameter("gonghao")==null ){}else{sql=sql+" and gonghao like '%"+request.getParameter("gonghao")+"%'";}
if(request.getParameter("xingming")=="" ||request.getParameter("xingming")==null ){}else{sql=sql+" and xingming like '%"+request.getParameter("xingming")+"%'";}
if(request.getParameter("xingbie")=="" ||request.getParameter("xingbie")==null ){}else{sql=sql+" and xingbie like '%"+request.getParameter("xingbie")+"%'";}
if(request.getParameter("shoujihao")=="" ||request.getParameter("shoujihao")==null ){}else{sql=sql+" and shoujihao like '%"+request.getParameter("shoujihao")+"%'";}
if(request.getParameter("shenfenzheng")=="" ||request.getParameter("shenfenzheng")==null ){}else{sql=sql+" and shenfenzheng like '%"+request.getParameter("shenfenzheng")+"%'";}
if(request.getParameter("dizhi")=="" ||request.getParameter("dizhi")==null ){}else{sql=sql+" and dizhi like '%"+request.getParameter("dizhi")+"%'";}
    sql+=" order by id desc";
	ArrayList<HashMap> list = PageManager.getPages(url,15,sql, request); 
	int i=0;
	for(HashMap map:list){ 
	i++;
	
	


     %>
  <tr>
    <td width="11" align="center"><%=i %></td>
    <td><%=map.get("gonghao") %></td>
    <td><%=map.get("mima") %></td>
    <td><%=map.get("xingming") %></td>
    <td align='center'><%=map.get("xingbie") %></td>
    <td><%=map.get("shoujihao") %></td>
    <td><%=map.get("shenfenzheng") %></td>
    <td><%=map.get("dizhi") %></td>
    
    
	
    <td width="248" align="center"><%=map.get("quanxianfenpei") %></td>
    <td width="165" align="center"><%=map.get("addtime") %></td>
    <td width="158" align="center"><a class="btn btn-info btn-small" href="fudaoyuanxinxi_updt.jsp?id=<%=map.get("id")%>">�޸�</a>  <a class="btn btn-info btn-small" href="fudaoyuanxinxi_list.jsp?scid=<%=map.get("id") %>" onClick="return confirm('���Ҫɾ����')">ɾ��</a> <a class="btn btn-info btn-small" href="fudaoyuanxinxi_detail.jsp?id=<%=map.get("id")%>">��ϸ</a> </td>
  </tr>
  	<%
  }
   %>
</table>
<br>
  
<p class="fy">${page.info }</p>


  </body>
</html>

