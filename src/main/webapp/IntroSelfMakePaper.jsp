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
                        <h3 style="font-weight: bold ">试卷基本信息填写  &nbsp;: </h3>

                        <div style="margin-left: 25px">
                            <div style="width: 100%">
                                <b>试卷标题：</b> <textarea name="papername" style="font-size: 30px">&lt学校&gt&lt学校&gt&ltXX考试&gt&ltXX试题&gt</textarea>
                                </br>

                                <b>卷头：</b> <input type="text" name="paperheader" value="班级：____________姓名：____________学号：____________得分：____________"
                                                         style="height: 2em;margin-bottom: 10px">

                            </div>

                            <div>

                                <div style="width: 30%">
                                    <b>页眉：</b> <input type="text" name="pageheader" value="<学校><学期><XX考试>"
                                                      style="height: 2em;margin-bottom: 10px">

                                    <b>页脚：</b> <input type="text" name="pageheader" value="<XX试题>"
                                                      style="height: 2em;margin-bottom: 10px">
                                </div>
                                <div style="width: 70%">
                                    <b>试卷说明：</b> <textarea name="paperIntro" style="font-size: 17px">注意事项：
                                    1.全卷共XX分，考试时间XX分钟。
                                    2.考生必须将报考学校、姓名、准考证号、考场、座位号等个人信息填(涂)写在答题卡 的相应位置上。
                                    3.考生务必将答案直接填(涂)写在答题卡的相应位置上。</textarea>
                                </div>
                                </br></br>
                            </div>


                        </div>

                    </div>


                    <div class="row-6 row-12-mobilep">
                        <ul class="actions special" style="margin-left: 252px">
                            <li><a href="paperResource/selfMakePaper.jsp" class="button special">开始制作</a></li>
                        </ul>

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
