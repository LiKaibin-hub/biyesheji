<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>校园风光</title>
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
<script type="text/javascript" src="js/My97DatePicker/WdatePicker.js" charset="gb2312"></script>
<%

%>

<body id="body">
<%@ include file="qttop.jsp"%>
<%@ include file="bht.jsp"%>
  <main id="main">
    <section id="services" class="wow fadeInUp">
      <div class="container">
	   <div class="section-header">
            <h2>◇◆ 校园风光 ◆◇</h2>
          </div>
        <div class="row">
         
		      <link rel="stylesheet" href="images/hsgcommon/divqt.css" type="text/css">
 <form name="form1" id="form1" method="post" action="" style="width:100%">
   搜索:  编号：<input name="bianhao" type="text" id="bianhao" class="form-control2"  />  标题：<input name="biaoti" type="text" id="biaoti" class="form-control2"  />  名称：<input name="mingcheng" type="text" id="mingcheng" class="form-control2"  />  地点：<input name="didian" type="text" id="didian" class="form-control2"  />
   <input type="submit" name="Submit" value="查找" class='hsgqiehuanshitu' />  <input type='button' name='Submit5' value='切换视图'  class='hsgqiehuanshitu' onClick="javascript:location.href='xiaoyuanfengguanglisttp.jsp';" /> 
</form>
<table width="100%" border="0" align="center" cellpadding="3" cellspacing="1" bordercolor="00FFFF" style="border-collapse:collapse" class="newsline">  
  <tr>
    <td width="30" align="center" bgcolor="CCFFFF">序号</td>
    <td bgcolor='#CCFFFF'>编号</td>    <td bgcolor='#CCFFFF'>标题</td>    <td bgcolor='#CCFFFF'>名称</td>    <td bgcolor='#CCFFFF'>地点</td>    <td bgcolor='#CCFFFF' width='90' align='center'>图片</td>        <td bgcolor='#CCFFFF'>备注</td>    
    
    <td width="30" align="center" bgcolor="CCFFFF">详细</td>
  </tr>
  <% 
  	


  	 new CommDAO().delete(request,"xiaoyuanfengguang"); 
    String url = "xiaoyuanfengguanglist.jsp?2=2"; 
    String sql =  "select * from xiaoyuanfengguang where 1=1";
	if(request.getParameter("bianhao")=="" ||request.getParameter("bianhao")==null ){}else{sql=sql+" and bianhao like '%"+request.getParameter("bianhao")+"%'";}if(request.getParameter("biaoti")=="" ||request.getParameter("biaoti")==null ){}else{sql=sql+" and biaoti like '%"+request.getParameter("biaoti")+"%'";}if(request.getParameter("mingcheng")=="" ||request.getParameter("mingcheng")==null ){}else{sql=sql+" and mingcheng like '%"+request.getParameter("mingcheng")+"%'";}if(request.getParameter("didian")=="" ||request.getParameter("didian")==null ){}else{sql=sql+" and didian like '%"+request.getParameter("didian")+"%'";}
    sql+=" order by id desc";
	ArrayList<HashMap> list = PageManager.getPages(url,15,sql, request); 
	int i=0;
	for(HashMap map:list){ 
	i++;
	
	


     %>
  <tr>
    <td width="30" align="center"><%=i %></td>
    <td><%=map.get("bianhao") %></td><td><%=map.get("biaoti") %></td><td><%=map.get("mingcheng") %></td><td><%=map.get("didian") %></td><td width='90'><a class="btn btn-info btn-small" href='<%=map.get("tupian") %>' target='_blank'><img src='<%=map.get("tupian") %>' width=88 height=99 border=0 /></a></td><td><%=map.get("beizhu") %></td>
    
    <td width="50" align="center"> <a class="btn btn-info btn-small" href="xiaoyuanfengguangdetail.jsp?id=<%=map.get("id")%>" >详细</a></td>
  </tr>
  	<%
  }
   %>
</table><br>

  
${page.info }							
						  
        </div>
      </div>
    </section>
<%@ include file="qtdown.jsp"%>
  </main>

</body> 
</html>

<!--yoxudixtu-->
