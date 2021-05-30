<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>迎新管理与服务系统</title>
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
<body id="body">
<%@ include file="qttop.jsp"%>
<%@ include file="bht.jsp"%>
  <main id="main">
   
   
 <section id='services' class='wow fadeInUp'>
      <div class='container'>
	   <div class='section-header'>
            <h2>◇◆ 校园风光 ◆◇</h2>
          </div>
        <div class='row'>
         
		 <%
		  	int ixiaoyuanfengguang=0;						
    for(HashMap mapxiaoyuanfengguang:new CommDAO().select("select * from xiaoyuanfengguang order by id desc "))
	{
		ixiaoyuanfengguang++;
		if(ixiaoyuanfengguang<=4)
		{
		  %>
		  <div class='col-md-6 col-sm-12 col-lg-3'><div class='box-box'><img src='<%=mapxiaoyuanfengguang.get("tupian")%>' width='235' height='220'><div class='box-content'><%=mapxiaoyuanfengguang.get("mingcheng")%></div><a href='xiaoyuanfengguangdetail.jsp?id=<%=mapxiaoyuanfengguang.get("id")%>'>查看详细</a></div></div>
		 <%
		}
	}
			%>
        </div>
      </div>
    </section>
	

	
    <section>
      <div id="news" class="mt-20 wow fadeInUp">
        <div class="container">
          <div class="section-header">
            <h2>◇◆ 入校须知 ◆◇</h2>
          </div>
          <div class="row">
            <div class="col-md-7">
              <div class="row">
                <div class="col-md-4">
                  <img src="./qtimages/images/news/test.png" alt="" width="100%" height="200">
                </div>
                <div class="col-md-8">
                  <ul class="news-list">
				   <%
										
    for(HashMap map:new CommDAO().select("select * from xinwentongzhi where leibie='入校须知' order by id desc ",1,4)){
	
     %>
                    <li><a href="gg_detail.jsp?id=<%=map.get("id")%>">><%=Info.ensubStr(map.get("biaoti"),48)%></a></li>
                     <%
							}
							%>
                  </ul>
                </div>
              </div>
            </div>

          </div>
        </div>
      </div>
    </section>
   

		
	
<%@ include file="qtdown.jsp"%>

  </main>
</body>
</html>
