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
    
	<title>新闻系统 - 创建新闻页面</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<link href="css/admin.css" rel="stylesheet" type="text/css" />
	<style type="text/css"> <!--内部样式表-->
		tr{
			height:22px;
		}
		.td{
			text-align:center;
		}
	</style>
	<script type="text/javascript">
		function check(){
			var title = document.getElementById("title").value;
			var newsTypeId = document.getElementById("newsTypeId").value;
			var content = document.getElementById("content").value;

			if (title == "") {
	 			alert("请填写标题！"); 
	 			// 返回false，阻止表单提交
				return false;
		 	}
		 		
		 	if (newId == "0") {
		 			alert("请选择新闻栏目！"); 
		 			return false;
		 		}
	
				if (content == "") {
		 			alert("请填写内容！"); 
		 			return false;
		 		}
			}
		</script>
	</head>

	<body>
		<!--  新闻表单   -->
		<form id="createNewsform" name="createNewsform" method="post"
			action="user/creat">
			<table>
				<tr bgcolor="#E7E7E7">
					<td height="24" colspan="10">
						&nbsp;创建新闻&nbsp;
					</td>
				</tr>
				<input type="hidden" name="userId" id="userId" value="${loginuser.id }" />
				<tr>
					<td class="td">
						标题：
					</td>
					<td>
						<input type="text" name="title" id="title" size="60" />
					</td>
				</tr>
				<tr>
					<td class="td">
						栏目：
					</td>
					<td>
						<select id="newId">
							<option value="0">
								请选择栏目
							</option>
							<c:forEach items="${selectType}" var="newType"  >
								<option value="${newType.id }">
									${newType.name } 
							    </option>
							</c:forEach>
						</select>
					</td>
				</tr>
				<tr>
					<td class="td">
						来源：
					</td>
					<td>
						<input type="text" name="soure" id="source" />
					</td>
				</tr>
				<tr>
					<td class="td">
						作者：
					</td>
					<td>
						<input type="text" name="author" id="author" />
					</td>
				</tr>
<!-- 				<tr>
					<td class="td">
						创建时间：
					</td>
					<td>
						<input type="text" name="creattime" id="creattime" />
					</td>
				</tr> -->
				<tr>
					<td class="td">
						关键字：
					</td>
					<td>
						<input type="text" name="keyword" id="keyword" size="60" />
					</td>
				</tr>
				<tr>
					<td class="td">
							内容：
					</td>
					<td>
						<textarea id="content" name="content"
							style="width:600px; height:230px;"></textarea>
					</td>
				</tr>
				<tr>
					<td class="td">
						附件：
					</td>
					<td>
						<input type="file" />
					</td>
				</tr>
				<tr align="center">
					<td colspan="2">
						<input type="button" value="提交" class="button"
							onclick="check()" />
						<input type="reset" value="重置" class="button" />
					</td>
				</tr>
			</table>
		</form>
	</body>
</html>