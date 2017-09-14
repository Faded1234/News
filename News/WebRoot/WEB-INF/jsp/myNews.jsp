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
    
	<title>新闻系统 - 我的新闻页面</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<link href="css/admin.css" rel="stylesheet" media="screen" type="text/css" />
	<script type="text/javascript" src="${pageContext.request.contextPath }/js/jquery.min.js"></script>
		<!-- 预览新闻时，使用JavaScript脚本打开新窗口显示信息 -->
	<script type="text/javascript">
			$(document).ready(function() {
				turnPage(1);
			});
			
			function turnPage(v){
				var page = parseInt(v);
				if(page<1){
					page=1;
				}
				$.ajax({
					type : "POST",  
			        url : "/News/user/selectNews",  
			        cache : false,  
			        dataType: "JSON",
			        data : {  
			            "page" : page,  
			            "rows" : 6,
						"state" : $("#select").val(),
						"userId" : ${loginuser.id}
			            
 			        },  
 			         traditional:true,
					 async : true,  
       				 error : function() {  
        		   		 alert("网络异常！");  
    			    },  
        			success : function(data) {  
		 				var con = "";
  						 for(var i=0;i<data.list.length;i++){ 
  						 	var j=i+1;
  							con += "<tr align='center'  height=\"22\">" +
						    "<td class=\"numBold\">"+j+"</td>" +
  						    "<td class=\"numBold\">"+"<a href=\"user/preview?id=" +data.list[i].id+"\" >"+data.list[i].title+ "</a>" + "</td>" +
						    "<td class=\"numBold\">"+((new Date(data.list[i].creattime))).toLocaleDateString()+
						    " " +((new Date(data.list[i].creattime))).toLocaleTimeString()+
						    "<td class=\"numBold\">"+data.list[i].newType.name+"</td>" +
						    "<td class=\"numBold\">"+data.list[i].soure+"</td>" +
						    "</tr>";
			        				
						 }
	                     //把内容入到这个div中即完成我的新闻列表
	 					 var tbody1=window.document.getElementById("news");
						 tbody1.innerHTML= con;  
						 var str = "";
						 str += "<a href=\"javascript:;\"  onclick=\"turnPage("+1 +")\" >首页</a>";
						 if(data.page!=1){
							 str += "<a href=\"javascript:;\"  onclick=\"turnPage("+(data.page-1) +")\" >上一页</a>";
						 }
							 for(var i=parseInt(data.page/5)*5+1;i<=parseInt(data.page/5)*5+5 ;i++){
							 	if(i<=data.totalPageCount){
									 str +="<a href=\"javascript:void\" class=\"normalPage\" onclick=\"turnPage("+ i +")\" >"+i+"</a>"+ " ";
							 	}
							 }
					     if(data.page<data.totalPageCount){
							 str += "<a href=\"javascript:void\" class=\"normalPage\" onclick=\"turnPage("+(data.page+1)+")\" >下一页</a>";
					     }
						 str += "<a href=\"javascript:void\" class=\"normalPage\" onclick=\"turnPage("+data.totalPageCount+")\" >末页</a>";
						 //添加分页
	 					 var tbody2=window.document.getElementById("page");
						 tbody2.innerHTML= str;  
						 }
					})			
				}
	</script>		
	<script>
		function preview(url) {
			window.open(url,'预览','resizable=no,toolbar=no,width=620,height=500,top=50,left=200');
		}
	</script>
		
	</head>
	
	<body>
		<table>
			<tr bgcolor="#E7E7E7">
				<td height="24" colspan="4">
					&nbsp;我的新闻&nbsp;
				</td>
				<td>
					<form action="" method="post">
						状态:
						<select id="select">
							<option value="0">待审核</option>
							<option value="1">已发布</option>
						</select>
						<input type="button" value="查询" onclick="turnPage(1)"/>
					</form>
				</td>
			</tr>
			
			<!-- 新闻列表 -->
			<tr align="center" bgcolor="#F4F8FB" height="22">
				<td width="6%">
					序号
				</td>
				<td width="30%">
					文章标题
				</td>
				<td width="20%">
					录入时间
				</td>
				<td width="8%">
					栏目
				</td>
				<td width="18%">
					来源
				</td>
			</tr>
			<!-- 展示用户新建的新闻 -->
			<tbody id="news">
			
			</tbody>
<%-- 				<tr align='center'  height="22">
 					<td>${i.count }</td>
					<td align="left"><a href="user/detail?id=${News.id }">${News.title }</a>
					<td><fmt:formatDate value="${News.creattime}" pattern="yyyy-MM-dd HH:mm:ss"></fmt:formatDate></td>
					<td>${News.newType.name}</td>
					<td>${News.title }</td> 
				</tr> --%>
			
			
			<tr>
				<td height="24" colspan="5">
					&nbsp;
				</td>
			</tr>	
			<tr bgcolor="#F4F8FB">
			
			<!-- 展示分页的页数有关内容 -->
				<td colspan="9"  align="right" id="page" style="padding:0 52px;">
					<%-- 现在是第  ${selectNewsPage.page }页 , 共 ${selectNewsPage.totalPageCount } 页 ${selectNewsPage.totalRecord }条记录&nbsp;&nbsp;
					<a href="user/selectNews?id=1">首页</a>
					<c:if test="">
						<a href="user/selectNews?id=${selectNewsPage-1 }">上一页</a>
					</c:if>
					<c:if test="">
						<a href="user/selectNews?id=${selectNewsPage-1 }">下一页</a>
					</c:if>
					<a href="user/selectNews?id=${selectNewsPage.totalPageCount }">末页</a> --%>
				</td>
			</tr>

		</table>
	</body>
</html>