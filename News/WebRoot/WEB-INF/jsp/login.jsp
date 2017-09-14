﻿<%@ page language="java" contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ include file="/common/top.jsp" %>

<c:set var="proPath" value="${pageContext.request.contextPath}" />

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>新闻系统 - 登录页面</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="登录页面">
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta name="description" content="软酷新闻发布系统" />
	<link href="css/style.css" rel="stylesheet" type="text/css" />
		<script type="text/javascript">
			function check(){
				//获取输入信息：用户名、密码。“.value”即获取此元素的值。
				var name = document.getElementById("name").value;
				var password = document.getElementById("passwords").value;

				//验证用户名不为空
				if (name == "") {
	 				// 在页面弹出提示框
	 				alert("请填写用户名！"); 
	 				// 返回false，阻止表单提交
			 		return false;
		 		}
	
				if (passwords == "") {
		 			alert("请填写密码！"); 
		 			return false;
		 		}
		 		document.getElementById("formid").submit();
			}
		</script>
	</head>

	<body>

		<!-- menu end -->

		<!-- main start -->
		<div class="main">
			<form action="user/loginIn" id="formid" method="post">
				<div class="register_main">
					<table>
						<tr>
							<td width="60">
								用户名：
							</td>
							<td width="180">
								<!-- 为元素定义id属性，可通过document对象访问 -->
								<input type="text" name="name" id="name" value="" />
							</td>
							<td width="220"></td>
						</tr>

						<tr>
							<td>
								密&nbsp;&nbsp;&nbsp;码：
							</td>
							<td>
								<input type="password" name="passwords" id="passwords" value="" />
							</td>
							<td></td>
						</tr>

						<tr>
							<td colspan="3">
								<font color="red">${info }</font>
								<!-- 此处显示提示信息 -->
							</td>
						</tr>

						<tr>
							<td colspan="3">
								<!-- 为提交按钮设置onclick事件，当点击鼠标时，会触发调用JavaScript
								函数，进行表单验证，通过return将函数的结果返回，以阻止表单验证失败后提交-->
								<input type="button" value="登录" class="button" onclick="check()"/>
							</td>
						</tr>
					</table>
				</div>
			</form>
			<div id="blurbs" class="blurbs_top_height clearfix">
				<div class="service">
					<h3 class="title">
						创意工厂
					</h3>

					<div class="thumb">
						<a href="http://www.ruankosoft.com/?page_id=2393"> <img
								src="${proPath }/images/ruanku.jpg"
								class="item-image" alt="创意工厂"/><span class="overlay"></span>
						</a>
					</div>
					<!-- end .thumb -->

					在这里，您可以享受到全方位的创意孵化服务！梦想在，路就在，相信我们Hold住！开启软酷· 创意工厂的大门，你会发现不一样的精彩！
					<a href="http://www.ruankosoft.com/?page_id=2393" class="readmore"><span>阅读全文</span>
					</a>
				</div>
				<!-- end .service -->
				<div class="service">
					<h3 class="title">
						应用大厅
					</h3>

					<div class="thumb">
						<a href="http://www.ruankosoft.com/?page_id=2400"> <img
								src="${proPath }/images/ruanku.jpg"
								class="item-image" alt="应用大厅"/><span class="overlay"></span>
						</a>
					</div>
					<!-- end .thumb -->

					将甲回炉，十年一剑！在IT行业也有百炼精钢用于修炼商城秘籍，让您的产品在竞争中稳操胜券。它就是准商业化应用软件孵化和展示平台--软酷应用大厅！
					<a href="http://www.ruankosoft.com/?page_id=2400" class="readmore"><span>阅读全文</span>
					</a>
				</div>
				<!-- end .service -->
				<div class="service last">
					<h3 class="title">
						企业命题
					</h3>

					<div class="thumb">
						<a href="http://www.ruankosoft.com/?page_id=2407"> <img
								src="${proPath }/images/ruanku.jpg"
								class="item-image" alt="企业命题"/><span class="overlay"></span>
						</a>
					</div>
					<!-- end .thumb -->

					我们常常会有一些Idea，我是思考者不是技术者，这个想法会不会异想天开？企业命题--奇思妙想实现的地方！它使不可能变为可能……
					<a href="http://www.ruankosoft.com/?page_id=2407" class="readmore"><span>阅读全文</span>
					</a>
				</div>
				<!-- end .service -->
			</div>
		</div>
		<!-- main end -->

		<!-- footer start -->
		<div class="footer">
			<p>Copyright&nbsp;&copy;&nbsp;软酷卓越实验室&nbsp;<a href="http://www.ruanko.com" title="软酷网" target="_blank"><strong>软酷网</strong></a>&nbsp;版权所有</p>
		</div>
		<!-- footer end -->
	</body>
</html>