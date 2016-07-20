<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en" >

    <head>

        <meta charset="utf-8">
        <title>用户登录</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="description" content="">
        <meta name="author" content="">
        <!-- 网站图标 -->
        <link rel="shortcut icon" href="img/favicon.ico" type="image/x-icon"/>

        <!-- CSS -->
        
        <link rel="stylesheet" href="assets/css/reset.css">
        <link rel="stylesheet" href="assets/css/supersized.css">
        <link rel="stylesheet" href="assets/css/style.css">
        <link rel="stylesheet" href="css/login.css" />

        <!-- HTML5 shim, for IE6-8 support of HTML5 elements -->
        <!--[if lt IE 9]>
            <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
        <![endif]-->

    </head>

    <body>

        <div class="page-container">
            <h1>Login</h1>
            <form action="user?oper=login" method="post">
                <input id="username" type="text" name="username" class="username" placeholder="Username" autocomplete="off" autofocus="autofocus">
                <input id="password" type="password" name="password" class="password" placeholder="Password" autocomplete="off">
                <button id="btn-login" type="button">Sign me in</button>
                <div class="error"><span>+</span></div>
                <div id="waiting">
					<span ></span>
				</div>
            </form>
            <div class="connect">
                <p>Or connect with:</p>
                <p>
                    <a class="facebook" href=""></a>
                    <a class="twitter" href=""></a>
                </p>
            </div>

        </div>
<!--         <div align="center">Collect from <a href="http://www.cssmoban.com/" target="_blank" title="模板之家">模板之家</a></div> -->

        <!-- Javascript -->
        <script src="assets/js/jquery-1.8.2.min.js"></script>
        <script src="assets/js/supersized.3.2.7.min.js"></script>
        <script src="assets/js/supersized-init.js"></script>
        <script src="assets/js/scripts.js"></script>
        <script src="js/login.js"></script>

    </body>

</html>