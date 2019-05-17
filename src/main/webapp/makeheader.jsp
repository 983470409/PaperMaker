<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="/css/amazeui.css">
</head>
<body>
<script src="/js/amazeui.js"></script>
<header class="am-topbar">
    <h1 class="am-topbar-brand">
        <a href="../index.jsp">Paper Star</a>
    </h1>

    <button class="am-topbar-btn am-topbar-toggle am-btn am-btn-sm am-btn-success am-show-sm-only" data-am-collapse="{target: '#doc-topbar-collapse'}"><span class="am-sr-only">导航切换</span> <span class="am-icon-bars"></span></button>

    <div class="am-collapse am-topbar-collapse" id="doc-topbar-collapse">
        <ul class="am-nav am-nav-pills am-topbar-nav">
            <li ><a href="#" onclick="window.history.back(-1)">返回</a></li>

        </ul>

        <form class="am-topbar-form am-topbar-left am-form-inline" role="search">
            <div class="am-form-group">
                <input type="text" class="am-form-field am-input-sm" placeholder="搜索">
            </div>
        </form>



        <div class="am-topbar-right">
            <button class="am-btn am-btn-primary am-topbar-btn am-btn-sm">预览</button>
            <button class="am-btn am-btn-primary am-topbar-btn am-btn-sm">保存</button>
        </div>
    </div>
</header>

</body>

</html>
