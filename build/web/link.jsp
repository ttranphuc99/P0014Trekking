<%-- 
    Document   : link
    Created on : Sep 26, 2019, 8:36:48 PM
    Author     : Thien Phuc
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!-- saved from url=(0044)http://us-123hiking.simplesite.com/411163294 -->
<html lang="en-US" class=""><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Trekking Links - us-123hiking.simplesite.com</title>
        <meta property="og:site_name" content="Trekking and Hiking">
        <meta property="article:publisher" content="https://www.facebook.com/simplesite">
        <meta property="og:locale" content="en-US">
        <meta property="og:url" content="http://us-123hiking.simplesite.com/411163294">
        <meta property="og:title" content="Trekking Links">
        <meta property="og:description" content="Adventure travel - Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad mini">
        <meta property="og:updated_time" content="2016-06-18T11:14:36.1626311+02:00">
        <meta property="og:type" content="website">
        <meta name="robots" content="nofollow">

        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="description" content="Trekking and Hiking - http://us-123hiking.simplesite.com/">
        <link rel="stylesheet" type="text/css" href="./resource/link/8488947.design.v26374.css">
        <link rel="canonical" href="http://us-123hiking.simplesite.com/411163294">
        <link rel="shortcut icon" href="data:image/x-icon;,">
        <script type="text/javascript" async="" src="./resource/link/analytics.js"></script><script async="" src="./resource/link/gtm.js"></script><script type="text/javascript" src="./resource/link/FrontendAppLocalePage.aspx"></script>
        <script type="text/javascript" src="./resource/link/frontendApp.min.js"></script>
        <script type="text/javascript">if (typeof window.jQuery == "undefined") {
                (function () {
                    var a = document.createElement("script");
                    a.type = "text/javascript";
                    a.src = "/c/js/version3/frontendApp/init/frontendApp.min.js?_v=b8e7069b6e4fecc37c8394dc153e5d4f";
                    document.getElementsByTagName('head')[0].appendChild(a);
                })();
            }</script>

        <script type="text/javascript">var css_simplesite_com_fallback_element = document.getElementById('css_simplesite_com_fallback');
            if (typeof css_simplesite_com_fallback_element !== 'undefined' && css_simplesite_com_fallback_element !== null) {
                var isVisible = css_simplesite_com_fallback_element.offsetParent !== null
                if (isVisible) {
                    var head = document.head, link = document.createElement('link');

                    link.type = 'text/css';
                    link.rel = 'stylesheet';
                    link.href = '{/d/designs/8488947.design.v26374.css}';

                    head.appendChild(link);
                }
            }</script>
        <style type="text/css">.fancybox-margin{margin-right:17px;}</style></head>
    <body data-pid="411163294" data-iid="">


        <div class="container-fluid site-wrapper"> <!-- this is the Sheet -->
            <div class="container-fluid header-wrapper " id="header"> <!-- this is the Header Wrapper -->
                <div class="container">
                    <div class="title-wrapper">
                        <div class="title-wrapper-inner">
                            <a rel="nofollow" class="logo " href="/P0014Treking/">

                            </a>
                            <div class="title ">
                                Trekking and Hiking
                            </div>
                            <div class="subtitle">
                                Welcome to our website
                            </div>
                        </div>
                    </div>  <!-- these are the titles -->
                    <div class="navbar navbar-compact">
                        <div class="navbar-inner">
                            <div class="container">
                                <!-- .btn-navbar is used as the toggle for collapsed navbar content -->
                                <a rel="nofollow" class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse" title="Toggle menu">
                                    <span class="menu-name">Menu</span>
                                    <span class="menu-bars">
                                        <span class="icon-bar"></span>
                                        <span class="icon-bar"></span>
                                        <span class="icon-bar"></span>
                                    </span>
                                </a>



                                <!-- Everything you want hidden at 940px or less, place within here -->
                                <div class="nav-collapse collapse">
                                    <ul class="nav" id="topMenu" data-submenu="horizontal">
                                        <li class="  " style="">
                                            <a rel="nofollow" href="/P0014Treking/">Front page</a>
                                        </li><li class="  " style="">
                                            <a rel="nofollow" href="/P0014Treking/DairyController">Our Diary</a>
                                        </li><li class="  " style="">
                                            <a rel="nofollow" href="/P0014Treking/ImageController">Photoalbum</a>
                                        </li><li class=" active " style="">
                                            <a rel="nofollow" href="/P0014Treking/LinkController">Trekking Links</a>
                                        </li>                
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- this is the Menu content -->
                </div>
            </div>  <!-- this is the Header content -->

            <div class="container-fluid content-wrapper" id="content"> <!-- this is the Content Wrapper -->
                <div class="container">
                    <div class="row-fluid content-inner">
                        <div id="left" class="span9"> <!-- ADD "span12" if no sidebar, or "span9" with sidebar -->
                            <div class="wrapper list list-links">
                                <div class="heading">
                                    <h1 class="page-title">Trekking Links</h1>
                                </div>
                                <c:if test="${not empty requestScope.LIST}">
                                    <c:forEach items="${requestScope.LIST}" var="link">
                                        <div class="content">
                                            <div class="section">
                                                <div class="content">
                                                    <div class="span12">
                                                        <div class="item">
                                                            <div class="heading">
                                                                <h4>
                                                                    <a rel="nofollow" target="_blank" href="${link.link}">
                                                                        ${link.title}
                                                                    </a>
                                                                </h4>
                                                            </div>
                                                            <div class="content">
                                                                <p>${link.description}</p>                    
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>                                    
                                        </div>
                                    </c:forEach>
                                </c:if>
                                <c:if test="${empty requestScope.LIST}">
                                    <font color="red">Empty list trekking link</font>
                                </c:if>
                            </div>
                        </div>
                        <div id="right" class="span3">
                            <div class="sidebar">
                                <div class="wrapper share-box">
                                    <div class="heading">
                                        <h4>Share this page</h4>
                                    </div>

                                    <div class="content"><span><ul>
                                                <li><a id="share-facebook" href="http://us-123hiking.simplesite.com/411163294#"><i class="icon-facebook-sign"></i><span>Share on Facebook</span></a></li>
                                                <li><a id="share-twitter" href="http://us-123hiking.simplesite.com/411163294#"><i class="icon-twitter-sign"></i><span>Share on Twitter</span></a></li>
                                                <li><a id="share-google-plus" href="http://us-123hiking.simplesite.com/411163294#"><i class="icon-google-plus-sign"></i><span>Share on Google+</span></a></li>    
                                            </ul></span></div>
                                </div>
                            </div>
                        </div>
                    </div>        
                </div>
            </div>  <!-- the controller has determined which view to be shown in the content -->

            <div class="container-fluid footer-wrapper" id="footer"> <!-- this is the Footer Wrapper -->
                <div class="container">
                    <div class="footer-info">
                        <div class="footer-powered-by">
                            <a rel="nofollow" href="http://www.simplesite.com/">Created with SimpleSite</a>
                        </div>
                    </div>
                    <div class="footer-page-counter" style="display: block;">
                        <span class="footer-page-counter-item">0</span>

                        <span class="footer-page-counter-item">3</span>

                        <span class="footer-page-counter-item">4</span>

                        <span class="footer-page-counter-item">6</span>

                        <span class="footer-page-counter-item">8</span>

                        <span class="footer-page-counter-item">1</span>
                    </div>
                    <div id="css_simplesite_com_fallback" class="hide"></div>
                </div>
            </div>  <!-- this is the Footer content -->
        </div>


        <input type="hidden" id="anti-forgery-token" value="vFZIp11QDd7w1cZjYdzwVVw3rTHgQi1lpMMqomvLq/qGfx85dADIn6rd+jb5+yvdIjnIKNejlFu6vxL7J8Np5XDrvUyMasUYb8PZlmgROpWgWhFTGjCoyYPRNAZ57HUVr4c6QnvYhoYJLJG8dWLP2NhmdVJF+RhKEwkT1Q7ogGGTSddnANm69E10QsexY3DV5L0XqDr1VHHaGc7ZSxM2ktc82EJ4KYkwEXssuv2a0gNK9Zc8XKu5Ft28qiKVqNsj3YTpteTqb5UM9+U6Dtk4R+nJWQ1rw7NgjMDh9hCABmCHxgiQJBhPooojs3CleKjorvDjhc1vLhNfhEdOaEJSAXy1zHip7yoxj/Ybn86swSis7wnW/YTVdMos5ci15FQjhUs5V4GfMgBcFA1ZpZbI3SeJPCR5qKnGylVi5h118GRlumMmtv1ML5sKZp7s/F4Avl702xnJjFCwEPeL1nG2EQ==">


        <script>
            dataLayer = [{"SiteVer": "US", "MainOrUser": "UserPage", "PreOrFre": "Free", "Language": "en", "Culture": "en-US", "Instrumentation": "ShowPage", "Market": "DK"}];
        </script>
        <!-- Google Tag Manager -->
        <noscript>&lt;iframe src="//www.googletagmanager.com/ns.html?id=GTM-2MMH"
        height="0" width="0" style="display:none;visibility:hidden"&gt;&lt;/iframe&gt;</noscript>
        <script>(function (w, d, s, l, i) {
                {
                    w[l] = w[l] || [];
                    w[l].push({'gtm.start':
                                new Date().getTime(), event: 'gtm.js'});
                    var f = d.getElementsByTagName(s)[0],
                            j = d.createElement(s), dl = l != 'dataLayer' ? '&l=' + l : '';
                    j.async = true;
                    j.src =
                            '//www.googletagmanager.com/gtm.js?id=' + i + dl;
                    f.parentNode.insertBefore(j, f);
                }
            })(window, document, 'script', 'dataLayer', 'GTM-2MMH');</script>
        <!-- End Google Tag Manager -->


        <!-- Remove after blog exp concludes -->
        <!-- Remove after expeirment is done-->

        <div id="sm2-container" class="movieContainer high_performance" style="z-index: 10000; position: fixed; width: 8px; height: 8px; bottom: 0px; left: 0px; overflow: hidden; visibility: hidden;"><embed name="sm2movie" id="sm2movie" src="/Images/sm297/soundmanager2_flash9.swf" quality="high" allowscriptaccess="always" bgcolor="#ffffff" pluginspage="www.macromedia.com/go/getflashplayer" title="JS/Flash audio component (SoundManager 2)" type="application/x-shockwave-flash" wmode="transparent" haspriority="true"></div></body></html>
