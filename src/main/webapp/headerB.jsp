<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="/assets/css/main.css"/>
</head>
<body>
<!-- Header -->
<header id="header">
    <h1><a href="index.jsp">PaperStar</a> by 张豫湘</h1>
    <nav id="nav">
        <ul>
            <c:choose>
                <c:when test="${sessionScope.account != null }">
                    <li>
                        用户:<a href="#" class="icon fa-angle-down">${sessionScope.account}</a>
                        <ul>
                            <li><a href="#">1</a></li>
                            <li><a href="#">2</a></li>
                            <li><a href="#">3</a></li>
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
                </c:when>
                <c:otherwise>
                    <li><a href="login.jsp" class="button">登录</a></li>
                    <li><a href="#register" class="button" id="scroll">注册</a></li>
                </c:otherwise>
            </c:choose>
        </ul>
    </nav>
</header>

</body>
</html>
