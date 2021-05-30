<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
  <section id="topbar" class="d-none d-lg-block">
    <div class="container clearfix">
      <div class="contact-info float-left">
        <span class="white">欢迎来到迎新管理与服务系统!</span>
      </div>
      <div class="social-links float-right line-30">
	 <%
    if((String)request.getSession().getAttribute("username")==null || (String)request.getSession().getAttribute("username")==""){
     %>
        <a href="userlog.jsp" class="twitter">登录</a><font color="#FFFFFF">|</font><a href="xueshengxinxiadd.jsp" class="twitter">注册</a>
		 <%}else{ %>
	    <font color="#FFFFFF"><%=request.getSession().getAttribute("username")%>,[<%=request.getSession().getAttribute("cx")%>]&nbsp;</font> <a href="logout.jsp" onclick="return confirm('确定要退出？')" >退出</a><a href="main.jsp" >后台</a>
	    <%} %>
		
        
      </div>
    </div>
  </section>

  <header id="header">
    <div class="container">
      <div id="logo" class="pull-left">
        <h1><a href="index.jsp" class="scrollto">
            <img src="./qtimages/images/logo.png" alt="" width="60">迎新管理与服务系统
          </a></h1>
      </div>
      <nav id="nav-menu-container">
        <ul class='nav-menu'>
          <li class='menu-active'><a href='index.jsp'>首页</a></li>
		

		  <li class='menu-has-children'><a href=''>在线留言</a>
            <ul><li><a href='lyb.jsp'>在线留言</a></li> <li><a href='lyblist.jsp'>查看留言</a></li> </ul>
          </li> <li class='menu-has-children'><a href=''>新闻信息</a>
            <ul><li><a href='news.jsp?lb=入校须知'>入校须知</a></li> <li><a href='news.jsp?lb=校园新闻'>校园新闻</a></li> <li><a href='news.jsp?lb=校园公告'>校园公告</a></li> </ul>
          </li> <li class='menu-has-children'><a href=''>系统概要</a>
            <ul><li><a href='dx_detail.jsp?lb=关于我们'>关于我们</a></li> <li><a href='dx_detail.jsp?lb=联系方式'>联系方式</a></li> <li><a href='dx_detail.jsp?lb=系统简介'>系统简介</a></li> </ul>
          </li> <li class='menu-has-children'><a href=''>校园风光</a>
            <ul><li><a href='xiaoyuanfengguanglisttp.jsp'>校园风光</a></li> </ul>
          </li><!--yoxulixuyaxn-->
          <li><a href='login.jsp'>后台管理</a></li>
        </ul>
      </nav>
    </div>
  </header>
