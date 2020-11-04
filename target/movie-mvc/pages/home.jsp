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
        #movieList{
            font-size: 15px;
        }
        #film{
            width: 1000px;
            height: 700px;
            text-align: center;
        }
    </style>
</head>
<body>
<table id="film" rules=rows border="1" frame="0">
    <tr style="height: 50px">
        <td width="100" style="text-align: left;">万达影城</td>
        <td style="text-align: right;">
            <a href="pages/user/login.jsp">登录</a> |
            <a href="pages/user/register.jsp">注册</a>
        </td>
    </tr>
    <tr>
        <td width="170" valign="top">
            <table cellspacing="0" border="1" width="140">
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
        <td>
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
            <div style="height: 600px">
                <table id="movieList">
                    <tr>
                        <td>
                            <div>
                                <img src="pages/img/img.png"/>
                                <div>
                                    <span>片名:</span>
                                    <a href="pages/ticket/ticketdetail.jsp">人在囧途</a>
                                </div>
                                <div>
                                    <span>类型:</span>
                                    <span>喜剧</span>
                                </div>
                                <div>
                                    <span>主演:</span>
                                    <span>王宝强/徐峥</span>
                                </div>
                                <div>
                                    <button>
                                        <a href="pages/ticket/buyticket.jsp">购票</a>
                                    </button>
                                </div>
                            </div>
                        </td>
                        <td>
                            <div>
                                <img src="pages/img/img.png"/>
                                <div>
                                    <span>片名:</span>
                                    <span>叶问</span>
                                </div>
                                <div>
                                    <span>类型:</span>
                                    <span>传记</span>
                                </div>
                                <div>
                                    <span>主演:</span>
                                    <span>甄子丹/吴建豪</span>
                                </div>
                                <div>
                                    <button>购票</button>
                                </div>
                            </div>
                        </td>
                        <td>
                            <div>
                                <img src="pages/img/img.png"/>
                                <div>
                                    <span>片名:</span>
                                    <span>人在囧途</span>
                                </div>
                                <div>
                                    <span>类型:</span>
                                    <span>喜剧</span>
                                </div>
                                <div>
                                    <span>主演:</span>
                                    <span>王宝强/徐峥</span>
                                </div>
                                <div>
                                    <button>购票</button>
                                </div>
                            </div>
                        </td>
                        <td>
                            <div>
                                <img src="pages/img/img.png"/>
                                <div>
                                    <span>片名:</span>
                                    <span>叶问</span>
                                </div>
                                <div>
                                    <span>类型:</span>
                                    <span>传记</span>
                                </div>
                                <div>
                                    <span>主演:</span>
                                    <span>甄子丹/吴建豪</span>
                                </div>
                                <div>
                                    <button>购票</button>
                                </div>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <div>
                                <img src="pages/img/img.png"/>
                                <div>
                                    <span>片名:</span>
                                    <span>人在囧途</span>
                                </div>
                                <div>
                                    <span>类型:</span>
                                    <span>喜剧</span>
                                </div>
                                <div>
                                    <span>主演:</span>
                                    <span>王宝强/徐峥</span>
                                </div>
                                <div>
                                    <button>购票</button>
                                </div>
                            </div>
                        </td>
                        <td>
                            <div>
                                <img src="pages/img/img.png"/>
                                <div>
                                    <span>片名:</span>
                                    <span>叶问</span>
                                </div>
                                <div>
                                    <span>类型:</span>
                                    <span>传记</span>
                                </div>
                                <div>
                                    <span>主演:</span>
                                    <span>甄子丹/吴建豪</span>
                                </div>
                                <div>
                                    <button>购票</button>
                                </div>
                            </div>
                        </td>
                        <td>
                            <div>
                                <img src="pages/img/img.png"/>
                                <div>
                                    <span>片名:</span>
                                    <span>人在囧途</span>
                                </div>
                                <div>
                                    <span>类型:</span>
                                    <span>喜剧</span>
                                </div>
                                <div>
                                    <span>主演:</span>
                                    <span>王宝强/徐峥</span>
                                </div>
                                <div>
                                    <button>购票</button>
                                </div>
                            </div>
                        </td>
                        <td>
                            <div>
                                <img src="pages/img/img.png"/>
                                <div>
                                    <span>片名:</span>
                                    <span>叶问</span>
                                </div>
                                <div>
                                    <span>类型:</span>
                                    <span>传记</span>
                                </div>
                                <div>
                                    <span>主演:</span>
                                    <span>甄子丹/吴建豪</span>
                                </div>
                                <div>
                                    <button>购票</button>
                                </div>
                            </div>
                        </td>
                    </tr>
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
