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
    <table id="buyticket" border="1" frame="1">
        <tr>
            <td width="400" height="50" style="text-align: center;">银幕</td>
        </tr>
        <tr>
            <td>
                <table id="seat" border="0" frame="0" >
                    <tr style="text-align: center">
                        <td>
                            <p><input type="checkbox" name="category" value="1-1" /></p>
                            <p><input type="checkbox" name="category" value="2-1" /></p>
                            <p><input type="checkbox" name="category" value="3-1" /></p>
                            <p><input type="checkbox" name="category" value="4-1" /></p>
                            <p><input type="checkbox" name="category" value="5-1" /></p>
                            <p><input type="checkbox" name="category" value="6-1" /></p>
                            <p><input type="checkbox" name="category" value="7-1" /></p>
                        </td>
                        <td>
                            <p><input type="checkbox" name="category" value="1-2" /></p>
                            <p><input type="checkbox" name="category" value="2-2" /></p>
                            <p><input type="checkbox" name="category" value="3-2" /></p>
                            <p><input type="checkbox" name="category" value="4-2" /></p>
                            <p><input type="checkbox" name="category" value="5-2" /></p>
                            <p><input type="checkbox" name="category" value="6-2" /></p>
                            <p><input type="checkbox" name="category" value="7-2" /></p>
                        </td>
                        <td>
                            <p><input type="checkbox" name="category" value="1-3" /></p>
                            <p><input type="checkbox" name="category" value="2-3" /></p>
                            <p><input type="checkbox" name="category" value="3-3" /></p>
                            <p><input type="checkbox" name="category" value="4-3" /></p>
                            <p><input type="checkbox" name="category" value="5-3" /></p>
                            <p><input type="checkbox" name="category" value="6-3" /></p>
                            <p><input type="checkbox" name="category" value="7-3" /></p>
                        </td>
                        <td>
                            <p><input type="checkbox" name="category" value="1-4" /></p>
                            <p><input type="checkbox" name="category" value="2-4" /></p>
                            <p><input type="checkbox" name="category" value="3-4" /></p>
                            <p><input type="checkbox" name="category" value="4-4" /></p>
                            <p><input type="checkbox" name="category" value="5-4" /></p>
                            <p><input type="checkbox" name="category" value="6-4" /></p>
                            <p><input type="checkbox" name="category" value="7-4" /></p>
                        </td>
                        <td>
                            <p><input type="checkbox" name="category" value="1-5" /></p>
                            <p><input type="checkbox" name="category" value="2-5" /></p>
                            <p><input type="checkbox" name="category" value="3-5" /></p>
                            <p><input type="checkbox" name="category" value="4-5" /></p>
                            <p><input type="checkbox" name="category" value="5-5" /></p>
                            <p><input type="checkbox" name="category" value="6-5" /></p>
                            <p><input type="checkbox" name="category" value="7-5" /></p>
                        </td>
                        <td>
                            <p><input type="checkbox" name="category" value="1-6" /></p>
                            <p><input type="checkbox" name="category" value="2-6" /></p>
                            <p><input type="checkbox" name="category" value="3-6" /></p>
                            <p><input type="checkbox" name="category" value="4-6" /></p>
                            <p><input type="checkbox" name="category" value="5-6" /></p>
                            <p><input type="checkbox" name="category" value="6-6" /></p>
                            <p><input type="checkbox" name="category" value="7-6" /></p>
                        </td>
                        <td>
                            <p><input type="checkbox" name="category" value="1-7" /></p>
                            <p><input type="checkbox" name="category" value="2-7" /></p>
                            <p><input type="checkbox" name="category" value="3-7" /></p>
                            <p><input type="checkbox" name="category" value="4-7" /></p>
                            <p><input type="checkbox" name="category" value="5-7" /></p>
                            <p><input type="checkbox" name="category" value="6-7" /></p>
                            <p><input type="checkbox" name="category" value="7-7" /></p>
                        </td>
                        <td>
                            <p><input type="checkbox" name="category" value="1-8" /></p>
                            <p><input type="checkbox" name="category" value="2-8" /></p>
                            <p><input type="checkbox" name="category" value="3-8" /></p>
                            <p><input type="checkbox" name="category" value="4-8" /></p>
                            <p><input type="checkbox" name="category" value="5-8" /></p>
                            <p><input type="checkbox" name="category" value="6-8" /></p>
                            <p><input type="checkbox" name="category" value="7-8" /></p>
                        </td>
                        <td>
                            <p><input type="checkbox" name="category" value="1-9" /></p>
                            <p><input type="checkbox" name="category" value="2-9" /></p>
                            <p><input type="checkbox" name="category" value="3-9" /></p>
                            <p><input type="checkbox" name="category" value="4-9" /></p>
                            <p><input type="checkbox" name="category" value="5-9" /></p>
                            <p><input type="checkbox" name="category" value="6-9" /></p>
                            <p><input type="checkbox" name="category" value="7-9" /></p>
                        </td>
                        <td>
                            <p><input type="checkbox" name="category" value="1-10" /></p>
                            <p><input type="checkbox" name="category" value="2-10" /></p>
                            <p><input type="checkbox" name="category" value="3-10" /></p>
                            <p><input type="checkbox" name="category" value="4-10" /></p>
                            <p><input type="checkbox" name="category" value="5-10" /></p>
                            <p><input type="checkbox" name="category" value="6-10" /></p>
                            <p><input type="checkbox" name="category" value="7-10" /></p>
                        </td>
                        <td>
                            <p><input type="checkbox" name="category" value="1-11" /></p>
                            <p><input type="checkbox" name="category" value="2-11" /></p>
                            <p><input type="checkbox" name="category" value="3-11" /></p>
                            <p><input type="checkbox" name="category" value="4-11" /></p>
                            <p><input type="checkbox" name="category" value="5-11" /></p>
                            <p><input type="checkbox" name="category" value="6-11" /></p>
                            <p><input type="checkbox" name="category" value="7-11" /></p>
                        </td>
                        <td>
                            <p><input type="checkbox" name="category" value="1-12" /></p>
                            <p><input type="checkbox" name="category" value="2-12" /></p>
                            <p><input type="checkbox" name="category" value="3-12" /></p>
                            <p><input type="checkbox" name="category" value="4-12" /></p>
                            <p><input type="checkbox" name="category" value="5-12" /></p>
                            <p><input type="checkbox" name="category" value="6-12" /></p>
                            <p><input type="checkbox" name="category" value="7-12" /></p>
                        </td>
                        <td>
                            <p><input type="checkbox" name="category" value="1-13" /></p>
                            <p><input type="checkbox" name="category" value="2-13" /></p>
                            <p><input type="checkbox" name="category" value="3-13" /></p>
                            <p><input type="checkbox" name="category" value="4-13" /></p>
                            <p><input type="checkbox" name="category" value="5-13" /></p>
                            <p><input type="checkbox" name="category" value="6-13" /></p>
                            <p><input type="checkbox" name="category" value="7-13" /></p>
                        </td>
                        <td>
                            <p><input type="checkbox" name="category" value="1-14" /></p>
                            <p><input type="checkbox" name="category" value="2-14" /></p>
                            <p><input type="checkbox" name="category" value="3-14" /></p>
                            <p><input type="checkbox" name="category" value="4-14" /></p>
                            <p><input type="checkbox" name="category" value="5-14" /></p>
                            <p><input type="checkbox" name="category" value="6-14" /></p>
                            <p><input type="checkbox" name="category" value="7-14" /></p>
                        </td>
                        <td>
                            <p><input type="checkbox" name="category" value="1-15" /></p>
                            <p><input type="checkbox" name="category" value="2-15" /></p>
                            <p><input type="checkbox" name="category" value="3-15" /></p>
                            <p><input type="checkbox" name="category" value="4-15" /></p>
                            <p><input type="checkbox" name="category" value="5-15" /></p>
                            <p><input type="checkbox" name="category" value="6-15" /></p>
                            <p><input type="checkbox" name="category" value="7-15" /></p>
                        </td>
                    </tr>
                </table>
                <p><input id="btnOperate" type="button" value="选择" onclick="static_num()" /></p>
            </td>
        </tr>
    </table>
</div>
<body>

</body>
</html>
