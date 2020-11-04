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
<table id="film" rules=rows border="1" frame="0">
    <tr style="height: 50px">
        <td width="100" style="text-align: left;">万达影城</td>
        <td></td>
        <td style="text-align: right;">
            <a href="pages/login.jsp">登录</a>
            <a href="pages/regist.jsp">注册</a>
        </td>
    </tr>
    <tr>
        <td width="170" valign="top">
            <table cellspacing="0" border="1" width="140">
                <img src="pages/img/img.png"/>
                <div>人在囧途</div>
            </table>
        </td>
        <td width="650">
            <table>
                <tr>
                    <div>
                        人在囧途
                    </div>
                    <div>
                        春节将近，玩具集团老板李成功（徐峥）回长沙过年，同时在情人曼妮（李曼）的逼迫下，准备过年后跟老婆（左小青）离婚。结果，在机场遇到前往长沙讨债的“资深”挤奶工牛耿（王宝强）后，霉运不断。命运的捉弄，牛耿一路都与李成功不期而遇。两人路途中囧事不断，也遭遇了各式各样的人和千奇百怪的事情，弄得李成功狼狈不堪，高贵形象荡然无存，牛耿却不以为然乐观积极。为了能够回家，二人结伴而行，他们换了各种交通方式奔波在回家的路上，飞机，火车，大巴，轮渡，搭货车，甚至拖拉机。但是两人还是在荒郊野外度过了大年三十，回首这一路的艰辛，与他们路途中遇到人或事，对两人人生有了很大触动。最终，在两人一路经历了从陌生人到成为朋友，牛耿的真诚也改变了李成功冷漠的性格，唤起李成功对真情的回归。 鞭炮响起，李成功与妻子深情相拥，我们知道这一年，李成功回家了，不光是身体，还有心灵。
                    </div>
                </tr>
                <hr/>
                <tr>
                    <div>张三</div>
                    <div>一段饱含幽默的回家之旅，徐峥与王宝强在《人在囧途》里用大老板与小民工身份的反差逗人捧腹，而笑料迭出的旅程中电影也沉淀着足以令人回味的温情所在，于此同时在这段看似荒诞不经，甚至有些过于戏剧话呈现中，电影也对一些社会问题</div>

                </tr>
                <br/>
                <tr>
                    <div>李四</div>
                    <div>中国的春运之拥挤完全可以进入吉尼斯大全，《人在囧途》虽然太过戏剧性，但呈现给我们的一幕幕绝对毫不夸张。记得湖南长沙曾经发生过雪灾，各种车辆停运所带来的故事可能三言两语难以说清。</div>

                </tr>
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

            <textarea rows="10" cols="30" style="width: 500px"></textarea>
            <br/>
            <button>发表评论</button>
        </td>
        <td width="170" valign="top">
            <table cellspacing="0" border="1" width="140">
                <img src="pages/img/img.png"/>
                <div>人在囧途</div>
            </table>
        </td>
    </tr>

</table>
</body>
</html>
