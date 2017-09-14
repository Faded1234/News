<%@ page language="java" contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE jspL PUBLIC "-//W3C//DTD jspL 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
	<title>新闻系统 - 首页右侧</title>
	<link href="css/style.css" rel="stylesheet" type="text/css" />
	</head>

	<body>
			<!-- right start -->
			<div class="right">
				<dl class="tbox">
					<dt>
						<strong>最新更新</strong>
					</dt>
					<dd>
						<ul class="ico1">
							<c:forEach items="${selectNew}" var="selectNew">
								<li>
									<a href="news/detail?id=${selectNew.id }">${selectNew.title} </a>
								</li>
							</c:forEach>
						</ul>
					</dd>
				</dl>

				<dl class="tbox">
					<dt>
						<strong>热点内容</strong>
					</dt>
					<dd>
						<ul class="ico2">
							<c:forEach items="${selectHot}" var="selectHot">
								<li>
									<a href="news/detail?id=${selectHot.id }">${selectHot.title} </a>
								</li>
							</c:forEach>							
						</ul>
					</dd>
				</dl>
			</div>
			<!-- right end -->
	</body>
</html>