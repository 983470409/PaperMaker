<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Paper Star</title>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
    <link rel="stylesheet" href="assets/css/login.css" />
    <noscript><link rel="stylesheet" href="assets/css/noscript.css" /></noscript>
</head>
<body class="is-preload">

<!-- Wrapper -->
<div id="wrapper">

    <!-- Main -->
    <section id="main">
        <header>
            <span class="avatar"><a href="index.jsp"> <img src="images/avatar.jpg" alt="" /></a></span>
            <h1>登 录</h1>
        </header>


        <hr />
        <form method="post" action="#">
            <div class="fields">
                <div class="field">
                    <input type="text" name="account" id="account" placeholder="Account" />
                </div>
                <div class="field">
                    <input type="password" name="password" id="password" placeholder="Password" />
                </div>
                <!--
                <div class="field">
                    <select name="department" id="department">
                        <option value="">Department</option>
                        <option value="sales">Sales</option>
                        <option value="tech">Tech Support</option>
                        <option value="null">/dev/null</option>
                    </select>
                </div>
                <div class="field">
                    <textarea name="message" id="message" placeholder="Message" rows="4"></textarea>
                </div>
                <div class="field">
                    <input type="checkbox" id="human" name="human" /><label for="human">I'm a human</label>
                </div>
                <div class="field">
                    <label>But are you a robot?</label>
                    <input type="radio" id="robot_yes" name="robot" /><label for="robot_yes">Yes</label>
                    <input type="radio" id="robot_no" name="robot" /><label for="robot_no">No</label>
                </div>
                -->
            </div>

            <ul class="actions special">
                <li><a href="#" class="button">登 录</a></li>
            </ul>
        </form>
        <hr />

        <!--
        <footer>
            <ul class="icons">
                <li><a href="#" class="fa-twitter">Twitter</a></li>
                <li><a href="#" class="fa-instagram">Instagram</a></li>
                <li><a href="#" class="fa-facebook">Facebook</a></li>
            </ul>
        </footer>
        -->
    </section>

    <!-- Footer -->
    <footer id="footer">
        <ul class="copyright">
            <li>Design By 长沙学院：张豫湘 </li>
        </ul>
    </footer>

</div>

<!-- Scripts -->
<script>
    if ('addEventListener' in window) {
        window.addEventListener('load', function() { document.body.className = document.body.className.replace(/\bis-preload\b/, ''); });
        document.body.className += (navigator.userAgent.match(/(MSIE|rv:11\.0)/) ? ' is-ie' : '');
    }
</script>

</body>
</html>
