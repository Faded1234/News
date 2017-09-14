<%@ page language="java" contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ include file="/common/top.jsp" %>

<c:set var="proPath" value="${pageContext.request.contextPath}" />

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
	<title>新闻系统 - 栏目新闻列表</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta name="keywords" content="软酷网 新闻发布" />
	<meta name="description" content="软酷新闻发布系统" />
	<link href="css/style.css" rel="stylesheet" type="text/css" />
	</head>

	<body>
		<!-- menu end -->

		<!-- main start -->
		<div class="main">
			<!-- left start -->
			<div class="left">
				<div class="place">
					<strong>当前位置:</strong> 主页 &gt; 文章列表
				</div>
				<!-- place end -->
				<ul class="newslist">
					<c:forEach items="${selectPage.list}" var="pageList">
						<li>
							<a href="news/detail?id=${pageList.id }">${pageList.title} </a>
							<small>日期：</small><fmt:formatDate value="${pageList.creattime}" pattern="yyyy-MM-dd HH:mm:ss"></fmt:formatDate>
							<small>点击：</small>${pageList.click}
						</li>
					</c:forEach>
				</ul>
				<!-- newslist end -->
				<ul class="pagelist">
					<li>
						<a href="base/newsType?id=${selectPage.keyWord}&page=1">首页</a>
					</li>
					<c:choose >
						<c:when test="${selectPage.page}>=2">
							<li>
								<a href="base/newsType?id=${selectPage.keyWord}&page=${selectPage.page-1}">上一页</a>
							</li>
						</c:when>
					</c:choose>
					<c:choose >
						<c:when test="${selectPage.page}<${selectPage.totalPageCount}">
							<li>
								<a href="base/newsType?id=${selectPage.keyWord}&page=${selectPage.page-1}">下一页</a>
							</li>
						</c:when>
					</c:choose>
					<li>
						<a href="base/newsType?id=${selectPage.keyWord}&page=${selectPage.totalPageCount}">末页</a>
					</li>
					<li>
						<span class="pageinfo">
						现在是第<strong>${selectPage.page}</strong>页,
						共 <strong>${selectPage.totalPageCount}</strong>页
						<strong>${selectPage.totalRecord}</strong>条</span>
					</li>
					<c:forEach begin="1" end="${selectPage.totalPageCount}" varStatus="i">
						<li>
							<a href="base/newsType?id=${selectPage.keyWord}&page=${i.count}">${i.count }</a>
						</li>
					</c:forEach>
				</ul>
				<!-- pagelist end -->
				
			</div>
			<!-- left end -->

			<!-- right start -->
			<div class="right">
				<dl class="tbox">
					<%@ include file="/common/right.jsp" %>					
				</dl>
			</div>
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