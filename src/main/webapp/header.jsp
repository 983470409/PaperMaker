<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8"  language="java" %>
<html>
<head>
    <link rel="stylesheet" href="/assets/css/main.css" />
</head>
<body>
<script src="/assets/js/jquery.min.js"></script>
<!-- Header -->
<header id="header" class="alt">

    <h1><a href="index.jsp">PaperStar</a> by 张豫湘</h1>
    <nav id="nav">

        <ul>
            <c:choose>
            <c:when test="${sessionScope.account != null }">
            <li>
                用户:<a href="#" class="icon fa-angle-down">${sessionScope.account}</a>
                <ul>
                    <li><a href="#">个人中心</a></li>
                    <li><a href="#">修改密码</a></li>
                    <li><a href="/UserController/logout.do">注销</a></li>
                    <!--
                    <li>
                        <a href="#">4</a>
                        <ul>
                            <li><a href="#">Option One</a></li>
                            <li><a href="#">Option Two</a></li>
                            <li><a href="#">Option Three</a></li>
                            <li><a href="#">Option Four</a></li>
                        </ul>
                    </li>
                    -->
                </ul>
            </li>
            </c:when>
            <c:otherwise>
            <li><a href="/login.jsp" class="button">登录</a></li>
            <li><a href="#register" class="button" id="scroll">注册</a></li>
            </c:otherwise>
            </c:choose>
        </ul>

    </nav>

</header>

</body>
</html>
