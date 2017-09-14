<%@ page language="java" contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ include file="/common/top.jsp" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
	<title>新闻系统 - 新闻详情页面</title>

	<link href="css/style.css" rel="stylesheet" type="text/css" />
	</head>

	<body>

		<!-- main start -->
		<div class="main">
			<!-- left start -->
			<div class="left">
				<div class="place">
					<strong>当前位置:</strong> 主页 &gt; 文章查看
				</div>

				<div class="viewbox">
					<div class="title">
						<h2>
							${select.title}
						</h2>
					</div>
					<div class="info">
						<small>时间:</small><fmt:formatDate value="${select.creattime}" pattern="yyyy-MM-dd HH:mm:ss"></fmt:formatDate>
						<small>来源:</small>${select.soure}
						<small>作者:</small>${select.author}
						<small>点击:</small>${select.click}次
					</div>
					<div class="content">
						${select.content}
					</div>
					
				</div>
				<!-- viewbox end -->

			</div>
			<!-- left end -->
			<%@ include file="/common/right.jsp" %>
			<!-- right end -->
		</div>
		<!-- main end -->

		<!-- footer start -->
		<div class="footer">
			<p>Copyright&nbsp;&copy;&nbsp;软酷卓越实验室&nbsp;<a href="http://www.ruanko.com" title="软酷网" target="_blank"><strong>软酷网</strong></a>&nbsp;版权所有</p>
		</div>
		<!-- footer end -->
	</body>
</html>