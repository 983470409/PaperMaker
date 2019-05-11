<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE HTML>
<html>
<head>
    <title>Paper Star</title>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
    <link rel="stylesheet" href="assets/css/main.css" />
</head>


<body class="landing is-preload">
<script src="assets/js/jquery.min.js"></script>
<script>
    $(document).ready(function (){


        $("#scroll").click(function (){
            $('html, body').animate({
                scrollTop: $("#div1").offset().top
            }, 2000);
        });

        $('#banner').hide().fadeIn(1000);
        $('#main').hide().fadeIn(2000);

    });
</script>
<div id="page-wrapper">

    <!-- Header -->
    <header id="header" class="alt">
        <h1><a href="index.jsp">PaperStar</a> by 张豫湘</h1>
        <nav id="nav">
            <ul>
                <li><a href="index.jsp">Home</a></li>
                <li>
                    <a href="#" class="icon fa-angle-down">用户</a>
                    <ul>
                        <li><a href="generic.html">1</a></li>
                        <li><a href="contact.html">2</a></li>
                        <li><a href="elements.html">3</a></li>
                        <li>
                            <a href="#">4</a>
                            <ul>
                                <li><a href="#">Option One</a></li>
                                <li><a href="#">Option Two</a></li>
                                <li><a href="#">Option Three</a></li>
                                <li><a href="#">Option Four</a></li>
                            </ul>
                        </li>

                    </ul>
                </li>
                <li><a href="login.jsp" class="button">登录</a></li>
                <li><a href="#register" class="button" id="scroll">注册</a></li>
            </ul>
        </nav>
    </header>

    <!-- Banner -->
    <section id="banner">
        <h2>Paper  Star</h2>
        <p>一款专注于在线辅助制作试卷的网站</p>
        <ul class="actions special">
            <li><a href="makePaperChoice.jsp" class="button">免费制作试卷</a></li>
        </ul>
    </section>

    <!-- Main -->
    <section id="main" class="container">

        <section class="box special">
            <header class="major">
                <h2>Introducing the ultimate Web app
                    <br />
                    for using to make test papers online</h2>
                <p>Tips： 当你使用试卷星系统时，您可以使用如下的功能</p>
            </header>

        </section>



        <div class="row">
            <div class="col-6 col-12-narrower">

                <section class="box special">
                    <span class="image featured"><img src="images/pic02.jpg" alt="" /></span>
                    <h3>试 卷 资 源 搜 索</h3>
                    <p>在该板块当中，您不仅仅可以搜索您所需要的资源，还可以分享您的资源供他人使用并赚取积分，并用积分下载资源</p>
                    <ul class="actions special">
                        <li><a href="#" class="button alt">开始搜索</a></li>
                    </ul>
                </section>

            </div>
            <div class="col-6 col-12-narrower">

                <section class="box special">
                    <span class="image featured"><img src="images/pic03.jpg" alt="" /></span>
                    <h3>智 能 制 作 试 卷</h3>
                    <p>在该模块当中，您可以选择套用模板，本地试卷资源，自主选择等途径进行试卷的制作，并可供下载、分享</p>
                    <ul class="actions special">
                        <li><a href="makePaperChoice.jsp" class="button alt">开始制作</a></li>
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

        <form>
            <div class="row gtr-50 gtr-uniform">
                <div class="col-12 col-12-mobilep" style="text-align: center">
                    <input type="text" name="account" id="account" placeholder="Account" style="margin-bottom: 17px"/>
                    <input type="password" name="password" id="password" placeholder="Password" style="margin-bottom: 17px"/>
                    <input type="password" name="rePassword" id="rePassword" placeholder="rePassword" style="margin-bottom: 17px"/>
                    <input type="text" name="age" id="age" placeholder="Age" style="margin-bottom: 17px"/>
                    <select  name="sex" style="margin-bottom: 17px">
                        <option selected = "selected">男</option>
                        <option >女</option>
                    </select>
                    <select  name="education" style="margin-bottom: 17px">
                        <option selected = "selected">小学</option>
                        <option >初中</option>
                        <option >高中</option>
                        <option >大专</option>
                        <option >本科</option>
                        <option >硕士</option>
                        <option >博士</option>
                    </select>
                </div>
            </div>

            <div class="col-4 col-12-mobilep">
                <input type="submit" value="Sign Up" class="fit" />
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

<script src="assets/js/jquery.dropotron.min.js"></script>
<script src="assets/js/jquery.scrollex.min.js"></script>
<script src="assets/js/browser.min.js"></script>
<script src="assets/js/breakpoints.min.js"></script>
<script src="assets/js/util.js"></script>
<script src="assets/js/main.js"></script>
<script>
    if ('addEventListener' in window) {
        window.addEventListener('load', function() { document.body.className = document.body.className.replace(/\bis-preload\b/, ''); });
        document.body.className += (navigator.userAgent.match(/(MSIE|rv:11\.0)/) ? ' is-ie' : '');
    }
</script>
</body>
</html>
