<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE HTML>
<!DOCTYPE HTML>
<!--
Alpha by HTML5 UP
html5up.net | @ajlkn
Free for personal and commercial use under the CCA 3.0 license (html5up.net/license)
-->
<html>
<head>
    <title>PaperStar</title>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
    <link rel="stylesheet" href="assets/css/main.css" />
</head>

<body class="is-preload">

<script src="assets/js/jquery.min.js"></script>
<script>
    $(function() {
        $('.col-12-narrower').hide(1);
        $('.col-12-narrower').fadeIn(500);
    });

</script>


<div id="page-wrapper">

    <!-- Header -->
    <header id="header">
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

    <!-- Main -->
    <div class="row" style="margin-top: 40px; width: 1000px; margin-left: 17%; margin-bottom: 30px">
        <div class="col-4 col-12-narrower">

            <section class="box special">
                <span class="image featured"><img src="images/pic02.jpg" alt="" /></span>
                <h3>选择模板制作</h3>
                <p>在该板块当中，您可以使用本站所提供的试卷模板制作试卷</p>
                <ul class="actions special">
                    <li><a href="paperResource/selfMakePaper.jsp" class="button alt">开始制作</a></li>
                </ul>
            </section>

        </div>
        <div class="col-4 col-12-narrower">

            <section class="box special">
                <span class="image featured"><img src="images/pic03.jpg" alt="" /></span>
                <h3>自主制作试卷</h3>
                <p>在该模块当中，您可以根据自身需求定制您所需要的试卷模板</p>
                <ul class="actions special">
                    <li><a href="IntroSelfMakePaper.jsp" class="button alt">开始制作</a></li>
                </ul>
            </section>

        </div>

        <div class="col-4 col-12-narrower">

            <section class="box special">
                <span class="image featured"><img src="images/pic03.jpg" alt="" /></span>
                <h3>外部文档导入</h3>
                <p>在该模块当中，您可以导入Word模板文档进行试卷制作</p>
                <ul class="actions special">
                    <li><a href="#" class="button alt">开始制作</a></li>
                </ul>
            </section>

        </div>
    </div>


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

</body>
</html>
