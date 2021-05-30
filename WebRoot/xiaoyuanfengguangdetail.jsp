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
<script language=javascript src='js/popup.js'></script>
<script language=javascript> 
function hsgpinglun(nbiao,nid){ 
popheight=450;
pop('hsgpinglun.jsp?biao='+nbiao+'&id='+nid,'在线评论',550,250) ;
}
</script> 
<%

	String id=request.getParameter("id");
	HashMap mqt = new CommDAO().getmap(id,"xiaoyuanfengguang");
	
	if(request.getParameter("dztp")!=null)
	{
		String sqldz="";
		if(request.getParameter("dztp").equals("d"))
		{
			sqldz="update xiaoyuanfengguang set dianzan_d=dianzan_d+1 where id="+id;
		}
		if(request.getParameter("dztp").equals("c"))
		{
			sqldz="update xiaoyuanfengguang set dianzan_c=dianzan_c+1 where id="+id;
		}
		 new CommDAO().commOper(sqldz); 
	}
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
         
		      
   <table width="100%" border="0" align="center" cellpadding="3" cellspacing="1" bordercolor="#00FFFF" style="border-collapse:collapse"  class="newsline">  
      <tr>
		 <td width='11%' height=44>编号：</td><td width='39%'><%=mqt.get("bianhao")%></td><td  rowspan=5 align=center><a href=<%=mqt.get("tupian")%> target=_blank><img src=<%=mqt.get("tupian")%> width=228 height=215 border=0></a></td></tr><tr>         <td width='11%' height=44>标题：</td><td width='39%'><%=mqt.get("biaoti")%></td></tr><tr>         <td width='11%' height=44>名称：</td><td width='39%'><%=mqt.get("mingcheng")%></td></tr><tr>         <td width='11%' height=44>地点：</td><td width='39%'><%=mqt.get("didian")%></td></tr><tr>                           <td width='11%' height=44>备注：</td><td width='39%'><%=mqt.get("beizhu")%></td></tr><tr>         <td width='11%' height=100  >介绍：</td><td width='39%' colspan=2 height=100 ><%=mqt.get("jieshao")%></td></tr><tr><td colspan=3 align=center>点赞数:<a href="xiaoyuanfengguangdetail.jsp?id=<%=id%>&dztp=d"><img src="qtimages/ding.gif" width="40" height="40"> <%HashMap mdz = new CommDAO().getmap(id,"xiaoyuanfengguang");out.print(mdz.get("dianzan_d"));%></a> <a href="xiaoyuanfengguangdetail.jsp?id=<%=id%>&dztp=c"><img src="qtimages/cai.gif" width="40" height="40"><%out.print(mdz.get("dianzan_c"));%></a> </td></tr><tr>							 
                                <td colspan="3"><table width="100%" border="0" align="center" cellpadding="3" cellspacing="1" bordercolor="00FFFF" style="border-collapse:collapse" class="newsline">
                                  <tr>
                                    <td width="30" align="center" bgcolor="CCFFFF">序号</td>
                                    <td width="471" bgcolor='#CCFFFF'>评价内容</td>
                                    <td width="88" bgcolor='#CCFFFF'>评分</td>
                                    <td width="88" bgcolor='#CCFFFF'>评论人</td>
                                    <td width="138" align="center" bgcolor="CCFFFF">评论时间</td>
                                  </tr>
                                   <% 
							String sql =  "select * from pinglun where xinwenID='"+id+"' and biao='xiaoyuanfengguang' ";
							sql+=" order by id desc";
							int i=0;
							 for(HashMap map:new CommDAO().select(sql)){
							 i++;
							 %>
                                  <tr>
                                    <td width="30" align="center" bgcolor='#CCFF99'><%=i%></td>
                                    <td width="471" bgcolor='#CCFF99'><%=map.get("pinglunneirong")%></td>
                                    <td width="88" bgcolor='#CCFF99'><%=map.get("pingfen")%></td>
                                    <td width="88" bgcolor='#CCFF99'><%=map.get("pinglunren")%></td>
                                    <td width="138" align="center" bgcolor="CCFF99"><%=map.get("addtime")%></td>
                                  </tr>
                                  <%
								  }
								   %>
                                </table></td>
                                </tr><tr><td colspan=3 align=center><input type=button name=Submit5 value=返回 class='hsgqiehuanshitu' onClick="javascript:history.back()" /><input type=button name=Submit52 value=打印 class='hsgqiehuanshitu' onClick="javascript:window.print()" /> <!--jixaaxnnxiu--><input type=button name=Submit53 value=评论 class='hsgqiehuanshitu' onClick="javascript:hsgpinglun('xiaoyuanfengguang','<%=id%>')"/><input type=button name=Submit52 value=收藏 class='hsgqiehuanshitu' onClick="javascript:location.href='jrsc.jsp?id=<%=mqt.get("id")%>&biao=xiaoyuanfengguang&ziduan=mingcheng';" /></td></tr>
    
  </table>	
						  
        </div>
      </div>
    </section>
<%@ include file="qtdown.jsp"%>
  </main>
<a class='bshareDiv' href='http://www.bshare.cn/share'>分享按钮</a><script type='text/javascript' charset='utf-8' src='http://static.bshare.cn/b/buttonLite.js#uuid=&amp;style=3&amp;fs=4&amp;textcolor=#fff&amp;bgcolor=#9C3&amp;text=分享到'></script>
</body> 
</html>


