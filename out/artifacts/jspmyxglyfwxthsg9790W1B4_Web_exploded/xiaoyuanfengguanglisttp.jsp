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
     <input type="submit" name="Submit" value="查找" class='hsgqiehuanshitu' /> <input type="button" name="Submit5" value="切换视图"  class='hsgqiehuanshitu' onClick="javascript:location.href='xiaoyuanfengguanglist.jsp';" />
</form>
						<table width="100%" height="12%" border="0" align="center" cellpadding="0" cellspacing="0">
                          <tr>
                           <% 
  	


  	 new CommDAO().delete(request,"xiaoyuanfengguang"); 
    String url = "xiaoyuanfengguanglisttp.jsp?1=1"; 
    String sql =  "select * from xiaoyuanfengguang where 1=1";
	if(request.getParameter("bianhao")=="" ||request.getParameter("bianhao")==null ){}else{sql=sql+" and bianhao like '%"+request.getParameter("bianhao")+"%'";}if(request.getParameter("biaoti")=="" ||request.getParameter("biaoti")==null ){}else{sql=sql+" and biaoti like '%"+request.getParameter("biaoti")+"%'";}if(request.getParameter("mingcheng")=="" ||request.getParameter("mingcheng")==null ){}else{sql=sql+" and mingcheng like '%"+request.getParameter("mingcheng")+"%'";}if(request.getParameter("didian")=="" ||request.getParameter("didian")==null ){}else{sql=sql+" and didian like '%"+request.getParameter("didian")+"%'";}
    sql+=" order by id desc";
	ArrayList<HashMap> list = PageManager.getPages(url,15,sql, request); 
	int i=0;
	for(HashMap map:list){ 
	i++;
	
	


     %>
                           <td height="316" align="center"><table  height="285" border="0" cellpadding="0" cellspacing="0">
                                <tr>
                                  <td height="250" align="center"><a href="xiaoyuanfengguangdetail.jsp?id=<%=map.get("id")%>"><img src="<%=map.get("tupian")%>" width="210" height="250" border="0" style="border-radius: 18px;" /></a></td>
                                </tr>
                                <tr>
                                  <td height="26" align="center"><%=map.get("mingcheng")%></td>
                                </tr>
                            </table></td>
                            <%
								if (i==4)
								{
									i=0;
									out.print("</tr><tr>");
								}
				  	}
					
				  %>
                          </tr>
                        </table>
						
${page.info }	
						  
        </div>
      </div>
    </section>
<%@ include file="qtdown.jsp"%>
  </main>

</body> 
</html>

<!--yoxudixtu-->
