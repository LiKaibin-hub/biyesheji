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
   ����:  ѧ�ţ�<input name="xuehao" type="text" id="xuehao" class="form-control2" />
    ������<input name="xingming" type="text" id="xingming" class="form-control2" />
    �Ա�<input name="xingbie" type="text" id="xingbie" class="form-control2" />
    ���᣺<input name="jiguan" type="text" id="jiguan" class="form-control2" />
    רҵ��<%=Info.getselect("zhuanye","zhuanyexinxi","zhuanye"," 1=1 ")%>
    �༶��<%=Info.getselect("banji","banjixinxi","banji"," 1=1 ")%>
    ��ѧʱ�䣺<input name="ruxueshijian1" type="text" id="ruxueshijian1"  value='' onClick="WdatePicker({'dateFmt':'yyyy-MM-dd'})" class="form-control2" />-<input name="ruxueshijian2" type="text" id="ruxueshijian2"  value='' onClick="WdatePicker({'dateFmt':'yyyy-MM-dd'})" class="form-control2" />
   <input type="submit" name="Submit" value="����" class="btn btn-info btn-small" /> <input type="button" name="Submit2" value="����EXCEL" class="btn btn-info btn-small" onClick="javascript:location.href='xinshengxinxi_listxls.jsp';" />
</form>

<table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="cccccc" >  
  <tr>
    <td width="35" height="30" align="center" bgcolor="cccccc">���</td>
    <td bgcolor='#cccccc'>ѧ��</td>
    <td bgcolor='#cccccc'>����</td>
    <td bgcolor='#cccccc'>����</td>
    <td bgcolor='#cccccc' width='40' align='center'>�Ա�</td>
    <td bgcolor='#cccccc'>���֤</td>
    <td bgcolor='#cccccc'>�绰</td>
    <td bgcolor='#cccccc'>����</td>
    <td bgcolor='#cccccc'>רҵ</td>
    <td bgcolor='#cccccc'>�༶</td>
    <td bgcolor='#cccccc' width='65' align='center'>��ѧʱ��</td>
    
    
	
    <td width="138" height="30" align="center" bgcolor="cccccc">���ʱ��</td>
    
    <td width="220" height="30" align="center" bgcolor="cccccc">����</td>
  </tr>
  <% 
  	


  	 new CommDAO().delete(request,"xinshengxinxi"); 
    String url = "xinshengxinxi_list.jsp?1=1"; 
    String sql =  "select * from xinshengxinxi where 1=1";
	
if(request.getParameter("xuehao")=="" ||request.getParameter("xuehao")==null ){}else{sql=sql+" and xuehao like '%"+request.getParameter("xuehao")+"%'";}
if(request.getParameter("mima")=="" ||request.getParameter("mima")==null ){}else{sql=sql+" and mima like '%"+request.getParameter("mima")+"%'";}
if(request.getParameter("xingming")=="" ||request.getParameter("xingming")==null ){}else{sql=sql+" and xingming like '%"+request.getParameter("xingming")+"%'";}
if(request.getParameter("xingbie")=="" ||request.getParameter("xingbie")==null ){}else{sql=sql+" and xingbie like '%"+request.getParameter("xingbie")+"%'";}
if(request.getParameter("jiguan")=="" ||request.getParameter("jiguan")==null ){}else{sql=sql+" and jiguan like '%"+request.getParameter("jiguan")+"%'";}
if(request.getParameter("zhuanye")=="" ||request.getParameter("zhuanye")==null ){}else{sql=sql+" and zhuanye like '%"+request.getParameter("zhuanye")+"%'";}
if(request.getParameter("banji")=="" ||request.getParameter("banji")==null ){}else{sql=sql+" and banji like '%"+request.getParameter("banji")+"%'";}
if (request.getParameter("ruxueshijian1")==""  ||request.getParameter("ruxueshijian1")==null ) {}else{sql=sql+" and ruxueshijian >= '"+request.getParameter("ruxueshijian1")+"'";}
if (request.getParameter("ruxueshijian2")==""  ||request.getParameter("ruxueshijian2")==null ) {}else {sql=sql+" and ruxueshijian <= '"+request.getParameter("ruxueshijian2")+"'";}
    sql+=" order by id desc";
	ArrayList<HashMap> list = PageManager.getPages(url,15,sql, request); 
	int i=0;
	for(HashMap map:list){ 
	i++;
	
	


     %>
  <tr>
    <td width="35" align="center"><%=i %></td>
    <td><%=map.get("xuehao") %></td>
    <td><%=map.get("mima") %></td>
    <td><%=map.get("xingming") %></td>
    <td align='center'><%=map.get("xingbie") %></td>
    <td><%=map.get("shenfenzheng") %></td>
    <td><%=map.get("dianhua") %></td>
    <td><%=map.get("jiguan") %></td>
    <td><%=map.get("zhuanye") %></td>
    <td><%=map.get("banji") %></td>
    <td><%=map.get("ruxueshijian") %></td>
    
    
	
    <td width="138" align="center"><%=map.get("addtime") %></td>
    <td width="220" align="center">
        <a class="btn btn-info btn-small" href="xinshengxinxi_updt.jsp?id=<%=map.get("id")%>">�޸�</a>
        <a class="btn btn-info btn-small" href="xinshengxinxi_list.jsp?scid=<%=map.get("id") %>" onClick="return confirm('���Ҫɾ����')">ɾ��</a>
        <a class="btn btn-info btn-small" href="xinshengxinxi_detail.jsp?id=<%=map.get("id")%>">��ϸ</a>
    </td>
  </tr>
  	<%
  }
   %>
</table>
<br>
  
<p class="fy">${page.info }</p>


  </body>
</html>

