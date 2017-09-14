<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
	<title>新闻系统 - 审核新闻页面</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<link href="css/admin.css" rel="stylesheet" media="screen" type="text/css" />
	<!-- 预览新闻时，使用JavaScript脚本打开新窗口显示信息 -->
	<script>
		function preview(url) {
			window.open(url,'预览','resizable=no,toolbar=no,width=620,height=500,top=50,left=200');
		}
	</script>	
	</head>
	</head>
	
	<body>
		<table>
			<tr bgcolor="#E7E7E7">
				<td height="24" colspan="6">
					&nbsp;审核新闻&nbsp;
				</td>
			</tr>
			<tr align="center" bgcolor="#F4F8FB" height="22">
				<td width="6%">
					序号
				</td>
				<td width="24%">
					文章标题
				</td>
				<td width="18%">
					录入时间
				</td>
				<td width="8%">
					栏目
				</td>
				<td width="6%">
					录入者
				</td>
				<td width="12%">
					操作
				</td>
			</tr>
			<c:forEach items="${checkNews.list}" var="selectNews" varStatus="i">
				<tr align='center' height="22" >
					<td>${i.count }</td>
					<td align="left"><a href="user/preview?id=${selectNews.id }" >${selectNews.title }</a></td>
					<td><fmt:formatDate value="${selectNews.creattime}" pattern="yyyy-MM-dd HH:mm:ss"></fmt:formatDate></td>
					<td>${selectNews.newType.name }</td>
					<td>${selectNews.author }</td>	
					<td><a href="news/pass?id=${selectNews.id }" target="main">通过</a> | <a href="news/fail?id=${selectNews.id }" target="main">不通过</a></td>
				</tr>
			</c:forEach>

			<tr>
				<td height="24" colspan="6">
					&nbsp;
				</td>
			</tr>	
			<tr bgcolor="#F4F8FB">
				<td colspan="9" align="right" style="padding:0 52px;">
					现在是第 ${checkNews.page }页 , 共 ${checkNews.totalPageCount }页 ${checkNews.totalRecord }条记录&nbsp;&nbsp;
					<a href="news/checkNews?page=1">首页</a>
					<c:choose >
						<c:when test="${checkNews.page}>=2">
							<li>
								<a href="news/checkNews?page=${checkNews.page-1 }">上一页</a>
							</li>
						</c:when>
					</c:choose>
					<c:choose >
						<c:when test="${checkNews.page}<${checkNews.totalPageCount}">
							<li>
								<a href="news/checkNews?page=${checkNews.page+1 }">下一页</a>
							</li>
						</c:when>
					</c:choose>
					<a href="news/checkNews?page=${checkNews.totalPageCount }">末页</a>
					<c:forEach begin="1" end="${checkNews.totalPageCount }" varStatus="i">
						<a href="news/checkNews?page=${i.count }">${i.count }</a>
					</c:forEach>
				</td>
			</tr>
		
		</table>
	</body>
</html>