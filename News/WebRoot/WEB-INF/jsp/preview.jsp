<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
	<title>新闻系统 - 预览新闻</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<link href="css/admin.css" rel="stylesheet" media="screen"
		type="text/css" />
	</head>

	<body>
		<!-- newsInfor start -->
		<div class="viewbox">
			<div class="title">
				<h2>
					${select.title}
				</h2>
			</div>
			<!-- /title -->
			<div class="info">
						<small>时间:</small><fmt:formatDate value="${select.creattime}" pattern="yyyy-MM-dd HH:mm:ss"></fmt:formatDate>
						<small>来源:</small>${select.soure}
						<small>作者:</small>${select.author}
						<small>点击:</small>${select.click}次
			</div>
			<!-- /info -->
			<div class="vContent">
				${select.content}
			</div>
		</div>
		<!-- newsInfor end -->

		<!-- footer start -->
		<div class="footer">
			Copyright&nbsp;&copy;&nbsp;软酷卓越实验室&nbsp;
			<a href="http://www.ruanko.com" title="软酷网" target="_blank"><strong>软酷网</strong>
			</a>&nbsp;版权所有
		</div>
		<!-- footer end -->
	</body>
</html>