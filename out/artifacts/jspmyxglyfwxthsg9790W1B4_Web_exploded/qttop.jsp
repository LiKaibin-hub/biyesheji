<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
  <section id="topbar" class="d-none d-lg-block">
    <div class="container clearfix">
      <div class="contact-info float-left">
        <span class="white">��ӭ����ӭ�¹��������ϵͳ!</span>
      </div>
      <div class="social-links float-right line-30">
	 <%
    if((String)request.getSession().getAttribute("username")==null || (String)request.getSession().getAttribute("username")==""){
     %>
        <a href="userlog.jsp" class="twitter">��¼</a><font color="#FFFFFF">|</font><a href="xueshengxinxiadd.jsp" class="twitter">ע��</a>
		 <%}else{ %>
	    <font color="#FFFFFF"><%=request.getSession().getAttribute("username")%>,[<%=request.getSession().getAttribute("cx")%>]&nbsp;</font> <a href="logout.jsp" onclick="return confirm('ȷ��Ҫ�˳���')" >�˳�</a><a href="main.jsp" >��̨</a>
	    <%} %>
		
        
      </div>
    </div>
  </section>

  <header id="header">
    <div class="container">
      <div id="logo" class="pull-left">
        <h1><a href="index.jsp" class="scrollto">
            <img src="./qtimages/images/logo.png" alt="" width="60">ӭ�¹��������ϵͳ
          </a></h1>
      </div>
      <nav id="nav-menu-container">
        <ul class='nav-menu'>
          <li class='menu-active'><a href='index.jsp'>��ҳ</a></li>
		

		  <li class='menu-has-children'><a href=''>��������</a>
            <ul><li><a href='lyb.jsp'>��������</a></li> <li><a href='lyblist.jsp'>�鿴����</a></li> </ul>
          </li> <li class='menu-has-children'><a href=''>������Ϣ</a>
            <ul><li><a href='news.jsp?lb=��У��֪'>��У��֪</a></li> <li><a href='news.jsp?lb=У԰����'>У԰����</a></li> <li><a href='news.jsp?lb=У԰����'>У԰����</a></li> </ul>
          </li> <li class='menu-has-children'><a href=''>ϵͳ��Ҫ</a>
            <ul><li><a href='dx_detail.jsp?lb=��������'>��������</a></li> <li><a href='dx_detail.jsp?lb=��ϵ��ʽ'>��ϵ��ʽ</a></li> <li><a href='dx_detail.jsp?lb=ϵͳ���'>ϵͳ���</a></li> </ul>
          </li> <li class='menu-has-children'><a href=''>У԰���</a>
            <ul><li><a href='xiaoyuanfengguanglisttp.jsp'>У԰���</a></li> </ul>
          </li><!--yoxulixuyaxn-->
          <li><a href='login.jsp'>��̨����</a></li>
        </ul>
      </nav>
    </div>
  </header>