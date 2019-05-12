<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>PaperStar</title>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
    <link rel="stylesheet" href="assets/css/main.css" />
</head>

<body class="is-preload">
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
    <section id="main" class="container">
        <header>
            <h2>自主设计模板</h2>
            <p>在这里你可以依据您的个人需求对试卷进行设计</p>
        </header>
        <div class="box">
            <span class="image featured"><img src="images/testDesign.jpg" alt="" style="height: 500px" /></span>

            <form>
            <div class="row" >

                <div class="row-6 row-12-mobilep">
                    <h3>第一步：试卷基本信息填写</h3>

                    <div>
                       <p>试卷名称：</p> <input type="text" name="paperName">
                        <p>试卷名称：</p> <input type="text" name="paperName1">
                    </div>

                </div>

                <div class="row-6 row-12-mobilep">
                    <h3>第二步：试卷主体内容选择</h3>
                    <p>Adipiscing faucibus nunc placerat. Tempus adipiscing turpis non blandit accumsan eget lacinia nunc integer interdum amet aliquam ut orci non col ut ut praesent. Semper amet interdum mi. Phasellus enim laoreet ac ac commodo faucibus faucibus. Curae lorem ipsum adipiscing ac. Vivamus ornare laoreet odio vis praesent.</p>
                </div>



            </div>
            </form>
        </div>

    </section>

    <!-- Footer -->
    <footer id="footer">
        <ul class="copyright">
            <li>Design By 长沙学院：张豫湘</li>
        </ul>
    </footer>

</div>

<!-- Scripts -->
<script src="assets/js/jquery.min.js"></script>
<script src="assets/js/jquery.dropotron.min.js"></script>
<script src="assets/js/jquery.scrollex.min.js"></script>
<script src="assets/js/browser.min.js"></script>
<script src="assets/js/breakpoints.min.js"></script>
<script src="assets/js/util.js"></script>
<script src="assets/js/main.js"></script>

</body>
</html>