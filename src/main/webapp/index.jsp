<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE HTML>
<html>
<head>
    <title>Paper Star</title>
    <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no"/>
    <link rel="stylesheet" href="/assets/css/main.css"/>
</head>


<body class="landing is-preload">
<script src="/assets/js/jquery.min.js"></script>
<script>
    $(document).ready(function () {

        <!-- 点击注册滑动效果 -->
        $("#scroll").click(function () {
            $('html, body').animate({
                scrollTop: $("#div1").offset().top
            }, 2000);
        });
        <!--控制页面淡入淡出效果-->
        $('#banner').hide().fadeIn(1000);
        $('#main').hide().fadeIn(2000);

    });
</script>
<div id="page-wrapper">

    <jsp:include page="header.jsp"></jsp:include>

    <!-- Banner -->
    <section id="banner">
        <h2>Paper Star</h2>
        <p>一款专注于在线辅助制作试卷的网站</p>
        <ul class="actions special">
            <li><a href="/choiceMakePaper.jsp" class="button">免费制作试卷</a></li>
        </ul>
    </section>

    <!-- Main -->
    <section id="main" class="container">

        <section class="box special">
            <header class="major">
                <h2>Introducing the ultimate Web app
                    <br/>
                    for using to make test papers online</h2>
                <p>Tips： 当你使用试卷星系统时，您可以使用如下的功能</p>
            </header>

        </section>


        <div class="row">
            <div class="col-6 col-12-narrower">

                <section class="box special">
                    <span class="image featured"><img src="/images/pic02.jpg" alt=""/></span>
                    <h3>试 卷 资 源 搜 索</h3>
                    <p>在该板块当中，您不仅仅可以搜索您所需要的资源，还可以分享您的资源供他人使用并赚取积分，并用积分下载资源</p>
                    <ul class="actions special">
                        <li><a href="#" class="button alt">开始搜索</a></li>
                    </ul>
                </section>

            </div>
            <div class="col-6 col-12-narrower">

                <section class="box special">
                    <span class="image featured"><img src="/images/pic03.jpg" alt=""/></span>
                    <h3>智 能 制 作 试 卷</h3>
                    <p>在该模块当中，您可以选择套用模板，本地试卷资源，自主选择等途径进行试卷的制作，并可供下载、分享</p>
                    <ul class="actions special">
                        <li><a href="/choiceMakePaper.jsp" class="button alt">开始制作</a></li>
                    </ul>
                </section>

            </div>
        </div>

    </section>

    <!-- 注册-->
    <a name="register" id="div1"/><!-- 注册的锚点 -->
    <section id="cta">

        <h2>注册</h2>
        <p>————————————————————————————————————————————</p>

        <form id="regForm">
            <div class="row gtr-50 gtr-uniform">
                <div class="col-12 col-12-mobilep" style="text-align: center">
                    <input type="text" name="account" id="account" placeholder="Account" style="margin-bottom: 17px"/>
                    <input type="password" name="password" id="password" placeholder="Password"
                           style="margin-bottom: 17px"/>
                    <input type="password" name="rePassword" id="rePassword" placeholder="rePassword"
                           style="margin-bottom: 17px"/>
                    <input type="text" name="age" id="age" placeholder="Age" style="margin-bottom: 17px"/>
                    <select name="sex" style="margin-bottom: 17px">
                        <option selected="selected">男</option>
                        <option>女</option>
                    </select>
                    <select name="education" style="margin-bottom: 17px">
                        <option selected="selected">小学</option>
                        <option>初中</option>
                        <option>高中</option>
                        <option>大专</option>
                        <option>本科</option>
                        <option>硕士</option>
                        <option>博士</option>
                    </select>
                </div>
            </div>

            <div class="col-4 col-12-mobilep">
                <input type="button" value="Sign Up" class="fit"/>
            </div>
        </form>

    </section>

    <!-- Footer -->
    <footer id="footer">
        <ul class="copyright">
            <li>Design By 长沙学院：张豫湘</li>
        </ul>
    </footer>

</div>

<!-- Scripts -->

<script src="/assets/js/jquery.dropotron.min.js"></script>
<script src="/assets/js/jquery.scrollex.min.js"></script>
<script src="/assets/js/browser.min.js"></script>
<script src="/assets/js/breakpoints.min.js"></script>
<script src="/assets/js/util.js"></script>
<script src="/assets/js/main.js"></script>
<script type="text/javascript">

    $(function () {
        $.sessionId
        <!-- 登录 -->
        $('.fit').click(function () {

                var account = $("#regForm input")[0].value;
                var password = $("#regForm input")[1].value;
                var repassword = $("#regForm input")[2].value;
                var age = $("#regForm input")[3].value;
                var sex = $("#regForm select")[0].value;
                var eduExp = $("#regForm select")[1].value;

                if (account == "" || password == "" || repassword == "" || age == "") {
                    alert("选项不能填空");
                    return false;
                } else if (account.length < 8) {
                    alert("账号不能小于8位");
                    return false;
                } else if (password != repassword) {
                    alert("两次密码输入不一致");
                    return false;
                }


                var data = {
                    'account': account,
                    'password': password,
                    'sex': sex,
                    'age': age,
                    'eduExp': eduExp,
                    'status': 1
                }
                $.ajax({
                url: 'UserController/registered.do',
                type: 'post',
                data : JSON.stringify(data),
                contentType : "application/json",

                success:function (result) {
                    if(result == 1)
                        alert('注册成功');
                    else
                        alert('注册失败！账号已存在');
                }


            })
                ;

            }
        )

    })


</script>
</body>
</html>
