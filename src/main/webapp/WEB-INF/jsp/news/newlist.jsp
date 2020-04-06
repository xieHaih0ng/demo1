<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<html>
	<head>
		<title>新闻发布系统</title>
		<meta http-equiv="Content-Type" content="text/html;charset=GBK">
		<meta http-equiv="Cache-Control" content="no-store"/>
		<meta http-equiv="Pragma" content="no-cache"/>
		<meta http-equiv="Expires" content="0"/>
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/css/bootstrap.min.css">
	</head>
	<body class="container">
	
	<form action="managernews.html">
	<table  width="1000" align="center" class="table table-bordered table-striped table-hover">
		<tr>
			<td>
				用户名：<input />
			</td>
			<td>
				密码：<input />
			</td>
			<td>
				<input type="submit" value="登录" />
				<a href="regisuser.html">注册新用户</a>
			</td>
			
		</tr>
	</table>
	</form>
	
	
	<table width="1000" class="table table-bordered table-striped table-hover">&nbsp;</table>
	<form name="form1" method="post" action="">
	  <table width="1000" class="table table-bordered table-striped table-hover">
		<tr bgcolor="#d7e5f6">
		  <td  nowrap><div align="center"><strong>序号</strong></td>
		  <td ><div align="center"><strong>标题</strong></td>
		  <td ><div align="center"><strong>作者</strong></td>
		  <td><div align="center"><strong>发布时间</strong></td>
		</tr>
		 <c:forEach items="${pageInfo.list }" var="news">
	  	<tr>
		  <td>${news.id }</td>
		  <td>${news.ntitle }</td>
		  <td>${news.nauthor }</td>
		  <td><spring:eval expression="news.ntime"/></td>
		</tr>
	  </c:forEach>
		<tr>
   <td colspan="4">
    <a href="findPages?page=${pageInfo.prePage }">上一页</a> 
    ${pageInfo.pageNum }/${pageInfo.pages }
    <a href="findPages?page=${pageInfo.nextPage }">下一页</a>
   </td>
  </tr>
	  </table>
	</form>
 </body>
</html>