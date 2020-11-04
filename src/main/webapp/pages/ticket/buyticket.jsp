<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: songx
  Date: 2020/9/29
  Time: 10:42
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>选座</title>
    <!--写base标签，永远固定相对路径跳转的结果-->
    <base href="http://localhost:8080/movie/">
    <style>
        #buyticket {
            width: 400px;
            height: 200px;
            text-align: center;
        }
    </style>
</head>
<div>
    <table id="buyticket" border="1" frame="1" align="center">
        <h3 style="text-align: center">电影：${movieName}</h3>
        <p align="center"><img src="static/img/chosed.png" width="18">:已售出</p>
        <tr>
            <td width="400" height="50" style="text-align: center;">银&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp幕</td>
        </tr>
        <tr style="height: 40px">
        </tr>
        <tr>
            <td>
                <form action="buyTicket" method="post">
                    <table id="seat" border="0" frame="0">
                        <tr style="text-align: center">

                            <c:forEach items="${allSeats}" var="allseat">
                                <td>
                                    <c:forEach items="${allseat}" var="seatmap">
                                        <c:if test="${seatmap.value==0}">
                                            <p><input type="checkbox" name="seatNum" value="${seatmap.key}"/></p>
                                        </c:if>
                                        <c:if test="${seatmap.value==1}">
                                            <p><img src="static/img/chosed.png" width="18"></p>
                                        </c:if>
                                    </c:forEach>
                                </td>
                            </c:forEach>
                        </tr>
                    </table>
                    <input type="hidden" name="movieId" value="${movieId}">
                    <input type="hidden" name="movieName" value="${movieName}">
                    <input type="hidden" name="playTime" value="${playTime}">
                    <input type="hidden" name="showroom" value="${showroom}">
                    <button type="submit">购票</button>
                    <a href="http://localhost:8080/movie/getMovieList" style="font-size: 12px">返回首页</a>
                </form>

            </td>
        </tr>
    </table>
</div>
<body>

</body>
</html>
