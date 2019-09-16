<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>文档分享平台</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta name="keywords" content="My Play Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template,
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design"/>
    <script type="application/x-javascript"> addEventListener("load", function () {
        setTimeout(hideURLbar, 0);
    }, false);

    function hideURLbar() {
        window.scrollTo(0, 1);
    } </script>
    <!-- bootstrap -->
    <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css" media="all"/>
    <!-- //bootstrap -->
    <link href="css/dashboard.css" rel="stylesheet">
    <!-- Custom Theme files -->
    <link href="css/style.css" rel="stylesheet" type="text/css" media="all"/>
    <script src="js/jquery-1.11.1.min.js"></script>
    <script src="js/jquery.min.js"></script>
    <script src="js/Login-reception.js"></script>
    <!--start-smoth-scrolling-->
    <!-- fonts -->
    <%--    <link href="http://fonts.useso.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800"--%>
    <%--          rel="stylesheet" type="text/css">--%>
    <%--    <link href="http://fonts.useso.com/css?family=Poiret+One" rel="stylesheet" type="text/css">--%>
    <!-- //fonts -->
</head>
<body>
<nav class="navbar navbar-inverse navbar-fixed-top">
    <div class="container-fluid">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar"
                    aria-expanded="false" aria-controls="navbar"><span class="sr-only">Toggle navigation</span> <span
                    class="icon-bar"></span> <span class="icon-bar"></span> <span class="icon-bar"></span></button>
            <a class="navbar-brand" href="index.html">
                <h1><img src="images/logo.png" alt=""/></h1>
            </a></div>
        <div id="navbar" class="navbar-collapse collapse">
            <div class="top-search">
                <form class="navbar-form navbar-right">
                    <input type="text" class="form-control" placeholder="Search...">
                    <input type="submit" value=" ">
                </form>
            </div>
            <div class="header-top-right">
                <!--
                        <div class="file">
                            <a href="upload.html">Upload</a>
                        </div>
        -->
                <c:if test="${sessionScope.uuname==null}">
                <div class="signin"><a href="#small-dialog3" class="play-icon popup-with-zoom-anim">Sign Up</a>
                    <!-- pop-up-box -->
                    <script type="text/javascript" src="js/modernizr.custom.min.js"></script>
                    <link href="css/popuo-box.css" rel="stylesheet" type="text/css" media="all"/>
                    <script src="js/jquery.magnific-popup.js" type="text/javascript"></script>
                    <!--//pop-up-box -->
                    <div id="small-dialog2" class="mfp-hide">
                        <h3>Create Account</h3>
                        <div class="social-sits"></div>
                        <div class="signup">
                            <form>
                                <input type="text" class="email" placeholder="Mobile Number" maxlength="10"
                                       pattern="[1-9]{1}\d{9}" title="Enter a valid mobile number"/>
                            </form>
                            <div class="continue-button"><a href="#small-dialog3"
                                                            class="hvr-shutter-out-horizontal play-icon popup-with-zoom-anim">CONTINUE</a>
                            </div>
                        </div>
                        <div class="clearfix"></div>
                    </div>
                    <div id="small-dialog3" class="mfp-hide">
                        <h3>Create Account</h3>
                        <div class="signup">
                            <form action="../userL/useradd!UserAdd.action" method="post">
                                <input type="text" name="user.uname" class="email" placeholder="UserName"
                                       required="required"
                                       pattern="([\w-\.]+@([\w-]+\.)+[\w-]{2,4})?" title="Enter a valid Accout"/>

                                <input type="text" name="user.username" class="email" placeholder="UserName"
                                       title="Enter a valid UserName"/>

                                <input type="password" name="user.upwd" placeholder="Password" required="required"
                                       pattern="([a-zA-z]+$)(?!\d+$)(?![!@#$%^&*]+$)[a-zA-Z\d!@#$%^&*]{6,16})?"
                                       title="Minimum 6 characters required" autocomplete="off"/>

                                <input type="password" placeholder="RePassword" required="required" pattern=".{6,}"
                                       title="Minimum 6 characters required" autocomplete="off"/>

                                <label class="btn btn-primary">
                                    <input type="radio" name="user.usex" id="option" value="man">
                                    man </label>

                                <label class="btn btn-primary">
                                    <input type="radio" name="user.usex" id="option1" value="women">
                                    women </label>

                                <select class="form-select" name="user.eduno">
                                    <option value="">请选择学历</option>
                                    <option value="1" selected="">小学</option>
                                    <option value="2">中学</option>
                                    <option value="3">高中</option>
                                    <option value="4">大专</option>
                                    <option value="5">本科</option>
                                    <option value="6">博士</option>
                                    <option value="7">硕士</option>
                                </select>

                                <select class="form-select" name="user.posno">
                                    <option value="">请选择职业</option>
                                    <option value="1" selected="">软件工程师</option>
                                    <option value="2">导游</option>
                                    <option value="3">教师</option>
                                    <option value="4">军人</option>
                                    <option value="5">建筑师</option>
                                    <option value="6">学生</option>
                                    <option value="7">美容师</option>
                                    <option value="8">白领</option>
                                </select>

                                <input type="text" name="user.utel" class="email" placeholder="Mobile Number"
                                       maxlength="10"
                                       pattern="[1-9]{1}\d{9}" title="Enter a valid mobile number"/>

                                <input type="text" name="user.uemail" class="email" placeholder="Email"
                                       required="required"
                                       pattern="([\w-\.]+@([\w-]+\.)+[\w-]{2,4})?" title="Enter a valid email"/>

                                <input type="submit" value="Sign Up"/>

                                <input type="button" class="btn btn-primary btn-large" value="Back"/>
                                <div class="button-bottom">
                                    <p>Already have an account? <a href="#small-dialog"
                                                                   class="play-icon popup-with-zoom-anim">Login</a></p>
                                </div>
                            </form>
                        </div>
                        <div class="clearfix"></div>
                    </div>
                    <div id="small-dialog7" class="mfp-hide">
                        <h3>Create Account</h3>
                        <div class="social-sits">
                            <div class="facebook-button"><a href="#">Connect with Facebook</a></div>
                            <div class="chrome-button"><a href="#">Connect with Google</a></div>
                            <div class="button-bottom">
                                <p>Already have an account? <a href="#small-dialog"
                                                               class="play-icon popup-with-zoom-anim">Login</a></p>
                            </div>
                        </div>
                        <%--                        <div class="signup">--%>
                        <%--                            <form >--%>
                        <%--                                <input type="text" name="user.uname" class="email" placeholder="Email" required="required"--%>
                        <%--                                       pattern="([\w-\.]+@([\w-]+\.)+[\w-]{2,4})?" title="Enter a valid email"/>--%>

                        <%--                                <input type="password" name="user.upwd" placeholder="Password" required="required" pattern=".{6,}"--%>
                        <%--                                       title="Minimum 6 characters required" autocomplete="off"/>--%>

                        <%--                                <input type="submit" id="sub_btn" value="Sign In"/>--%>
                        <%--                            </form>--%>
                        <%--                        </div>--%>
                        <div class="clearfix"></div>
                    </div>
                    <div id="small-dialog4" class="mfp-hide">
                        <h3>Feedback</h3>
                        <div class="feedback-grids">
                            <div class="feedback-grid">
                                <p>Suspendisse tristique magna ut urna pellentesque, ut egestas velit faucibus. Nullam
                                    mattis lectus ullamcorper dui dignissim, sit amet egestas orci ullamcorper.</p>
                            </div>
                            <div class="button-bottom">
                                <p><a href="#small-dialog" class="play-icon popup-with-zoom-anim">Sign in</a> to get
                                    started.</p>
                            </div>
                        </div>
                    </div>
                    <div id="small-dialog5" class="mfp-hide">
                        <h3>Help</h3>
                        <div class="help-grid">
                            <p>Suspendisse tristique magna ut urna pellentesque, ut egestas velit faucibus. Nullam
                                mattis lectus ullamcorper dui dignissim, sit amet egestas orci ullamcorper.</p>
                        </div>
                        <div class="help-grids">
                            <div class="help-button-bottom">
                                <p><a href="#small-dialog4" class="play-icon popup-with-zoom-anim">Feedback</a></p>
                            </div>
                            <div class="help-button-bottom">
                                <p><a href="#small-dialog6" class="play-icon popup-with-zoom-anim">Lorem ipsum dolor sit
                                    amet</a></p>
                            </div>
                            <div class="help-button-bottom">
                                <p><a href="#small-dialog6" class="play-icon popup-with-zoom-anim">Nunc vitae rutrum
                                    enim</a></p>
                            </div>
                            <div class="help-button-bottom">
                                <p><a href="#small-dialog6" class="play-icon popup-with-zoom-anim">Mauris at volutpat
                                    leo</a></p>
                            </div>
                            <div class="help-button-bottom">
                                <p><a href="#small-dialog6" class="play-icon popup-with-zoom-anim">Mauris vehicula
                                    rutrum velit</a></p>
                            </div>
                            <div class="help-button-bottom">
                                <p><a href="#small-dialog6" class="play-icon popup-with-zoom-anim">Aliquam eget ante non
                                    orci fac</a></p>
                            </div>
                        </div>
                    </div>
                    <div id="small-dialog6" class="mfp-hide">
                        <div class="video-information-text">
                            <h4>Video information & settings</h4>
                            <p>Suspendisse tristique magna ut urna pellentesque, ut egestas velit faucibus. Nullam
                                mattis lectus ullamcorper dui dignissim, sit amet egestas orci ullamcorper.</p>
                            <ol>
                                <li>Nunc vitae rutrum enim. Mauris at volutpat leo. Vivamus dapibus mi ut elit fermentum
                                    tincidunt.
                                </li>
                                <li>Nunc vitae rutrum enim. Mauris at volutpat leo. Vivamus dapibus mi ut elit fermentum
                                    tincidunt.
                                </li>
                                <li>Nunc vitae rutrum enim. Mauris at volutpat leo. Vivamus dapibus mi ut elit fermentum
                                    tincidunt.
                                </li>
                                <li>Nunc vitae rutrum enim. Mauris at volutpat leo. Vivamus dapibus mi ut elit fermentum
                                    tincidunt.
                                </li>
                                <li>Nunc vitae rutrum enim. Mauris at volutpat leo. Vivamus dapibus mi ut elit fermentum
                                    tincidunt.
                                </li>
                            </ol>
                        </div>
                    </div>
                    <script>




                        //页面加载
                        $(document).ready(function () {


                            $('.popup-with-zoom-anim').magnificPopup({
                                type: 'inline',
                                fixedContentPos: false,
                                fixedBgPos: true,
                                overflowY: 'auto',
                                closeBtnInside: true,
                                preloader: false,
                                midClick: true,
                                removalDelay: 300,
                                mainClass: 'my-mfp-zoom-in'
                            });


                            //点击图片更换验证码
                            $("#Verify").click(function () {
                                $(this).attr("src", "${pageContext.request.contextPath}/Security/SecurityCodeImageAction?timestamp=" + new Date().getTime());
                            });

                            $("#log_btn").click(function () {

                                $.ajax({
                                    async: true,
                                    url: "../userL/ulogin.action",
                                    type: "POST",
                                    dataType: "json",
                                    data: $("#loginform").serialize(),
                                    success: function (redata) {
                                            alert(redata.info)
                                        if ("success" == redata.info) {
                                            alert("登录成功");
                                            window.location.href = "${pageContext.request.contextPath}/reception/index.jsp";
                                        } else if ("fail" == redata.info) {
                                            alert("登陆失败");

                                        } else if ("codefail" == redata.info) {
                                            alert("验证码错误");

                                        } else {
                                            alert("账号无效，请先联系传一管理员");

                                        }

                                    },
                                    error: function () {
                                        alert("服务器崩溃，请求失败");
                                    }

                                });
                            });

                        });
                    </script>
                </div>
                <div class="signin"><a href="#small-dialog" class="play-icon popup-with-zoom-anim">Sign In</a>
                    <div id="small-dialog" class="mfp-hide">
                        <h3>Login</h3>
                        <div class="signup">
                            <form id="loginform" method="post">
                                <input type="text" name="user.uname" id="ulogname" class="email" placeholder="Enter username"
                                       required="required"/>
                                <input type="password" name="user.upwd" id="ulogpwd" placeholder="Password" required="required"
                                       pattern=".{6,}"
                                       title="Minimum 6 characters required" autocomplete="off"/>
                                <input type="text" name="securityCode" onclick="return code()" placeholder="验证码" autocomplete="off">
                                <img src="../Security/SecurityCodeImageAction" id="Verify" style="cursor:hand;"
                                     alt="看不清，换一张" width="116"
                                     height="36"><br>
                                <input type="button" id="log_btn" value="LOGIN" style="width: 120px;height: 35px;"/>
                            </form>
                            <div class="button-bottom">
                                <p>New account? <a href="#small-dialog2"
                                                   class="play-icon popup-with-zoom-anim">Signup</a></p>
                            </div>
                            <div class="forgot"><a href="#">Forgot password ?</a></div>
                        </div>
                        <div class="clearfix"></div>
                    </div>
                </div>
                </c:if>
                <c:if test="${sessionScope.uuname!=null}">
                    <div><label>${sessionScope.uuname.uname}</label></div>
                </c:if>
                <div class="clearfix"></div>
            </div>
        </div>
        <div class="clearfix"></div>
    </div>
</nav>
<div class="copyrights">Collect from <a href="http://www.cssmoban.com/">企业网站模板</a></div>
<div class="col-sm-3 col-md-2 sidebar">
    <div class="top-navigation">
        <div class="t-menu">MENU</div>
        <div class="t-img"><img src="images/lines.png" alt=""/></div>
        <div class="clearfix"></div>
    </div>
    <div class="drop-navigation drop-navigation">
        <ul class="nav nav-sidebar">
            <li class="active"><a href="index.jsp" class="home-icon"><span class="glyphicon glyphicon-home"
                                                                           aria-hidden="true"></span>主页</a></li>
            <!--
                  <li><a href="shows.html" class="user-icon"><span class="glyphicon glyphicon-home glyphicon-blackboard" aria-hidden="true"></span>文件上传</a></li>
                  <li><a href="history.html" class="sub-icon"><span class="glyphicon glyphicon-home glyphicon-hourglass" aria-hidden="true"></span>文件下载</a></li>
            -->
            <li><a href="#" class="menu1"><span class="glyphicon glyphicon-film" aria-hidden="true"></span>我的账户<span
                    class="glyphicon glyphicon-menu-down" aria-hidden="true"></span></a></li>
            <ul class="cl-effect-2">
                <li><a href="BaseData.jsp">基本资料</a></li>
                <li><a href="MyIntegral.jsp">我的积分</a></li>
            </ul>
            <!-- script-for-menu -->
            <script>
                $("li a.menu1").click(function () {
                    $("ul.cl-effect-2").slideToggle(300, function () {
                        // Animation complete.
                    });
                });
            </script>
            <li><a href="#" class="menu"><span class="glyphicon glyphicon-film glyphicon-king"
                                               aria-hidden="true"></span>文档操作<span class="glyphicon glyphicon-menu-down"
                                                                                   aria-hidden="true"></span></a></li>
            <ul class="cl-effect-1">
                <li><a href="docUpload.jsp">文件上传</a></li>
                <li><a href="docDownload.jsp">文件下载</a></li>
            </ul>
            <!-- script-for-menu -->
            <script>
                $("li a.menu").click(function () {
                    $("ul.cl-effect-1").slideToggle(300, function () {
                        // Animation complete.
                    });
                });
            </script>
            <li><a href="../docu/docuM!findDoc.action" class="song-icon"><span class="glyphicon glyphicon-music"
                                                                               aria-hidden="true"></span>我的文档</a>
            </li>

        </ul>
        <!-- script-for-menu -->
        <script>
            $(".top-navigation").click(function () {
                $(".drop-navigation").slideToggle(300, function () {
                    // Animation complete.
                });
            });
        </script>
        <div class="side-bottom">
            <div class="copyright">
                <p>Copyright &copy; 2019.Company name All rights reserved.More Templates </p>
            </div>
        </div>
    </div>
</div>
<div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main">
    <div class="main-grids">
        <div class="recommended">
            <div class="recommended-grids english-grid">
                <%--                <div class="recommended-info">--%>
                <%--                    <div class="heading">--%>
                <%--                        <h3></h3>--%>
                <%--                    </div>--%>
                <%--                    <div class="clearfix"></div>--%>
                <%--                </div>--%>
                <div align="center">
                    <form action="../docu/adddoc!DocUpload.action" method="post" enctype="multipart/form-data">
                        <table border="1" align="center" style="text-align: center">
                            <tbody>
                            <tr>
                                <img src="images/welcome.jpg">
                            </tr>
                            </tbody>
                        </table>
                    </form>
                </div>
                <div class="clearfix"></div>
            </div>
        </div>
    </div>
    <!-- footer -->
    <div class="footer">
        <div class="footer-grids">
            <div class="footer-top">
                <div class="footer-top-nav">
                    <ul>
                        <li><a href="#">About</a></li>
                        <li><a href="#">Press</a></li>
                        <li><a href="#">Copyright</a></li>
                        <li><a href="#">Creators</a></li>
                        <li><a href="#">Advertise</a></li>
                        <li><a href="#">Developers</a></li>
                    </ul>
                </div>
                <div class="footer-bottom-nav">
                    <ul>
                        <li><a href="#">Terms</a></li>
                        <li><a href="#">Privacy</a></li>
                        <li><a href="#small-dialog4" class="play-icon popup-with-zoom-anim">Send feedback</a></li>
                        <li><a href="#">Policy & Safety </a></li>
                        <li><a href="#">Try something new!</a></li>
                    </ul>
                </div>
            </div>

        </div>
    </div>
    <!-- //footer -->
</div>
<div class="clearfix"></div>
<div class="drop-menu">
    <ul class="dropdown-menu" role="menu" aria-labelledby="dropdownMenu4">
        <li role="presentation"><a role="menuitem" tabindex="-1" href="#">Regular link</a></li>
        <li role="presentation" class="disabled"><a role="menuitem" tabindex="-1" href="#">Disabled link</a></li>
        <li role="presentation"><a role="menuitem" tabindex="-1" href="#">Another link</a></li>
    </ul>
</div>
<!-- Bootstrap core JavaScript
    ================================================== -->
<!-- Placed at the end of the document so the pages load faster -->
<script src="js/bootstrap.min.js"></script>
<!-- Just to make our placeholder images work. Don't actually copy the next line! -->
</body>
</html>
