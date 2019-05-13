<%--
  Created by IntelliJ IDEA.
  User: 我爱猪猪萌
  Date: 2019/5/12
  Time: 19:06
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="assets/css/main.css"/>
</head>
<body>
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

<script src="assets/js/jquery.dropotron.min.js"></script>
<script src="assets/js/jquery.scrollex.min.js"></script>
<script src="assets/js/browser.min.js"></script>
<script src="assets/js/breakpoints.min.js"></script>
<script src="assets/js/util.js"></script>
<script src="assets/js/main.js"></script>
</body>
</html>
