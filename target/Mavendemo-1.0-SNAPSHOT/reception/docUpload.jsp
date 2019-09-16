<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <title>文件上传</title>
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
    <link href="${pageContext.request.contextPath}/reception/css/bootstrap.min.css" rel="stylesheet" type="text/css"
          media="all"/>
    <!-- //bootstrap -->
    <link href="${pageContext.request.contextPath}/reception/css/dashboard.css" rel="stylesheet">
    <!-- Custom Theme files -->
    <link href="${pageContext.request.contextPath}/reception/css/style.css" rel="stylesheet" type="text/css"
          media="all"/>
    <script src="${pageContext.request.contextPath}/reception/js/jquery-1.11.1.min.js"></script>
    <script src="${pageContext.request.contextPath}/reception/js/jquery.min.js"></script>
    <!--start-smoth-scrolling-->
    <!-- fonts -->
    <%--    <link href="http://fonts.useso.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800"--%>
    <%--          rel="stylesheet" type="text/css">--%>
    <%--    <link href="http://fonts.useso.com/css?family=Poiret+One" rel="stylesheet" type="text/css">--%>
    <link href="${pageContext.request.contextPath}/reception/css/upload.css" rel="stylesheet" type="text/css">
    <!-- //fonts -->
</head>
<body>
<nav class="navbar navbar-inverse navbar-fixed-top">
    <div class="container-fluid">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar"
                    aria-expanded="false" aria-controls="navbar"><span class="sr-only">Toggle navigation</span> <span
                    class="icon-bar"></span> <span class="icon-bar"></span> <span class="icon-bar"></span></button>
            <a class="navbar-brand" href="index.jsp">
                <h1><img src="../reception/images/logo.png" alt=""/></h1>
            </a></div>
        <div id="navbar" class="navbar-collapse collapse">
            <div class="top-search">
                <form class="navbar-form navbar-right">
                    <input type="text" class="form-control" placeholder="Search...">
                    <input type="submit" value=" ">
                </form>
            </div>

            <div class="signin"><a href="#small-dialog2" class="play-icon popup-with-zoom-anim">Sign Up</a>
                <!-- pop-up-box -->
                <script type="text/javascript"
                        src="${pageContext.request.contextPath}/reception/js/modernizr.custom.min.js"></script>
                <link href="${pageContext.request.contextPath}/reception/css/popuo-box.css" rel="stylesheet"
                      type="text/css" media="all"/>
                <script src="${pageContext.request.contextPath}/reception/js/jquery.magnific-popup.js"
                        type="text/javascript"></script>
                <!--//pop-up-box -->
                <div id="small-dialog2" class="mfp-hide">
                    <h3>Create Account</h3>
                    <div class="social-sits">
                        <div class="facebook-button"><a href="#">Connect with Facebook</a></div>
                        <div class="chrome-button"><a href="#">Connect with Google</a></div>
                        <div class="button-bottom">
                            <p>Already have an account? <a href="#small-dialog" class="play-icon popup-with-zoom-anim">Login</a>
                            </p>
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
                            <p>Already have an account? <a href="#small-dialog" class="play-icon popup-with-zoom-anim">Login</a>
                            </p>
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
                            <p>Already have an account? <a href="#small-dialog" class="play-icon popup-with-zoom-anim">Login</a>
                            </p>
                        </div>
                    </div>
                    <div class="signup">
                        <form action="upload.html">
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
                        <p>Suspendisse tristique magna ut urna pellentesque, ut egestas velit faucibus. Nullam mattis
                            lectus ullamcorper dui dignissim, sit amet egestas orci ullamcorper.</p>
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
                            <p><a href="#small-dialog6" class="play-icon popup-with-zoom-anim">Mauris vehicula rutrum
                                velit</a></p>
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
                        <p>Suspendisse tristique magna ut urna pellentesque, ut egestas velit faucibus. Nullam mattis
                            lectus ullamcorper dui dignissim, sit amet egestas orci ullamcorper.</p>
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
                            <p>New account? <a href="#small-dialog2" class="play-icon popup-with-zoom-anim">Signup</a>
                            </p>
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
</nav>
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
            <li><a href="MyDoc.jsp" class="song-icon"><span class="glyphicon glyphicon-music"
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
            <div class="copyright">
                <p>Copyright &copy; 2015.Company name All rights reserved.More Templates </p>
            </div>
        </div>
    </div>
</div>
<div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main">
    <div class="main-grids">
        <div class="recommended">
            <div class="recommended-grids english-grid">
                <div class="recommended-info">
                    <div class="heading">
                        <h3>文件上传</h3>
                    </div>
                    <div class="clearfix"></div>
                </div>
                <div align="center">
                    <form action="../docu/adddoc!DocUpload.action" method="post" enctype="multipart/form-data">
                        <table border="1" align="center" style="text-align: center">
                            <tbody>
                            <tr>
                                <th>文件标题</th>
                                <td><input type="text" name="doc.docname" id="docname"></td>
                                <td>*</td>
                            </tr>
                            <tr>
                                <th>选择文件</th>
                                <td><input type="file" name="uploadFile"></td>
                                <td>*</td>
                            </tr>
                            <tr>
                                <th>文件详情</th>
                                <td><textarea id="docdetail" name="doc.docdetail" rows="4" cols="35"
                                              placeholder="请输入文件详情"></textarea></td>
                                <td>*</td>
                            </tr>
                            <tr>
                                <th>下载积分</th>
                                <td><input type="number" id="DowmNum" name="doc.dintegral" placeholder="请输入积分"></td>
                                <td>*</td>
                            </tr>
                            <tr>
                                <th>文件类型</th>
                                <td><select id="docType" name="doc.dtno">
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
                                </select></td>
                                <td>*</td>
                            </tr>
                            <tr>
                                <td colspan="3">
                                    <input type="submit" value="上&nbsp;&nbsp;传">&nbsp;<input type="reset">
                                </td>
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
            <div class="footer-bottom"></div>
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