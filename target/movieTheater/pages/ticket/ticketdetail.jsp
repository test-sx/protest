<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: songx
  Date: 2020/9/30
  Time: 11:12
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>电影票详情</title>
    <!--写base标签，永远固定相对路径跳转的结果-->
    <base href="http://localhost:8080/movie/">
</head>
<body>
<table id="film" rules=rows border="1" frame="0" align="center">
    <tr style="height: 50px">
        <td width="100" style="text-align: left;">万达影城 <a href="http://localhost:8080/movie/getMovieList">首页</a></td>
        <td></td>
        <td style="text-align: right;">
            <span>欢迎</span>
            <a href="http://localhost:8080/movie/getUserOrder">${username}</a>
            &nbsp&nbsp&nbsp&nbsp&nbsp
            <a href="http://localhost:8080/movie">退出</a>
        </td>
    </tr>
    <tr>
        <td width="170" valign="top">
            <table cellspacing="0" border="1" width="140">
                <img src="static/img/${movieInfo.id}.jpg" width="150px" height="200px"/>
            </table>
        </td>
        <td width="650">
            <table>
                <tr>
                    <h3>
                        ${movieInfo.movieName}
                    </h3>
                    <div>
                        ${movieInfo.movieDetail}
                    </div>
                </tr>
                <hr/>
                <c:forEach items="${movieInfo.movieReview}" var="movieReview">
                    <br/>
                    <tr>
                        <span>${movieReview.userName}</span>
                        <br/>
                        <span>${movieReview.movieReview}</span>
                    </tr>
                    <br/>
                </c:forEach>
                <div id="page_nav" style="text-align: center">
                    <a href="#">首页</a>
                    <a href="#">1</a>
                    <a href="#">2</a>
                    <a href="#">3</a>
                    <a href="#">4</a>
                    <a href="#">5</a>
                    <a href="#">6</a>
                    <a href="#">末页</a>
                </div>
            </table>

            <form action="addReview" method="post">
                <input name="movieId" type="hidden" value="${movieInfo.id}">
                <br/>
                <textarea rows="10" cols="30" style="width: 500px" name="review"></textarea>
                <br/>
                <button type="submit">发表评论</button>
            </form>
        </td>
        <td width="170" valign="top">
            <table cellspacing="0" border="1" width="140">
                <tr>主演：</tr>
                <br/>
                <tr>${movieInfo.actors}</tr>
                <br/>
                <br/>
                <tr>发行公司：</tr>
                <br/>
                <tr>${movieInfo.company}</tr>
                <br/>
                <br/>
                <tr>上映时间：</tr>
                <br/>
                <tr>${movieInfo.playTime}</tr>
                <br/>
            </table>
        </td>
    </tr>

</table>
</body>
</html>
