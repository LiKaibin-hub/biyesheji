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
  <p>���г�����Ϣ�б���</p>
  <form name="form1" id="form1" method="post" action="">
   ����:  ���ʱ�ţ�<input name="wuzibianhao" type="text" id="wuzibianhao" class="form-control2"  />  �������ƣ�<input name="wuzimingcheng" type="text" id="wuzimingcheng" class="form-control2"  />  �������<input name="wuzileibie" type="text" id="wuzileibie" class="form-control2"  />  �����ˣ�<input name="chukuren" type="text" id="chukuren" class="form-control2"  />
     <input type="submit" name="Submit" value="����" class="btn btn-info btn-small" />
</form>

<table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="cccccc" >  
  <tr>
    <td width="30" align="center" bgcolor="cccccc">���</td>
    <td bgcolor='#cccccc'>���ʱ��</td>
    <td width="138" align="center" bgcolor="cccccc">����ʱ��</td>
    <td width="220" align="center" bgcolor="cccccc">����</td>
  </tr>
 <% 
  	


  	 new CommDAO().delete(request,"chukuxinxi"); 
    String url = "chukuxinxi_list2.jsp?1=1"; 
    String sql =  "select * from chukuxinxi where chukuren='"+request.getSession().getAttribute("username")+"' ";
	
    sql+=" order by id desc";
	ArrayList<HashMap> list = PageManager.getPages(url,15,sql, request); 
	int i=0;
	for(HashMap map:list){ 
	i++;
	
	


     %>
  <tr>
    <td width="30" align="center"><%=i %></td>
    <td><%=map.get("wuzibianhao") %></td>
    <td width="138" align="center"><%=map.get("addtime") %></td>
    <td width="220" align="center"><a class="btn btn-info btn-small" href="chukuxinxi_updt.jsp?id=<%=map.get("id")%>">�޸�</a>  <a class="btn btn-info btn-small" href="chukuxinxi_list2.jsp?scid=<%=map.get("id") %>" onClick="return confirm('���Ҫɾ����')">ɾ��</a> <a class="btn btn-info btn-small" href="chukuxinxi_detail.jsp?id=<%=map.get("id")%>">��ϸ</a> </td>
  </tr>
  	<%
  }
   %>
</table><br>
  
<p class="fy">${page.info }</p>


  </body>
</html>
