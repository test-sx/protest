<%@ page language="java" contentType="text/html; charset=utf-8"
         pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <title>Insert title here</title>
    <script src="static/script/jquery-1.7.2.js" type="text/javascript"></script>
    <script src="static/script/aes.js" type="text/javascript"></script>
    <script src="static/script/my-aes-crypto.js" type="text/javascript"></script>
</head>
<body>
<textarea id="textareaid1" cols="50" rows="10">这里输入内容</textarea><br>
<input type="button" value="加密" onclick="enCode()"/><br>
<textarea id="textareaid2" cols="50" rows="10">这里显示内容</textarea><br>
<input type="button" value="解密" onclick="deCode()"/><br>
<textarea id="textareaid3" cols="50" rows="10">这里显示内容</textarea><br>
</body>
<script type="text/javascript">
    function enCode(){
        var value = $("#textareaid1").val();
        var envalue = encrypt(value, "abcd1234abcd1234");
        $("#textareaid2").text(envalue);
    }
    function deCode(){
        var value = $("#textareaid2").val();
        var devalue = decrypt(value, "abcd1234abcd1234");
        $("#textareaid3").text(devalue);
    }
</script>
</html>