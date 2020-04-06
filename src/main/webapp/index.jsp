<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<html>
<body>
<h2>
 <form action="${pageContext.request.contextPath }/login/login" method="post">
 用户名： <input type="text" name="uname"/><br>
 密码: <input type="password" name="upwd"/><br>
 <button >登录</button>
 <a href="${pageContext.request.contextPath }/news/findPages">查询</a>
 <a href="${pageContext.request.contextPath }/news/findPage">查询a</a>
 </form>
</h2>

</body>
</html>
