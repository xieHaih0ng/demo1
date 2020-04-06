<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<html>
	<head>
		<title>新闻管理</title>
		<meta http-equiv="Content-Type" content="text/html;charset=GBK">
		<meta http-equiv="Cache-Control" content="no-store"/>
		<meta http-equiv="Pragma" content="no-cache"/>
		<meta http-equiv="Expires" content="0"/>
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/css/bootstrap.min.css">
	</head>
<body class="container">
	<table width="1000" class="table table-bordered table-striped table-hover">
	<div align="center">
	<a href="newlist.html">首页</a>
	欢迎您来到新闻发布系统&nbsp;&nbsp;当前登录用户：文强	&nbsp;&nbsp;<a href="createNews.html">发布新闻</a></div>
	
	</table>
	
	<form name="form1" method="post" action="">
	  <table width="1000" class="table table-bordered table-striped table-hover">
		<tr>
		  <td >标题：
			<input name="textfield" type="text" size="15"></td>	
		  <td  >从        
		  <input name="textfield2" type="text" size="15">到当前</td>
		  <td ><input class="button btn-danger" type="submit" name="Submit" value="查   询"></td>
		</tr>
	  </table>
	  <table width="1000" border="1" align="center" class="table table-bordered table-striped table-hover">
		<tr bgcolor="#d7e5f6">
		  <td width="4%" nowrap><div align="center"><strong>序号</strong></td>
		  <td width="14%"><div align="center"><strong>标题</strong></td>
		  <td width="20%"><div align="center"><strong>作者</strong></td>
		  <td width="19%"><div align="center"><strong>发布时间</strong></td>
		  <td width="19%"><div align="center"><strong>操作</strong></td>
		</tr>
		 <c:forEach items="${pageInfo.list }" var="news">
	  	<tr>
		  <td>${news.id }</td>
		  <td>${news.ntitle }</td>
		  <td>${news.nauthor }</td>
		  <td><spring:eval expression="news.ntime"/></td>
		  <td><a href="#">删除</a></td>
		</tr>
	  </c:forEach>
		<tr>
   <td colspan="5">
    <a href="findPage?page=${pageInfo.prePage }">上一页</a> 
    ${pageInfo.pageNum }/${pageInfo.pages }
    <a href="findPage?page=${pageInfo.nextPage }">下一页</a>
   </td>
  </tr>
	  </table>
	</form>
</body>
</html>