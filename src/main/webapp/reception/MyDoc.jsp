<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>文件列表</title>
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
    <link href="../reception/css/bootstrap.min.css" rel="stylesheet" type="text/css" media="all"/>
    <!-- //bootstrap -->
    <link href="../reception/css/dashboard.css" rel="stylesheet">
    <!-- Custom Theme files -->
    <link href="../reception/css/style.css" rel="stylesheet" type="text/css" media="all"/>
    <script src="../reception/js/jquery-1.11.1.min.js"></script>
    <script src="../reception/js/jquery.min.js"></script>
    <!--start-smoth-scrolling-->

</head>
<body>
<nav class="navbar navbar-inverse navbar-fixed-top">
    <div class="container-fluid">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar"
                    aria-expanded="false" aria-controls="navbar"><span class="sr-only">Toggle navigation</span> <span
                    class="icon-bar"></span> <span class="icon-bar"></span> <span class="icon-bar"></span></button>
            <a class="navbar-brand" href="index.html">
                <h1><img src="../reception/images/logo.png" alt=""/></h1>
            </a></div>
        <div id="navbar" class="navbar-collapse collapse">
            <div class="top-search">
                <form class="navbar-form navbar-right">
                    <input type="text" class="form-control" placeholder="Search...">
                    <input type="submit" value=" ">
                </form>
            </div>
            <div class="header-top-right">
                <div class="signin"><a href="#small-dialog2" class="play-icon popup-with-zoom-anim">Sign Up</a>
                    <!-- pop-up-box -->
                    <script type="text/javascript" src="../reception/js/modernizr.custom.min.js"></script>
                    <link href="../reception/css/popuo-box.css" rel="stylesheet" type="text/css" media="all"/>
                    <script src="../reception/js/jquery.magnific-popup.js" type="text/javascript"></script>
                    <!--//pop-up-box -->
                    <div id="small-dialog2" class="mfp-hide">
                        <h3>Create Account</h3>
                        <div class="social-sits">
                            <div class="facebook-button"><a href="#">Connect with Facebook</a></div>
                            <div class="chrome-button"><a href="#">Connect with Google</a></div>
                            <div class="button-bottom">
                                <p>Already have an account? <a href="#small-dialog"
                                                               class="play-icon popup-with-zoom-anim">Login</a></p>
                            </div>
                        </div>
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
                        <div class="social-sits">
                            <div class="facebook-button"><a href="#">Connect with Facebook</a></div>
                            <div class="chrome-button"><a href="#">Connect with Google</a></div>
                            <div class="button-bottom">
                                <p>Already have an account? <a href="#small-dialog"
                                                               class="play-icon popup-with-zoom-anim">Login</a></p>
                            </div>
                        </div>
                        <div class="signup">
                            <form>
                                <input type="text" class="email" placeholder="Email" required="required"
                                       pattern="([\w-\.]+@([\w-]+\.)+[\w-]{2,4})?" title="Enter a valid email"/>
                                <input type="password" placeholder="Password" required="required" pattern=".{6,}"
                                       title="Minimum 6 characters required" autocomplete="off"/>
                                <input type="text" class="email" placeholder="Mobile Number" maxlength="10"
                                       pattern="[1-9]{1}\d{9}" title="Enter a valid mobile number"/>
                                <input type="submit" value="Sign Up"/>
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
                        <div class="signup">
                            <form action="#">
                                <input type="text" class="email" placeholder="Email" required="required"
                                       pattern="([\w-\.]+@([\w-]+\.)+[\w-]{2,4})?" title="Enter a valid email"/>
                                <input type="password" placeholder="Password" required="required" pattern=".{6,}"
                                       title="Minimum 6 characters required" autocomplete="off"/>
                                <input type="submit" value="Sign In"/>
                            </form>
                        </div>
                        <div class="clearfix"></div>
                    </div>
                    <div id="small-dialog8" class="mfp-hide">
                        <h3>Subscribe to our newsletters</h3>
                        <div class="signup subscribe-grid">
                            <form>
                                <input type="text" class="email" placeholder="Email" required="required"
                                       pattern="([\w-\.]+@([\w-]+\.)+[\w-]{2,4})?" title="Enter a valid email"/>
                                <input type="submit" value="Subscribe"/>
                            </form>
                        </div>
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

                        });
                    </script>
                </div>
                <div class="signin"><a href="#small-dialog" class="play-icon popup-with-zoom-anim">Sign In</a>
                    <div id="small-dialog" class="mfp-hide">
                        <h3>Login</h3>
                        <div class="social-sits">
                            <div class="facebook-button"><a href="#">Connect with Facebook</a></div>
                            <div class="chrome-button"><a href="#">Connect with Google</a></div>
                            <div class="button-bottom">
                                <p>New account? <a href="#small-dialog2"
                                                   class="play-icon popup-with-zoom-anim">Signup</a></p>
                            </div>
                        </div>
                        <div class="signup">
                            <form>
                                <input type="text" class="email" placeholder="Enter email / mobile" required="required"
                                       pattern="([\w-\.]+@([\w-]+\.)+[\w-]{2,4})?"/>
                                <input type="password" placeholder="Password" required="required" pattern=".{6,}"
                                       title="Minimum 6 characters required" autocomplete="off"/>
                                <input type="submit" value="LOGIN"/>
                            </form>
                            <div class="forgot"><a href="#">Forgot password ?</a></div>
                        </div>
                        <div class="clearfix"></div>
                    </div>
                </div>
                <div class="clearfix"></div>
            </div>
        </div>
        <div class="clearfix"></div>
    </div>
</nav>
<div class="col-sm-3 col-md-2 sidebar">
    <div class="top-navigation">
        <div class="t-menu">MENU</div>
        <div class="t-img"><img src="../reception/images/lines.png" alt=""/></div>
        <div class="clearfix"></div>
    </div>
    <div class="drop-navigation drop-navigation">
        <ul class="nav nav-sidebar">
            <li class="active"><a href="../reception/index.jsp" class="home-icon"><span class="glyphicon glyphicon-home"
                                                                           aria-hidden="true"></span>主页</a></li>
            <!--
            <li><a href="shows.html" class="user-icon"><span class="glyphicon glyphicon-home glyphicon-blackboard" aria-hidden="true"></span>文件上传</a></li>
            <li><a href="history.html" class="sub-icon"><span class="glyphicon glyphicon-home glyphicon-hourglass" aria-hidden="true"></span>文件下载</a></li>
      -->
            <li><a href="#" class="menu1"><span class="glyphicon glyphicon-film" aria-hidden="true"></span>我的账户<span
                    class="glyphicon glyphicon-menu-down" aria-hidden="true"></span></a></li>
            <ul class="cl-effect-2">
                <li><a href="../reception/BaseData.jsp">基本资料</a></li>
                <li><a href="../reception/MyIntegral.jsp">我的积分</a></li>
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
                <li><a href="../reception/docUpload.jsp">文件上传</a></li>
                <li><a href="../reception/docDownload.jsp">文件下载</a></li>
            </ul>
            <!-- script-for-menu -->
            <script>
                $("li a.menu").click(function () {
                    $("ul.cl-effect-1").slideToggle(300, function () {
                        // Animation complete.
                    });
                });
            </script>
            <li><a href="../reception/MyDoc.jsp" class="song-icon"><span class="glyphicon glyphicon-music"
                                                            aria-hidden="true"></span>我的文档</a></li>
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
            <div class="side-bottom-icons"></div>
            <div class="copyright">
                <p>Copyright &copy; 2019.Company name All rights reserved.More Templates </p>
            </div>
        </div>
    </div>
</div>
<div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main">
    <div class="show-top-grids">
        <div class="col-sm-10 show-grid-left main-grids">
            <div class="recommended">
                <div class="recommended-grids english-grid">
                    <div class="recommended-info">
                        <div class="heading">
                            <h3>--我的文档列表查询</h3>
                        </div>
                        <div class="clearfix"></div>
                    </div>
                    <div align="center">
                        <form>
                            <table class="table table-hover" style="text-align: center">
                                <thead>
                                <tr>
                                    <td colspan="3"><label style="margin-right: 10px; ">上传时间：</label>
                                        <input type="date" style="height: 25px; width: 150px;">
                                        <label style="margin-left: 10px;margin-right: 10px">至</label>
                                        <input type="date" style="height: 25px;width: 150px;"></td>
                                    <td colspan="2"><input type="button" value="查询" style="width: 100px;"></td>
                                </tr>
                                <tr>
                                    <td colspan="3"><label style="margin-right: 10px; ">文档类型</label>
                                        <select style="height: 20px;width: 120px;">
                                            <option value="0">---请选择---</option>
                                            <option value="1" selected="">doc/docx</option>
                                            <option value="2">xls/xlsx</option>
                                            <option value="3">ppt/pptx</option>
                                            <option value="4">jpg</option>
                                            <option value="5">txt</option>
                                            <option value="6">png</option>
                                            <option value="7">war</option>
                                            <option value="8">zip</option>
                                            <option value="9">7z</option>
                                            <option value="10">java</option>
                                            <option value="11">class</option>
                                        </select>
                                        <label style="margin-left: 10px;margin-right: 10px">审核状态</label>
                                        <select style="height: 20px;width: 120px;">
                                            <option value="0">---请选择---</option>
                                            <option value="1">待审额</option>
                                            <option value="2">审核通过</option>
                                            <option value="3">审核不通过</option>
                                        </select></td>
                                </tr>
                                <tr style="font-weight:bold;">
                                    <td>文档标题</td>
                                    <td>上传时间</td>
                                    <td>下载积分</td>
                                    <td>文档类型</td>
                                    <td>审核状态</td>
                                </tr>
                                </thead>
                                <tbody>
                                <c:forEach items="${ddlist}" var="u" varStatus="s">
                                    <tr>

                                        <td>${u.docname}</td>
                                        <td>${u.docdate}</td>
                                        <td>${u.dintegral}</td>
                                        <td>ppt</td>
                                        <td>待审核</td>

                                    </tr>
                                </c:forEach>
                                </tbody>
                            </table>
                            <div align="center">
                                <label>上一页</label>
                                <label>下一页</label>
                            </div>
                        </form>
                    </div>
                    <div class="clearfix"></div>
                </div>
            </div>
        </div>
        <div class="clearfix"></div>
    </div>
    <!-- footer -->
    <div class="footer">
        <div class="footer-grids">
            <div class="footer-top">
                <div class="footer-top-nav">
                    <ul>
                        <li><a href="about.html">About</a></li>
                        <li><a href="press.html">Press</a></li>
                        <li><a href="copyright.html">Copyright</a></li>
                        <li><a href="creators.html">Creators</a></li>
                        <li><a href="#">Advertise</a></li>
                        <li><a href="developers.html">Developers</a></li>
                    </ul>
                </div>
                <div class="footer-bottom-nav">
                    <ul>
                        <li><a href="terms.html">Terms</a></li>
                        <li><a href="privacy.html">Privacy</a></li>
                        <li><a href="#small-dialog4" class="play-icon popup-with-zoom-anim">Send feedback</a></li>
                        <li><a href="privacy.html">Policy & Safety </a></li>
                        <li><a href="try.html">Try something new!</a></li>
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
<script src="${pageContext.request.contextPath}/reception/js/bootstrap.min.js"></script>
<!-- Just to make our placeholder images work. Don't actually copy the next line! -->
</body>
</html>
