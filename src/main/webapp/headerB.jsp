<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="/assets/css/main.css"/>
</head>
<body>
<script src="/assets/js/jquery.min.js"></script>
<script>
    $(function () {
        $("#backbtn").click(function () {
            alert('fanhui!');
            window.history.back(-1);
        })
    })
</script>
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
                            <li><a href="#">个人中心</a></li>
                            <li><a href="#">修改密码</a></li>
                            <li><a href="UserController/logout.do">注销</a></li>
                        </ul>
                    </li>
                    <li><a href="#" class="button" id="backbtn">返回</a></li>
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
