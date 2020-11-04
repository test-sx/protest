<%--
  Created by IntelliJ IDEA.
  User: songx
  Date: 2020/9/29
  Time: 10:02
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<html>
<head>
    <meta charset="UTF-8">
    <title>尚硅谷会员注册页面</title>
    <!--写base标签，永远固定相对路径跳转的结果-->
    <base href="<%=basePath%>">

    <script type="text/javascript" src="static/script/jquery-1.7.2.js"></script>
    <script type="text/javascript">
        // 页面加载完成之后
        $(function () {
            // 给注册绑定单击事件
            $("#sub_btn").click(function () {
                // 验证用户名：必须由字母，数字下划线组成，并且长度为5到12位
                //1 获取用户名输入框里的内容
                var usernameText = $("#username").val();
                //2 创建正则表达式对象
                var usernamePatt = /^\w{5,12}$/;
                //3 使用test方法验证
                if (!usernamePatt.test(usernameText)) {
                    //4 提示用户结果
                    $("span.errorMsg").text("用户名不合法！");

                    return false;
                }
                // 验证密码：必须由字母，数字下划线组成，并且长度为5到12位
                //1 获取用户名输入框里的内容
                var passwordText = $("#password").val();
                //2 创建正则表达式对象
                var passwordPatt = /^\w{5,12}$/;
                //3 使用test方法验证
                if (!passwordPatt.test(passwordText)) {
                    //4 提示用户结果
                    $("span.errorMsg").text("密码不合法！");

                    return false;
                }
                // 验证确认密码：和密码相同
                //1 获取确认密码内容
                var repwdText = $("#repwd").val();
                //2 和密码相比较
                if (repwdText != passwordText) {
                    //3 提示用户
                    $("span.errorMsg").text("确认密码和密码不一致！");

                    return false;
                }

                // 邮箱验证：xxxxx@xxx.com
                //1 获取邮箱里的内容
                var emailText = $("#email").val();
                //2 创建正则表达式对象
                var emailPatt = /^[a-z\d]+(\.[a-z\d]+)*@([\da-z](-[\da-z])?)+(\.{1,2}[a-z]+)+$/;
                //3 使用test方法验证是否合法
                if (!emailPatt.test(emailText)) {
                    //4 提示用户
                    $("span.errorMsg").text("邮箱格式不合法！");

                    return false;
                }

                // 手机号验证
                //1 获取手机号里的内容
                var phoneText = $("#userphone").val();
                //2 创建正则表达式对象
                var phonePatt = /^1(3|4|5|6|7|8|9)\d{9}$/;
                //3 使用test方法验证是否合法
                if (!phonePatt.test(phoneText)) {
                    //4 提示用户
                    $("span.errorMsg").text("手机号格式不合法！");
                    return false;
                }

                // 验证码：现在只需要验证用户已输入。因为还没讲到服务器。验证码生成。
                var codeText = $("#code").val();

                //去掉验证码前后空格
                // alert("去空格前：["+codeText+"]")
                codeText = $.trim(codeText);
                // alert("去空格后：["+codeText+"]")

                if (codeText == null || codeText == "") {
                    //4 提示用户
                    $("span.errorMsg").text("验证码不能为空！");

                    return false;
                }

                // 去掉错误信息
                $("span.errorMsg").text("");

            });

        });

    </script>
    <style>
        .register {
            margin: 0 auto;
            width: 400px;
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
            width: 400px;
            height: 30px;
            text-align: center;
        }
    </style>
</head>
<body>
<div class="register">
    <h3>欢迎注册影院系统</h3>
    <span style="color: red" class="errorMsg"></span>
    <form action="register" method="post">
        <label>用户名称：</label>
        <input class="itxt" type="text" placeholder="请输入用户名"
               value=""
               autocomplete="off" tabindex="1" name="username" id="username" />
        <br />
        <label>用户密码：</label>
        <input class="itxt" type="password" placeholder="请输入密码"
               value=""
               autocomplete="off" tabindex="1" name="password" id="password" />
        <br />
        <label>确认密码：</label>
        <input class="itxt" type="password" placeholder="确认密码"
               value=""
               autocomplete="off" tabindex="1" name="repwd" id="repwd" />
        <br />
        <label>电子邮件：</label>
        <input class="itxt" type="text" placeholder="请输入邮箱地址"
               value=""
               autocomplete="off" tabindex="1" name="email" id="email" />
        <br />
        <label>手 机 号 ：</label>
        <input class="itxt" type="text" placeholder="请输入手机号"
               value=""
               autocomplete="off" tabindex="1" name="userphone" id="userphone" />
        <br />
        <label>验 证 码 ：</label>
        <input class="itxt" type="text" name="code" id="code" value="abcde"/>
        <br />
        <input type="submit" value="注册" id="sub_btn" />
    </form>

</div>

</body>
</html>