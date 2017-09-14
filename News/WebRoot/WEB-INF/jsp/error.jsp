﻿<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'index.jsp' starting page</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<title>新闻系统 - 异常信息页面</title>
		<meta name="description" content="软酷新闻发布系统" />
		<meta name="keywords" content="软酷网 新闻发布" />
		<link href="css/style.css" rel="stylesheet" type="text/css" />
	</head>

	<body>
		<!-- header start -->
		<div class="header">
			<div class="toplinks">
				<span>【<a href="register.htm">注册</a>】【<a href="login.htm">登录</a>】</span>
			</div>

			<h1>
				<a href="index.htm"><img src="images/logo.png" width="260" height="56"
						alt="新闻系统" /> </a>
			</h1>
		</div>
		<!-- header end -->

		<!-- menu start -->
		<div class="menu">
			<ul>
				<li>
					<a href="index.htm"><span>主页</span> </a>
				</li>

				<li>
					<a href="newsType.htm"><span>国际新闻</span> </a>
				</li>

				<li>
					<a href="newsType.htm"><span>国内新闻</span> </a>
				</li>

				<li>
					<a href="newsType.htm"><span>娱乐新闻</span> </a>
				</li>

				<li>
					<a href="newsType.htm"><span>体育新闻</span> </a>
				</li>

				<li>
					<a href="newsType.htm"><span>财经频道</span> </a>
				</li>

				<li>
					<a href="newsType.htm"><span>汽车频道</span> </a>
				</li>

				<li>
					<a href="newsType.htm"><span>电子频道</span> </a>
				</li>
			</ul>

			<form action="" method="post">
				<input type="hidden" name="newstypeId" value="0" />
				<input name="name" type="text" class="search-keyword"
					id="search-keyword" value="在这里搜索..." />
				<input type="submit" class="search-submit" value="搜索" />
			</form>
		</div>
		<!-- menu end -->

		<!-- main start -->
		<div class="main">
			<p align="center" style="font-size:14px; margin:160px auto;">
				系统繁忙，请稍后再试……
				<br />
				【<a href="#">点击这里返回上一页</a>】
			</p>
		</div>
		<!-- main end -->

		<!-- footer start -->
		<div class="footer">
			<p>Copyright&nbsp;&copy;&nbsp;软酷卓越实验室&nbsp;<a href="http://www.ruanko.com" title="软酷网" target="_blank"><strong>软酷网</strong></a>&nbsp;版权所有</p>
		</div>
		<!-- footer end -->
	</body>
</html>