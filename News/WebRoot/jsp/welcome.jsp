<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
	<title>新闻系统 - 欢迎</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<link href="css/admin.css" rel="stylesheet" type="text/css" />
	</head>

	<body>
		<div class="content">
			<p>
				欢迎进入新闻系统！
				<br />
				现在时间：
				
				<embed 
					wmode="transparent" 
					src="<%=basePath%>/js/honehone_clock_tr.swf" 
					quality="high" 
					bgcolor="#ffffff"
					name="honehoneclock" 
					allowscriptaccess="always" 
					type="application/x-shockwave-flash"
					pluginspage="http://www.macromedia.com/go/getflashplayer" 
					title="Adobe Flash Player" 
					align="middle" 
					height="100" 
					width="250">
			</p>
	</body>
</html>