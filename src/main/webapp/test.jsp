<%@ page language="java" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>登录</title>
    <script src="bootstrap-3.3.7-dist/js/bootstrap.js"></script>
    <script src="bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>
    <script src="js/jquery-1.8.0.min.js"></script>
    <script src="js/jquery-1.8.0.js"></script>
    <link rel="stylesheet" type="text/css"
          href="bootstrap-3.3.7-dist/css/bootstrap.css" />
    <link rel="stylesheet" type="text/css"
          href="bootstrap-3.3.7-dist/css/bootstrap.min.css" />
    <style type="text/css">
        td {
            padding: 10px;
        }
    </style>
    <script type="text/javascript">
        var state = 0;//默认登录成功
        $(document).ready(
            function() {
                //登录
                $("#login").click(
                    function() {
                        $.ajax({
                            url : "login.action",
                            type : "POST",
                            /* data : "json", */
                            contentType : "application/json;charset=utf-8",
                            //向后端传输的数据
                            data : JSON.stringify({
                                username : $("#username").val(),
                                password : $("#password").val(),
                            }),
                            //处理后端返回的数据
                            success : function(result) {
                                //将得到的前台数据转换为json
                                /*var message = JSON.stringify(result);*/
                                alert("接受到的数据是：" + result);//输出默认的json字符串
                                if (result != null && result != "") {
                                    var message = eval("(" + result + ")");//万能转换，拿到对象
                                    //alert("接受到的数据是：" + message.username);
                                    var username = message.username;
                                    var password = message.password;
                                    //在前台做验证
                                    if (username != null && username != ""
                                        && password != null
                                        && password != "") {
                                        alert("用户登录成功");
                                        window.location.href="findUser.action";
                                    } else {
                                        alert("用户登录失败");
                                    }
                                }else{
                                    alert("用户登录失败");
                                }
                                //alert("接受到的数据是：" + message);
                            },
                            //处理失败返回的数据
                            error : function(result) {
                                alert("用户登录失败");
                            }
                        });
                    });
            });
    </script>
</head>
<body>
<form action="${pageContext.request.contextPath }/user/login.action"
      method="post">
    <div class="panel panel-default" style="width:400px; margin:40px auto">
        <div class="panel-heading"
             style="text-align:center;font-weight:bold;">用户登录</div>
        <div class="panel-body">
            <table style="width: 100%;">
                <tr>
                    <td style="width: 30%; ">用户名：</td>
                    <td style="width: 70%; "><input type="text"
                                                    class="form-control" id="username" placeholder="请输入用户名"></td>
                </tr>
                <tr>
                    <td style="width: 30%; ">密&nbsp;&nbsp;码：</td>
                    <td style="width: 70%; "><input type="password"
                                                    class="form-control" id="password" placeholder="请输入密码"></td>
                </tr>
                <tr>
                    <td colspan="2" style="text-align:center;">
                        <button type="button" class="btn btn-primary"
                                data-toggle="button" id="register">注册</button>
                        <button type="button" class="btn btn-primary"
                                data-toggle="button" id="login">登录</button>
                    </td>

                </tr>
            </table>
        </div>
    </div>
</form>


</body>
</html>