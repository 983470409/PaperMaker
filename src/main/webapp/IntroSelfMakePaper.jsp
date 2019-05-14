<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>PaperStar</title>
    <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no"/>
    <link rel="stylesheet" href="/assets/css/main.css"/>
</head>

<body class="is-preload">
<div id="page-wrapper">

    <jsp:include page="headerB.jsp"/>

    <!-- Main -->
    <section id="main" class="container">
        <header>
            <h2>自主设计模板</h2>
            <p>在这里你可以依据您的个人需求对试卷进行设计</p>
        </header>
        <div class="box">
            <span class="image featured"><img src="images/testDesign.jpg" alt="" style="height: 500px"/></span>

            <form>
                <div class="row">

                    <div class="row-12 row-12-mobilep" style="width: 100%">
                        <h3>第一步：试卷基本信息填写</h3>

                        <div>
                            <div style="width: 100%">
                                <b>试卷名称：</b> <textarea name="papername" style="font-size: 30px">&lt学校&gt&lt学校&gt&ltXX考试&gt&ltXX试题&gt</textarea>
                                </br>

                                <b>卷头：</b> <input type="text" name="paperhead" value="班级：____________姓名：____________学号：____________得分：____________"
                                                         style="height: 2em">

                            </div>

                            <div>

                                <div style="width: 30%">

                                </div>
                                <div style="width: 70%">

                                </div>

                            </div>


                        </div>

                    </div>

                    <div class="row-6 row-12-mobilep">
                        <h3>第二步：试卷主体内容选择</h3>

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
<script src="/assets/js/jquery.min.js"></script>
<script src="/assets/js/jquery.dropotron.min.js"></script>
<script src="/assets/js/jquery.scrollex.min.js"></script>
<script src="/assets/js/browser.min.js"></script>
<script src="/assets/js/breakpoints.min.js"></script>
<script src="/assets/js/util.js"></script>
<script src="/assets/js/main.js"></script>

</body>
</html>
