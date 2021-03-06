<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>影院登录页面</title>
    <!--写base标签，永远固定相对路径跳转的结果-->
    <base href="http://localhost:8080/movie/">
</head>
<body>
<style>
    .login {
        margin: 0 auto;
        width: 200px;
    }

    h3 {
        text-align: center;
    }

    input {
        line-height: 30px;
        width: 250px;
        margin-bottom: 20px;
    }

    button {
        width: 250px;
        height: 30px;
    }
</style>

<div class="login">
    <h3>影院系统</h3>
    <c:if test="${errorMsg != null}">
       <p style="color: red;">${errorMsg}</p>
    </c:if>
    <form action="login" method="post">
        <input type="username" name="username" placeholder="用户名"/><br>
        <input type="password" name="password" placeholder="密码"/>
        <div>
            <a href="pages/user/register.jsp">立即注册</a>
        </div>
        <button type="submit">登录</button>
    </form>
</div>

</body>
</html>
