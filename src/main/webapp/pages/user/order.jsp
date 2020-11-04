<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: songx
  Date: 2020/10/6
  Time: 22:14
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>订单详情</title>
</head>
<body>
<table border="1" frame="0">
    <tr>
        <p>用户：${username}</p>
        <a href="http://localhost:8080/movie/getMovieList">首页</a>
    </tr>
    <tr>
        <td><h3>电影名称</h3></td>
        <td><h3>主演</h3></td>
        <td><h3>放映厅</h3></td>
        <td><h3>上映时间</h3></td>
        <td><h3>座位</h3></td>
        <td><h3>影票状态</h3></td>
        <td><h3>修改</h3></td>
    </tr>

    <c:forEach items="${orderInfos}" var="orderInfo">
        <tr>
            <td>${orderInfo.movieName}</td>
            <td>${orderInfo.actors}</td>
            <td>${orderInfo.showroom}</td>
            <td>${orderInfo.playTime}</td>
            <td>${orderInfo.seatNum}</td>
            <td>${orderInfo.ticketStatus}</td>
            <td><a href="/ticketInfo">使用</a> <a href="/ticketInfo">退票</a> </td>
        </tr>

    </c:forEach>
</table>
<table>

</table>

</body>
</html>
