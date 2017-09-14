<%@ page language="java" contentType="text/html" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE jspL PUBLIC "-//W3C//DTD jspL 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
	<title>新闻系统 - 首页顶部</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="Content-Type" content="text/jspl; charset=utf-8" />
	<link href="css/style.css" rel="stylesheet" type="text/css" />
	</head>

	<body>
		<!-- header start -->
		<div class="header">
			<div class="toplinks">
				<span>【<a href="user/registers">注册</a>】【<a href="user/logins">登录</a>】</span>
			</div>

			<h1>
				<a href="base/list"><img src="images/logo.png" width="260" height="56"
						alt="新闻系统" /> </a>
			</h1>
		</div>
		<!-- header end -->

		<!-- menu start -->
		<div class="menu">
			<ul>
				<li>
					<a href="index.jsp"><span>主页</span> </a>
				</li>

				<li>
					<a href="base/newsType?id=1"><span>国际新闻</span> </a>
				</li>

				<li>
					<a href="base/newsType?id=2"><span>国内新闻</span> </a>
				</li>

				<li>
					<a href="base/newsType?id=3"><span>娱乐新闻</span> </a>
				</li>

				<li>
					<a href="base/newsType?id=4"><span>体育新闻</span> </a>
				</li>

				<li>
					<a href="base/newsType?id=5"><span>财经频道</span> </a>
				</li>

				<li>
					<a href="base/newsType?id=6"><span>汽车频道</span> </a>
				</li>

			</ul>

			<form action="base/search" method="get">
				<input type="hidden" name="newstypeId" value="${selectPage.keyWord}" />
				<input name="name" type="text" class="search-keyword"
					id="search-keyword" value="在这里搜索..." />
				<input type="submit" class="search-submit" value="搜索" />
			</form>
		</div>
	</body>
</html>