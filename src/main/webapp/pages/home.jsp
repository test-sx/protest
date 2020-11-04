<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: songx
  Date: 2020/9/30
  Time: 11:10
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en" xmlns:th="http：//www.thymeleaf.org">
<head>
    <meta charset="UTF-8">
    <title>影院首页</title>
    <!--写base标签，永远固定相对路径跳转的结果-->
    <base href="http://localhost:8080/movie/">
    <style>
        #movieList {
            font-size: 15px;
        }

        #film {
            width: 1000px;
            height: 800px;
            text-align: center;
        }
    </style>
    <script>
        function formSubmit(){
            document.getMovieInfo.submit();
        }
    </script>
</head>
<body>
<table id="film" rules=rows border="1" frame="0" align="center">
    <tr style="height: 50px">
        <td width="100" style="text-align: left;">万达影城</td>
        <td style="text-align: right;">
            <span>欢迎</span>
            <a href="http://localhost:8080/movie/getUserOrder">${username}</a>
            &nbsp&nbsp&nbsp&nbsp&nbsp
            <a href="http://localhost:8080/movie">退出</a>
        </td>
    </tr>
    <tr>
        <td width="150" valign="top">
            <table cellspacing="0" border="1" width="160">
                <tr>
                    <td>CBD店</td>
                </tr>
                <tr>
                    <td>西单店</td>
                </tr>
                <tr>
                    <td>金融街</td>
                </tr>
                <tr>
                    <td>望京店</td>
                </tr>
                <tr>
                    <td>中关村店</td>
                </tr>
                <tr>
                    <td>大兴店</td>
                </tr>
            </table>
        </td>
        <td valign="top" align="center">
            <div style="height: 50px;text-align: left">
                <span>放映厅：</span>
                <select>
                    <option>所有厅</option>
                    <option>1号厅</option>
                    <option>2号厅</option>
                    <option>3号厅</option>
                </select>
                <span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>
                <span>上映时间：</span>
                <select>
                    <option></option>
                    <option>2020年8月10号</option>
                    <option>2020年8月11号</option>
                    <option>2020年8月12号</option>
                    <option>2020年8月13号</option>
                </select>
                <button>搜索</button>
            </div>
            <div>
                <table id="movieList">
                        <%
                            int i=0;
                        %>
                    <c:forEach items="${movieInfos}" var="movieInfo">
                        <%
                            if (i%4==0){
                                out.write("<tr valign=\"top\">");
                            }
                        %>
                        <td style="height: 330px;width: 190px">
                            <div>
                                    <img src="static/img/${movieInfo.id}.jpg" width="150px" height="200px"/>

                                <div>
                                    <form action="getMovieInfo" method="post" name="getMovieInfo" style="margin-bottom: 0">
                                        <input type="hidden" name="movieId" value="${movieInfo.id}">
                                        <span>片名:</span>
                                        <span>${movieInfo.movieName}</span>
                                        <button type="submit">详情</button>
                                    </form>
                                </div>
                                <div>
                                    <span>类型:</span>
                                    <span>${movieInfo.movieType}</span>
                                </div>
                                <div>
                                    <span>主演:</span>
                                    <span>${movieInfo.actors}</span>
                                </div>
                                <div>
                                    <form action="ticketInfo" method="post">
                                        <input type="hidden" name="movieName" value="${movieInfo.movieName}">
                                        <input type="hidden" name="movieId" value="${movieInfo.id}">
                                        <input type="hidden" name="playTime" value="${movieInfo.playTime}">
                                        <input type="hidden" name="showroom" value="${movieInfo.showroom}">
                                        <input type="submit" value="购票">
                                    </form>

                                </div>
                                <%
                                    i++;
                                %>
                            </div>
                        </td>
                        <%
                            if (i%4==0){
                                out.write("</tr>");
                            }
                        %>
                    </c:forEach>
                </table>
            </div>
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
        </td>
    </tr>
</table>
</body>
</html>
