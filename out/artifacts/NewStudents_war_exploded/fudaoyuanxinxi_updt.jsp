<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<html>
  <head>
    <title>����Ա��Ϣ</title>
	
	<script type="text/javascript" src="js/My97DatePicker/WdatePicker.js" charset="gb2312"></script>
	<script type="text/javascript" src="js/popup.js"></script>
    <link rel="stylesheet" href="images/hsgcommon/common.css" type="text/css">
<link rel="stylesheet" href="images/hsgcommon/div.css" type="text/css">

  </head>
<script language="javascript">

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

  <body >
   <% 

String id = request.getParameter("id"); 

HashMap ext = new HashMap(); 

new CommDAO().update(request,response,"fudaoyuanxinxi",ext,true,false,""); 
HashMap mmm = new CommDAO().getmap(id,"fudaoyuanxinxi"); 

%>
  <form  action="fudaoyuanxinxi_updt.jsp?f=f&id=<%=mmm.get("id")%>"  method="post" name="form1"  onsubmit="return checkform();">
  �޸ĸ���Ա��Ϣ:
  <br><br>
 
   <table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#cccccc" style="border-collapse:collapse">  
     
     <tr><td>���ţ�</td><td><input name='gonghao' type='text' id='gonghao' value='<%= mmm.get("gonghao")%>' class="form-control" /></td></tr>
     <tr><td>���룺</td><td><input name='mima' type='text' id='mima' value='<%= mmm.get("mima")%>' class="form-control" /></td></tr>
     <tr><td>������</td><td><input name='xingming' type='text' id='xingming' value='<%= mmm.get("xingming")%>' class="form-control" /></td></tr>
     <tr><td>�Ա�</td><td><select name='xingbie' id='xingbie' class="form-control2"><option value="��">��</option><option value="Ů">Ů</option></select></td></tr><script language="javascript">document.form1.xingbie.value='<%=mmm.get("xingbie")%>';</script>
     <tr><td>�ֻ��ţ�</td><td><input name='shoujihao' type='text' id='shoujihao' value='<%= mmm.get("shoujihao")%>' class="form-control" /></td></tr>
     <tr><td>���֤��</td><td><input name='shenfenzheng' type='text' id='shenfenzheng' class="form-control"  style="width:600px;" value='<%=mmm.get("shenfenzheng")%>' /></td></tr>
     <tr><td>��ַ��</td><td><input name='dizhi' type='text' id='dizhi' class="form-control"  style="width:600px;" value='<%=mmm.get("dizhi")%>' /></td></tr>
     <tr>
       <td>Ȩ�޷��䣺</td>
       <td><p>
           <input name='quanxianfenpei' type='text' id='quanxianfenpei' value='<%=mmm.get("quanxianfenpei")%>' onblur='checkform()' class="form-control" style="width:600px;" />
         </p>
           <a onClick="hsgxia2shxurxu('У԰��Ϣ����','quanxianfenpei')" style="cursor:pointer"><br>
           <br>
           <br>
             У԰��Ϣ����</a>�� <a onClick="hsgxia2shxurxu('ϵͳ�������','quanxianfenpei')" style="cursor:pointer">ϵͳ�������</a>�� <a onClick="hsgxia2shxurxu('���ʹ���','quanxianfenpei')" style="cursor:pointer">���ʹ���</a>�� <a onClick="hsgxia2shxurxu('��������','quanxianfenpei')" style="cursor:pointer">��������</a>�� <a onClick="hsgxia2shxurxu('����������','quanxianfenpei')" style="cursor:pointer">����������</a>��
         <p>&nbsp; </p></td>
     </tr>
     <tr><td>��ע��</td><td><textarea name='beizhu' cols='50' rows='5' id='beizhu' class="form-control" style="width:600px;height:80px;" ><%=mmm.get("beizhu")%></textarea></td></tr>
    <tr>
      <td>&nbsp;</td>
      <td><input type="submit" name="Submit" value="�ύ" onClick="return checkform();" class="btn btn-info btn-small" />
      <input type="reset" name="Submit2" value="����" class="btn btn-info btn-small" /></td>
    </tr>
  </table>
</form>

  </body>
</html>


