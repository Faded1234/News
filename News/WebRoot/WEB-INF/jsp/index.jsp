<%@ page language="java" contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ include file="/common/top.jsp" %>


<c:set var="proPath" value="${pageContext.request.contextPath}" />

<!DOCTYPE jspL PUBLIC "-//W3C//DTD jspL 4.01 Transitional//EN">
<jspl>
  <head>
    <base href="<%=basePath%>">
    
	<title>新闻系统 - 首页</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="Content-Type" content="text/jspl; charset=utf-8" />
	<meta name="description" content="软酷新闻发布系统" />
	<meta name="keywords" content="软酷网 新闻发布" />
	<link href="css/style.css" rel="stylesheet" type="text/css" />
	</head>

	<body>
		<!-- menu end -->

		<!-- main start -->
		<div class="main">
			<!-- left start -->
			<div class="left">
				<dl class="tbox">
					<dt>
						<strong><a href="newsType.jsp">国际新闻</a> </strong><span
							class="more"><a href="newsType.jsp">更多...</a> </span>
					</dt>
					<dd>
						<ul class="ico3">
							<c:forEach items="${map.pageList1}" var="pageList">
								<li>
									<a href="news/detail?id=${pageList.id }">${pageList.title} </a>
								</li>
							</c:forEach>
						</ul>
					</dd>
				</dl>

				<dl class="tbox">
					<dt>
						<strong><a href="newsType.jsp">国内新闻</a> </strong><span
							class="more"><a href="newsType.jsp">更多...</a> </span>
					</dt>
					<dd>
						<ul class="ico3">
							<c:forEach items="${map.pageList2}" var="pageList">
								<li>
									<a href="news/detail?id=${pageList.id }">${pageList.title} </a>
								</li>
							</c:forEach>
						</ul>
					</dd>
				</dl>

				<dl class="tbox">
					<dt>
						<strong><a href="newsType.jsp">娱乐新闻</a> </strong><span
							class="more"><a href="newsType.jsp">更多...</a> </span>
					</dt>
					<dd>
						<ul class="ico3">
							<c:forEach items="${map.pageList3}" var="pageList">
								<li>
									<a href="news/detail?id=${pageList.id }">${pageList.title} </a>
								</li>
							</c:forEach>
						</ul>
					</dd>
				</dl>

				<dl class="tbox">
					<dt>
						<strong><a href="newsType.jsp">体育新闻</a> </strong><span
							class="more"><a href="newsType.jsp">更多...</a> </span>
					</dt>
					<dd>
						<ul class="ico3">
							<c:forEach items="${map.pageList4}" var="pageList">
								<li>
									<a href="news/detail?id=${pageList.id }">${pageList.title} </a>
								</li>
							</c:forEach>
						</ul>
					</dd>
				</dl>

				<dl class="tbox">
					<dt>
						<strong><a href="newsType.jsp">财经频道</a> </strong><span
							class="more"><a href="news/detail?id=${pageList.id }">更多...</a> </span>
					</dt>
					<dd>
						<ul class="ico3">
							<c:forEach items="${map.pageList5}" var="pageList">
								<li>
									<a href="news/detail?id=${pageList.id }">${pageList.title} </a>
								</li>
							</c:forEach>
						</ul>
					</dd>
				</dl>

				<dl class="tbox">
					<dt>
						<strong><a href="newsType.jsp">汽车频道</a> </strong><span
							class="more"><a href="newsType.jsp">更多...</a> </span>
					</dt>
					<dd>
						<ul class="ico3">
							<c:forEach items="${map.pageList6}" var="pageList">
								<li>
									<a href="news/detail?id=${pageList.id }">${pageList.title} </a>
								</li>
							</c:forEach>
						</ul>
					</dd>
				</dl>
			</div>
			<%@ include file="/common/right.jsp" %>
			<!-- left end -->
		</div>
		<!-- main end -->

		<!-- footer start -->
		<div class="footer">
			<p>Copyright&nbsp;&copy;&nbsp;软酷卓越实验室&nbsp;<a href="http://www.ruanko.com" title="软酷网" target="_blank"><strong>软酷网</strong></a>&nbsp;版权所有</p>
		</div>
		<!-- footer end -->
	</body>
</jspl>