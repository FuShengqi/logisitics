<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!doctype html>
<html lang="en">
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7" lang=""> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8" lang=""> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9" lang=""> <![endif]-->
<!--[if gt IE 8]><!--> <html class="no-js" lang="en"> <!--<![endif]-->
    
    <!--Designerd by: http://bootstrapthemes.co-->
    <head>
        <meta charset="utf-8">
        <title>logistics</title>
        <meta name="description" content="">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="icon" type="image/png" href="favicon.ico">

        <!--Google Font link-->
        <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css?family=Raleway:400,600,700" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700" rel="stylesheet">


        <link rel="stylesheet" href="assets/front-css/slick.css">
        <link rel="stylesheet" href="assets/front-css/slick-theme.css">
        <link rel="stylesheet" href="assets/front-css/animate.css">
        <link rel="stylesheet" href="assets/front-css/fonticons.css">
        <link rel="stylesheet" href="assets/front-css/font-awesome.min.css">
        <link rel="stylesheet" href="assets/front-css/bootstrap.css">
        <link rel="stylesheet" href="assets/front-css/magnific-popup.css">
        <link rel="stylesheet" href="assets/front-css/bootsnav.css">


        <!--For Plugins external css-->
        <!--<link rel="stylesheet" href="assets/css/plugins.css" />-->

        <!--Theme custom css -->
        <link rel="stylesheet" href="assets/front-css/style.css">
        <!--<link rel="stylesheet" href="assets/css/colors/maron.css">-->

        <!--Theme Responsive css-->
        <link rel="stylesheet" href="assets/front-css/responsive.css" />

        <script src="assets/js/vendor/modernizr-2.8.3-respond-1.4.2.min.js"></script>
    </head>

    <body data-spy="scroll" data-target=".navbar-collapse">

        <!-- Preloader -->
        <div id="loading">
            <div id="loading-center">
                <div id="loading-center-absolute">
                    <div class="object" id="object_one"></div>
                    <div class="object" id="object_two"></div>
                    <div class="object" id="object_three"></div>
                    <div class="object" id="object_four"></div>
                </div>
            </div>
        </div><!--End off Preloader -->


        <div class="culmn">
            <!--Home page style-->


            <nav class="navbar navbar-default navbar-fixed white no-background bootsnav">
                <!-- Start Top Search -->
                <div class="top-search">
                    <div class="container">
                        <div class="input-group">
                            <span class="input-group-addon"><i class="fa fa-search"></i></span>
                            <input type="text" class="form-control" placeholder="Search">
                            <span class="input-group-addon close-search"><i class="fa fa-times"></i></span>
                        </div>
                    </div>
                </div>
                <!-- End Top Search -->

                <div class="container">    
                    <!-- Start Atribute Navigation -->
                    <div class="attr-nav">
                        <ul class="nav navbar-nav">
                            <li class="dropdown">
                                <a href="#" class="dropdown-toggle" data-toggle="dropdown" >
                                    <i class="fa fa-shopping-bag"></i>
                                    <span class="badge">3</span>
                                </a>
                                <ul class="dropdown-menu cart-list">
                                    <li>
                                        <a href="#" class="photo"><img src="assets/images/thumb01.jpg" class="cart-thumb" alt="" /></a>
                                        <h6><a href="#">Delica omtantur </a></h6>
                                        <p class="m-top-10">2x - <span class="price">$99.99</span></p>
                                    </li>
                                    <li>
                                        <a href="#" class="photo"><img src="assets/images/thumb01.jpg" class="cart-thumb" alt="" /></a>
                                        <h6><a href="#">Delica omtantur </a></h6>
                                        <p class="m-top-10">2x - <span class="price">$99.99</span></p>
                                    </li>
                                    <li>
                                        <a href="#" class="photo"><img src="assets/images/thumb01.jpg" class="cart-thumb" alt="" /></a>
                                        <h6><a href="#">Delica omtantur </a></h6>
                                        <p class="m-top-10">2x - <span class="price">$99.99</span></p>
                                    </li>
                                    <!---- More List ---->
                                    <li class="total">
                                        <span class="pull-right"><strong>Total</strong>: $0.00</span>
                                        <a href="#" class="btn btn-cart">Cart</a>
                                    </li>
                                </ul>
                            </li>
                            <li class="dropdown">
                                <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                                    <i class="fa fa-user-o"></i>
                                </a>
                                <ul class="dropdown-menu">
                                    <c:choose>
                                        <c:when test="${user.userName != null}">
                                            <li><a href="#">${user.userName}</a></li>
                                            <li><a href="my_orders.html">我的订单</a> </li>
                                            <li><a href="logout.html">退出登录</a> </li>
                                        </c:when>
                                        <c:otherwise>
                                            <li><a href="/login.html">登录</a></li>
                                        </c:otherwise>
                                    </c:choose>
                                    <%--<li><a href="#">我的订单</a></li>--%>
                                    <%--<li><a href="#">EJB</a></li>--%>
                                    <%--<li><a href="#">Jasper Report</a></li>--%>
                                    <%--<li class="divider"></li>--%>
                                    <%--<li><a href="#">分离的链接</a></li>--%>
                                    <%--<li class="divider"></li>--%>
                                    <%--<li><a href="#">另一个分离的链接</a></li>--%>
                                </ul>
                            </li>
                            <li class="side-menu"><a href="#"><i class="fa fa-bars"></i></a></li>
                        </ul>
                    </div>        
                    <!-- End Atribute Navigation -->

                    <!-- Start Header Navigation -->
                    <div class="navbar-header">
                        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#navbar-menu">
                            <i class="fa fa-bars"></i>
                        </button>
                        <a class="navbar-brand" href="#brand">

                            <img src="assets/images/logo.png" class="logo logo-display m-top-10" alt="">
                            <img src="assets/images/logo.jpg" class="logo logo-scrolled" alt="">

                        </a>
                    </div>
                    <!-- End Header Navigation -->

                    <!-- Collect the nav links, forms, and other content for toggling -->
                    <div class="collapse navbar-collapse" id="navbar-menu">
                        <ul class="nav navbar-nav navbar-right" data-in="fadeInDown" data-out="fadeOutUp">
                            <li><a href="#hello">首页</a></li>
                            <li><a href="#service">服务</a></li>
                            <li><a href="#pricing">价格</a></li>
                            <li><a href="#about">关于</a></li>
                            <%--<li><a href="#portfolio">Portfolio</a></li>--%>
                            <li><a href="#blog">资讯</a></li>
                            <li><a href="#contact">联系我们</a></li>
                        </ul>
                    </div><!-- /.navbar-collapse -->
                </div>  


                <!-- Start Side Menu -->
                <div class="side">
                    <a href="#" class="close-side"><i class="fa fa-times"></i></a>
                    <div class="widget">
                        <h6 class="title">Custom Pages</h6>
                        <ul class="link">
                            <li><a href="#">About</a></li>
                            <li><a href="#">Services</a></li>
                            <li><a href="#">Blog</a></li>
                            <li><a href="#">Portfolio</a></li>
                            <li><a href="#">Contact</a></li>
                        </ul>
                    </div>
                    <div class="widget">
                        <h6 class="title">Additional Links</h6>
                        <ul class="link">
                            <li><a href="#">Retina Homepage</a></li>
                            <li><a href="#">New Page Examples</a></li>
                            <li><a href="#">Parallax Sections</a></li>
                            <li><a href="#">Shortcode Central</a></li>
                            <li><a href="#">Ultimate Font Collection</a></li>
                        </ul>
                    </div>
                </div>
                <!-- End Side Menu -->

            </nav>


            <!--Home Sections-->

            <section id="hello" class="home bg-mega">
                <div class="overlay">
                    <img src="">
                </div>
                <div class="container">
                    <div class="row">
                        <div class="main_home">
                            <div class="home_text">
                                <h1 class="text-white">物流管理系统</h1>
                            </div>

                            <div class="home_btns m-top-40">
                                <a href="/login.html" class="btn btn-primary m-top-20">登录</a>
                                <a href="#about" target="_blank" class="btn btn-default m-top-20">了解更多</a>
                            </div>

                        </div>
                    </div><!--End off row-->
                </div><!--End off container -->
            </section> <!--End off Home Sections-->

            <!--Service Section-->
            <section id="service" class="service">
                <div class="container">
                    <div class="row">
                        <div class="main_service roomy-100">
                            <div class="col-md-8 col-md-offset-2 col-sm-10 col-sm-offset-1">
                                <div class="head_title text-center">
                                    <h2>业务介绍</h2>
                                    <div class="separator_auto"></div>
                                    <p>基于物流，融通金融，流通商业 </p>
                                </div>
                            </div>

                            <div class="col-md-4">
                                <div class="service_item" style="">
                                    <i class="icofont icofont-light-bulb"></i>
                                    <h6 class="m-top-30">快递服务</h6>
                                    <div class="separator_small"></div>
                                    <p>公司依托自有丰富运力资源，通过多项不同的快递产品和增值服务，来满足客户多样化、个性化的寄件需求。 </p>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <div class="service_item">
                                    <i class="icofont icofont-imac"></i>
                                    <h6 class="m-top-30">冷运服务</h6>
                                    <div class="separator_small"></div>
                                    <p>公司依托强大的冷链运输网和温控管理系统，为食品&医药冷链客户提供专业的冷运服务。 </p>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <div class="service_item">
                                    <i class="icofont icofont-video"></i>
                                    <h6 class="m-top-30">仓储服务</h6>
                                    <div class="separator_small"></div>
                                    <p>公司依托自身强大的仓储和运输网络资源，为电商客户打造的一站式物流服务。 </p>
                                </div>
                            </div>
                        </div>
                    </div><!--End off row -->
                </div><!--End off container -->
            </section> <!--End off Featured section-->


        <%--业务介绍--%>
            <%--<div class="container">--%>
                <%--<div class="row">--%>
                    <%--<div class="about_bottom_content">--%>
                        <%--<div class="col-md-4">--%>
                            <%--<div class="about_bottom_item m-top-20">--%>
                                <%--<div class="ab_head">--%>
                                    <%--<div class="ab_head_icon">--%>
                                        <%--<i class="icofont icofont-fire-burn"></i>--%>
                                    <%--</div>--%>
                                    <%--<h6 class="m-top-20">快递服务</h6>--%>
                                <%--</div>--%>
                                <%--<p class="m-top-20">公司依托自有丰富运力资源，通过多项不同的快递产品和增值服务，来满足客户多样化、个性化的寄件需求。 </p>--%>
                            <%--</div>--%>
                        <%--</div>--%>
                        <%--<div class="col-md-4">--%>
                            <%--<div class="about_bottom_item m-top-20">--%>
                                <%--<div class="ab_head">--%>
                                    <%--<div class="ab_head_icon">--%>
                                        <%--<i class="icofont icofont-speech-comments"></i>--%>
                                    <%--</div>--%>
                                    <%--<h6 class="m-top-20">冷运服务</h6>--%>
                                <%--</div>--%>
                                <%--<p class="m-top-20">公司依托强大的冷链运输网和温控管理系统，为食品&医药冷链客户提供专业的冷运服务。 </p>--%>
                            <%--</div>--%>
                        <%--</div>--%>
                        <%--<div class="col-md-4">--%>
                            <%--<div class="about_bottom_item m-top-20">--%>
                                <%--<div class="ab_head">--%>
                                    <%--<div class="ab_head_icon">--%>
                                        <%--<i class="icofont icofont-heart"></i>--%>
                                    <%--</div>--%>
                                    <%--<h6 class="m-top-20">仓储服务</h6>--%>
                                <%--</div>--%>
                                <%--<p class="m-top-20">公司依托自身强大的仓储和运输网络资源，为电商客户打造的一站式物流服务。 </p>--%>
                            <%--</div>--%>
                        <%--</div>--%>
                    <%--</div>--%>
                <%--</div>--%>
            <%--</div><!--End off container -->--%>

            <!--Video section-->
            <%--<section id="video" class="video">--%>
                <%--<div class="overlay"></div>--%>
                <%--<div class="main_video roomy-100 m-top-100 m-bottom-100 text-center">--%>
                    <%--<div class="video_text text-center">--%>
                        <%--<a href="http://www.youtube.com/watch?v=7HKoqNJtMTQ" class="video-link"><span class="fa fa-play"></span></a>--%>
                    <%--</div>--%>
                <%--</div>--%>
            <%--</section><!--End off video section -->--%>


            <%--<div class="container">--%>
                <%--<div class="row">--%>
                    <%--<div class="main_featured m-top-100">--%>
                        <%--<div class="col-sm-12">--%>
                            <%--<div class="head_title text-center">--%>
                                <%--<h2>FEATURED WORK</h2>--%>
                                <%--<div class="separator_auto"></div>--%>
                                <%--<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, --%>
                                    <%--sed diam nonummy nibh euismod nostrud exerci tation ullamcorper --%>
                                    <%--suscipit lobortis nisl ut aliquip ex ea commodo consequat. </p>--%>
                            <%--</div>--%>
                        <%--</div>--%>
                    <%--</div>--%>
                <%--</div>--%>
            <%--</div>--%>

            <%--<div class="featured_slider">--%>
                <%--<div>--%>
                    <%--<div class="featured_img">--%>
                        <%--<img src="assets/images/fprojects/1.jpg" alt="" />--%>
                        <%--<a href="assets/images/fprojects/1.jpg" class="popup-img"></a>--%>
                    <%--</div>--%>
                <%--</div>--%>
                <%--<div>--%>
                    <%--<div class="featured_img">--%>
                        <%--<img src="assets/images/fprojects/2.jpg" alt="" />--%>
                        <%--<a href="assets/images/fprojects/2.jpg" class="popup-img"></a>--%>
                    <%--</div>--%>
                <%--</div>--%>
                <%--<div>--%>
                    <%--<div class="featured_img">--%>
                        <%--<img src="assets/images/fprojects/3.jpg" alt="" />--%>
                        <%--<a href="assets/images/fprojects/3.jpg" class="popup-img"></a>--%>
                    <%--</div>--%>
                <%--</div>--%>
                <%--<div>--%>
                    <%--<div class="featured_img">--%>
                        <%--<img src="assets/images/fprojects/4.jpg" alt="" />--%>
                        <%--<a href="assets/images/fprojects/4.jpg" class="popup-img"></a>--%>
                    <%--</div>--%>
                <%--</div>--%>
                <%--<div>--%>
                    <%--<div class="featured_img">--%>
                        <%--<img src="assets/images/fprojects/5.jpg" alt="" />--%>
                        <%--<a href="assets/images/fprojects/5.jpg" class="popup-img"></a>--%>
                    <%--</div>--%>
                <%--</div>--%>
            <%--</div><!-- End off featured slider -->--%>



            <%--<!--Impress section-->--%>
            <%--<section id="impress" class="impress roomy-100">--%>
                <%--<div class="overlay"></div>--%>
                <%--<div class="container">--%>
                    <%--<div class="row">--%>
                        <%--<div class="main_impress text-center">--%>
                            <%--<div class="col-sm-8 col-sm-offset-2">--%>
                                <%--<h2 class="text-white text-uppercase">Impressed?  Let’s work together</h2>--%>
                                <%--<p class="m-top-40 text-white">At vero eos et accusamus et iusto odio dignissimos ducimus qui ditqs praesentium --%>
                                    <%--voluptatum deleniti atque corrupti quos dolores et quas molestias</p>--%>

                                <%--<div class="impress_btns m-top-30">--%>
                                    <%--<a href="" class="btn btn-primary m-top-20">HIRE US</a>--%>
                                    <%--<a href="" class="btn btn-default m-top-20">HIRE US</a>--%>
                                <%--</div>--%>
                            <%--</div>--%>
                        <%--</div>--%>
                    <%--</div><!--End off row -->--%>
                <%--</div><!--End off container -->--%>
            <%--</section><!-- End off Impress section-->--%>




            <!--Portfolio Section-->
            <%--<section id="portfolio" class="portfolio lightbg">--%>
                <%--<div class="container">--%>
                    <%--<div class="row">--%>
                        <%--<div class="main_portfolio roomy-100">--%>
                            <%--<div class="col-md-8 col-md-offset-2">--%>
                                <%--<div class="head_title text-center">--%>
                                    <%--<h2>OUR PORTOFLIO</h2>--%>
                                    <%--<div class="separator_auto"></div>--%>
                                    <%--<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, --%>
                                        <%--sed diam nonummy nibh euismod nostrud exerci tation ullamcorper --%>
                                        <%--suscipit lobortis nisl ut aliquip ex ea commodo consequat. </p>--%>
                                <%--</div>--%>
                            <%--</div>--%>

                            <%--<div class="portfolio_content">--%>
                                <%--<div class="col-md-8">--%>
                                    <%--<div class="row">--%>
                                        <%--<div class="col-md-12">--%>
                                            <%--<div class="portfolio_item">--%>
                                                <%--<img src="assets/images/Portfolio/2.jpg" alt="" />--%>
                                                <%--<div class="portfolio_hover text-center">--%>
                                                    <%--<h6 class="text-uppercase text-white">Title</h6>--%>
                                                    <%--<p class=" text-white">Lorem ipsum dolor sit amet</p>--%>
                                                    <%--<div class="portfolio_hover_icon">--%>
                                                        <%--<a href="assets/images/Portfolio/2.jpg" class="popup-img"><i class="fa fa-expand"></i></a>--%>
                                                        <%--<a href=""><i class="fa fa-search"></i></a>--%>
                                                    <%--</div>--%>
                                                <%--</div>--%>
                                            <%--</div>  --%>
                                        <%--</div>--%>
                                        <%--<div class="col-md-6 m-top-30">--%>
                                            <%--<div class="portfolio_item portfolio_item2">--%>
                                                <%--<img src="assets/images/Portfolio/3.jpg" alt="" />--%>
                                                <%--<div class="portfolio_hover text-center">--%>
                                                    <%--<h6 class="text-uppercase text-white">Title</h6>--%>
                                                    <%--<p class=" text-white">Lorem ipsum dolor sit amet</p>--%>
                                                    <%--<div class="portfolio_hover_icon">--%>
                                                        <%--<a href="assets/images/Portfolio/3.jpg" class="popup-img"><i class="fa fa-expand"></i></a>--%>
                                                        <%--<a href=""><i class="fa fa-search"></i></a>--%>
                                                    <%--</div>--%>
                                                <%--</div>--%>
                                            <%--</div>--%>
                                        <%--</div>--%>
                                        <%--<div class="col-md-6 m-top-30">--%>
                                            <%--<div class="portfolio_item portfolio_item2">--%>
                                                <%--<img src="assets/images/Portfolio/5.jpg" alt="" />--%>
                                                <%--<div class="portfolio_hover text-center">--%>
                                                    <%--<h6 class="text-uppercase text-white">Title</h6>--%>
                                                    <%--<p class=" text-white">Lorem ipsum dolor sit amet</p>--%>
                                                    <%--<div class="portfolio_hover_icon">--%>
                                                        <%--<a href="assets/images/Portfolio/5.jpg" class="popup-img"><i class="fa fa-expand"></i></a>--%>
                                                        <%--<a href=""><i class="fa fa-search"></i></a>--%>
                                                    <%--</div>--%>
                                                <%--</div>--%>
                                            <%--</div>--%>
                                        <%--</div>--%>
                                    <%--</div>--%>
                                <%--</div>--%>

                                <%--<div class="col-md-4">--%>
                                    <%--<div class="portfolio_item portfolio_item3 sm-m-top-30">--%>
                                        <%--<img src="assets/images/Portfolio/1.jpg" alt="" />--%>
                                        <%--<div class="portfolio_hover text-center">--%>
                                            <%--<h6 class="text-uppercase text-white">Title</h6>--%>
                                            <%--<p class=" text-white">Lorem ipsum dolor sit amet</p>--%>
                                            <%--<div class="portfolio_hover_icon">--%>
                                                <%--<a href="assets/images/Portfolio/1.jpg" class="popup-img"><i class="fa fa-expand"></i></a>--%>
                                                <%--<a href=""><i class="fa fa-search"></i></a>--%>
                                            <%--</div>--%>
                                        <%--</div>--%>
                                    <%--</div>--%>
                                <%--</div>--%>
                                <%--<div class="col-md-4 m-top-30">--%>
                                    <%--<div class="portfolio_item portfolio_item2">--%>
                                        <%--<img src="assets/images/Portfolio/6.jpg" alt="" />--%>
                                        <%--<div class="portfolio_hover text-center">--%>
                                            <%--<h6 class="text-uppercase text-white">Title</h6>--%>
                                            <%--<p class=" text-white">Lorem ipsum dolor sit amet</p>--%>
                                            <%--<div class="portfolio_hover_icon">--%>
                                                <%--<a href="assets/images/Portfolio/6.jpg" class="popup-img"><i class="fa fa-expand"></i></a>--%>
                                                <%--<a href=""><i class="fa fa-search"></i></a>--%>
                                            <%--</div>--%>
                                        <%--</div>--%>
                                    <%--</div>--%>
                                <%--</div>--%>
                                <%--<div class="col-md-8 m-top-30">--%>
                                    <%--<div class="portfolio_item">--%>
                                        <%--<img src="assets/images/Portfolio/4.jpg" alt="" />--%>
                                        <%--<div class="portfolio_hover text-center">--%>
                                            <%--<h6 class="text-uppercase text-white">Title</h6>--%>
                                            <%--<p class=" text-white">Lorem ipsum dolor sit amet</p>--%>
                                            <%--<div class="portfolio_hover_icon">--%>
                                                <%--<a href="assets/images/Portfolio/4.jpg" class="popup-img"><i class="fa fa-expand"></i></a>--%>
                                                <%--<a href=""><i class="fa fa-search"></i></a>--%>
                                            <%--</div>--%>
                                        <%--</div>--%>
                                    <%--</div>--%>
                                <%--</div>--%>
                            <%--</div>--%>

                        <%--</div>--%>
                    <%--</div><!--End off row -->--%>
                <%--</div><!--End off container -->--%>
            <%--</section><!-- End off Portfolio section-->--%>


            <!--Skill Sections-->
            <section id="skill" class="skill roomy-100">
                <div class="container">
                    <div class="row">
                        <div class="main_skill">
                            <div class="col-md-6">
                                <div class="skill_content wow fadeIn">
                                    <h2>我们的优势</h2>
                                    <div class="separator_left"></div>

                                    <p>公司自成立以来，我们始终专注于服务质量的提升，持续加强基础建设，积极研发和引进具有高科技含量的信息技术与设备以
                                        提升作业自动化水平，在国内外建立了庞大的信息采集，市场开发，物流配送，快件收派等速运业务机构及服务网络。 </p>

                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="skill_bar sm-m-top-50">    
                                    <div class="teamskillbar clearfix m-top-20" data-percent="80%">
                                        <h6>运输时效</h6>
                                        <div class="teamskillbar-bar"></div>
                                    </div> <!-- End Skill Bar -->

                                    <div class="teamskillbar clearfix m-top-50" data-percent="75%">
                                        <h6>运输价格</h6>
                                        <div class="teamskillbar-bar"></div>
                                    </div> <!-- End Skill Bar -->

                                    <div class="teamskillbar clearfix m-top-50" data-percent="90%">
                                        <h6>用户评价</h6>
                                        <div class="teamskillbar-bar"></div>
                                    </div> <!-- End Skill Bar -->
                                </div>
                            </div>
                        </div>
                    </div><!--End off row-->
                </div><!--End off container -->
                <br />
                <br />
                <br />
                <hr />
                <br />
                <br />
                <br />
                <div class="container">
                    <div class="row">
                        <div class="skill_bottom_content text-center">
                            <div class="col-md-3">
                                <div class="skill_bottom_item">
                                    <h2 class="statistic-counter">345</h2>
                                    <div class="separator_small"></div>
                                    <h5><em>为超过300个城市提供服务</em></h5>
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="skill_bottom_item">
                                    <h2 class="statistic-counter">365</h2>
                                    <div class="separator_small"></div>
                                    <h5><em>全年无休服务</em></h5>
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="skill_bottom_item">
                                    <h2 class="statistic-counter">123456</h2>
                                    <div class="separator_small"></div>
                                    <h5><em>日快递量</em></h5>
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="skill_bottom_item">
                                    <h2 class="statistic-counter">100000</h2>
                                    <div class="separator_small"></div>
                                    <h5><em>客户人数</em></h5>
                                </div>
                            </div>
                        </div>
                    </div><!--End off row-->
                </div><!--End off container -->
            </section> <!--End off Skill section -->



            <!--Testimonial Section-->
            <section id="testimonial" class="testimonial fix">
                <div class="overlay"></div>
                <div class="container">
                    <div class="row">
                        <div class="main_testimonial roomy-100">
                            <div class="head_title text-center">
                                <h2 class="text-white">用户评价</h2>
                            </div>
                            <div class="testimonial_slid text-center">
                                <div class="testimonial_item">
                                    <div class="col-sm-10 col-sm-offset-1">
                                        <p class="text-white">顺丰速递速度快，价格便宜，运输过程中货物保存完好，是值得信赖的合作伙伴！</p>

                                        <div class="test_authour m-top-30">
                                            <h6 class="text-white m-bottom-20">张先生</h6>
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star"></i>
                                        </div>
                                    </div>
                                </div>
                                <div class="testimonial_item">
                                    <div class="col-sm-10 col-sm-offset-1">
                                        <p class="text-white">Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy 
                                            nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. 
                                            Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper 
                                            suscipit lobortis nisl ut aliquip ex ea commodo consequat. </p>

                                        <div class="test_authour m-top-30">
                                            <h6 class="text-white m-bottom-20">JOHN DOE - THEMEFOREST USER</h6>
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star"></i>
                                        </div>
                                    </div>
                                </div>
                                <div class="testimonial_item">
                                    <div class="col-sm-10 col-sm-offset-1">
                                        <p class="text-white">Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy 
                                            nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. 
                                            Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper 
                                            suscipit lobortis nisl ut aliquip ex ea commodo consequat. </p>

                                        <div class="test_authour m-top-30">
                                            <h6 class="text-white m-bottom-20">JOHN DOE - THEMEFOREST USER</h6>
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star"></i>
                                        </div>
                                    </div>
                                </div>
                                <div class="testimonial_item">
                                    <div class="col-sm-10 col-sm-offset-1">
                                        <p class="text-white">Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy 
                                            nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. 
                                            Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper 
                                            suscipit lobortis nisl ut aliquip ex ea commodo consequat. </p>

                                        <div class="test_authour m-top-30">
                                            <h6 class="text-white m-bottom-20">JOHN DOE - THEMEFOREST USER</h6>
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star"></i>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div><!--End off row-->
                </div><!--End off container -->
            </section> <!--End off Testimonial section -->


            <!--Pricing Section-->
            <section id="pricing" class="pricing lightbg">
                <div class="container">
                    <div class="row">
                        <div class="main_pricing roomy-100">
                            <div class="col-md-8 col-md-offset-2 col-sm-12">
                                <div class="head_title text-center">
                                    <h2>价格</h2>
                                    <div class="separator_auto"></div>
                                    <p>更低的价格，更优的服务 </p>
                                </div>
                            </div>

                            <div class="col-md-4 col-sm-12">
                                <div class="pricing_item">
                                    <div class="pricing_head p-top-30 p-bottom-100 text-center">
                                        <h3 class="text-uppercase">物流普运</h3>
                                    </div>
                                    <div class="pricing_price_border text-center">
                                        <div class="pricing_price">
                                            <h3 class="text-white">¥10</h3>
                                            <p class="text-white">每千克</p>
                                        </div>
                                    </div>

                                    <div class="pricing_body bg-white p-top-110 p-bottom-60">
                                        <ul>
                                            <li><i class="fa fa-check-circle text-primary"></i> 隔日到达</li>
                                            <li class="disabled"><i class="fa fa-times-circle"></i> 运后服务</li>
                                            <li class="disabled"><i class="fa fa-times-circle"></i> 增值业务</li>

                                        </ul>
                                        <div class="pricing_btn text-center m-top-40">
                                            <a href="my_orders.html" class="btn btn-primary">选择</a>
                                        </div>
                                    </div>
                                </div>
                            </div><!-- End off col-md-4 -->

                            <div class="col-md-4 col-sm-12">
                                <div class="pricing_item sm-m-top-30">
                                    <div class="pricing_top_border"></div>
                                    <div class="pricing_head p-top-30 p-bottom-100 text-center">
                                        <h3 class="text-uppercase">物流特快</h3>
                                    </div>
                                    <div class="pricing_price_border text-center">
                                        <div class="pricing_price">
                                            <h3 class="text-white">¥20</h3>
                                            <p class="text-white">每千克</p>
                                        </div>
                                    </div>

                                    <div class="pricing_body bg-white p-top-110 p-bottom-60">
                                        <ul>
                                            <li><i class="fa fa-check-circle text-primary"></i>次日到达</li>
                                            <li><i class="fa fa-check-circle text-primary"></i> 运后服务</li>
                                            <li class="disabled"><i class="fa fa-times-circle"></i> 增值业务</li>
                                        </ul>
                                        <div class="pricing_btn text-center m-top-40">
                                            <a href="my_orders.html" class="btn btn-primary">选择</a>
                                        </div>
                                    </div>
                                </div>
                            </div><!-- End off col-md-4 -->

                            <div class="col-md-4 col-sm-12">
                                <div class="pricing_item sm-m-top-30">
                                    <div class="pricing_head p-top-30 p-bottom-100 text-center">
                                        <h3 class="text-uppercase">重货专运</h3>
                                    </div>
                                    <div class="pricing_price_border text-center">
                                        <div class="pricing_price">
                                            <h3 class="text-white">¥30</h3>
                                            <p class="text-white">每千克</p>
                                        </div>
                                    </div>

                                    <div class="pricing_body bg-white p-top-110 p-bottom-60">
                                        <ul>
                                            <li><i class="fa fa-check-circle text-primary"></i> 时效稳定</li>
                                            <li><i class="fa fa-check-circle text-primary"></i> 运后服务</li>
                                            <li><i class="fa fa-check-circle text-primary"></i> 增值业务</li>
                                        </ul>
                                        <div class="pricing_btn text-center m-top-40">
                                            <a href="my_orders.html" class="btn btn-primary">选择</a>
                                        </div>
                                    </div>
                                </div>
                            </div><!-- End off col-md-4 -->

                        </div>
                    </div><!--End off row-->
                </div><!--End off container -->
            </section> <!--End off Pricing section -->



            <!--client brand section-->
            <section id="cbrand" class="cbrand">
                <div class="container">
                    <div class="row">
                        <div class="main_cbrand text-center roomy-100">
                            <div class="col-md-2 col-sm-4 col-xs-6">
                                <div class="cbrand_item m-bottom-10">
                                    <a href=""><img src="assets/images/clients/1.jpg" alt="" /></a>
                                </div>
                            </div>
                            <div class="col-md-2 col-sm-4 col-xs-6">
                                <div class="cbrand_item m-bottom-10">
                                    <a href=""><img src="assets/images/clients/2.jpg" alt="" /></a>
                                </div>
                            </div>
                            <div class="col-md-2 col-sm-4 col-xs-6">
                                <div class="cbrand_item m-bottom-10">
                                    <a href=""><img class="" src="assets/images/clients/5.jpg" alt="" /></a>
                                </div>
                            </div>
                            <div class="col-md-2 col-sm-4 col-xs-6">
                                <div class="cbrand_item m-bottom-10">
                                    <a href=""><img src="assets/images/clients/4.jpg" alt="" /></a>
                                </div>
                            </div>
                            <div class="col-md-2 col-sm-4 col-xs-6">
                                <div class="cbrand_item m-bottom-10">
                                    <a href=""><img src="assets/images/clients/3.jpg" alt="" /></a>
                                </div>
                            </div>
                            <div class="col-md-2 col-sm-4 col-xs-6">
                                <div class="cbrand_item m-bottom-10">
                                    <a href=""><img src="assets/images/clients/1.jpg" alt="" /></a> 
                                </div>
                            </div>
                        </div>
                    </div><!-- End off row -->
                </div><!-- End off container -->
            </section><!-- End off Cbrand section -->


            <!--Subscribe section-->
            <section id="subscribe" class="subscribe roomy-100 fix">
                <div class="overlay"></div>
                <div class="container">
                    <div class="row">
                        <div class="main_subscribe text-center">
                            <div class="col-sm-8 col-sm-offset-2">
                                <h2 class="text-white">订阅</h2>
                                <p class="m-top-30 text-white">输入邮箱地址，订阅我们的物流资讯及优惠信息</p>
                            </div>
                            <div class="col-sm-10 col-sm-offset-1">
                                <div class="subscribe_btns m-top-40">

                                    <form class="form-inline">
                                        <div class="form-group">
                                            <input type="email" class="form-control" id="inputEmail2" placeholder="输入您的邮箱地址">
                                        </div>
                                        <button type="submit" class="btn btn-primary">订阅</button>
                                    </form>
                                </div>
                            </div>

                        </div>
                    </div><!--End off row -->
                </div><!--End off container -->
            </section><!-- End off Impress section-->



            <!--Blog Section-->
            <section id="blog" class="blog">
                <div class="container">
                    <div class="row">
                        <div class="main_blog text-center roomy-100">
                            <div class="col-sm-8 col-sm-offset-2">
                                <div class="head_title text-center">
                                    <h2>最新物流资讯</h2>
                                    <div class="separator_auto"></div>
                                    <p>最快让您知晓，最全新闻资讯</p>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <div class="blog_item m-top-20">
                                    <div class="blog_item_img">
                                        <img src="assets/images/Blog/1.jpg" alt="" />
                                    </div>
                                    <div class="blog_text roomy-40">
                                        <h6>侨商云集第三届侨交会 顺丰助推跨境电商发展大势</h6>
                                        <p><em><a href="">May 15, 2016</a> /<a href="">admin</a>/<a href=""> Co-working</a></em></p>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <div class="blog_item m-top-20">
                                    <div class="blog_item_img">
                                        <img src="assets/images/Blog/2.jpg" alt="" />
                                    </div>
                                    <div class="blog_text roomy-40">
                                        <h6>2017顺丰冷运华北医药峰会圆满落幕</h6>
                                        <p><em><a href="">May 15, 2016</a> /<a href="">admin</a>/<a href=""> Co-working</a></em></p>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <div class="blog_item m-top-20">
                                    <div class="blog_item_img">
                                        <img src="assets/images/Blog/3.jpg" alt="" />
                                    </div>
                                    <div class="blog_text roomy-40">
                                        <h6>顺丰国际重货扩大服务范围</h6>
                                        <p><em><a href="">May 15, 2016</a> /<a href="">admin</a>/<a href=""> Co-working</a></em></p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div><!--End off row -->
                </div><!--End off container -->
            </section><!-- End off Blog section-->



            <%--<!--Maps Section-->--%>
            <%--<div class="main_maps text-center fix">--%>
                <%--<div class="overlay"></div>--%>
                <%--<div class="maps_text">--%>
                    <%--<h3 class="text-white" onclick="showmap()">FIND US ON THE MAP <i class="fa fa-angle-down"></i></h3>--%>
                    <%--<div id="map_canvas" class="mapheight"></div>--%>
                <%--</div>--%>
            <%--</div><!-- End off Maps Section-->--%>



            <!--Contact Us Section-->
            <section id="contact" class="contact bg-mega fix">
                <div class="container">
                    <div class="row">
                        <div class="main_contact roomy-100 text-white">
                            <div class="col-md-4">
                                <div class="rage_widget">
                                    <div class="widget_head">
                                        <h3 class="text-white">留言咨询</h3>
                                        <div class="separator_small"></div>
                                    </div>
                                    <p>如果您想和我们开展商业合作，或者您对我们的服务有好的意见和建议，请在右方留言。</p>

                                    <div class="widget_socail m-top-30">
                                        <ul class="list-inline">
                                            <li><a href=""><i class="fa fa-facebook"></i></a></li>
                                            <li><a href=""><i class="fa fa-twitter"></i></a></li>
                                            <li><a href=""><i class="fa fa-linkedin"></i></a></li>
                                            <li><a href=""><i class="fa fa-vimeo"></i></a></li>
                                            <li><a href=""><i class="fa fa-instagram"></i></a></li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-8 sm-m-top-30">
                                <form:form action="my_message.html" method="post" role="form">
                                    <div class="row">
                                        <div class="col-sm-6">
                                            <div class="form-group"> 
                                                <input id="first_name" name="userName" type="text" placeholder="您的姓名" class="form-control" required="">
                                            </div>
                                        </div>

                                        <div class="col-sm-6">
                                            <div class="form-group">  
                                                <input id="phone" name="userContact" type="text" placeholder="您的电话" class="form-control">
                                            </div>
                                        </div>

                                        <div class="col-sm-12">
                                            <div class="form-group">
                                                <input id="title" name="msgTitle" type="text" placeholder="留言主题" class="form-control">
                                            </div>
                                        </div>

                                        <div class="col-sm-12">
                                            <div class="form-group">  
                                                <textarea class="form-control" name="msgContent" rows="6" placeholder="您的留言"></textarea>
                                            </div>
                                            <div class="form-group text-center">
                                                <button type="submit" href="" class="btn btn-primary">提交</button>
                                            </div>
                                        </div>

                                    </div>

                                </form:form>
                            </div>
                        </div>
                    </div><!--End off row -->
                </div><!--End off container -->
            </section><!--End off Contact Section-->


            <!-- scroll up-->
            <div class="scrollup">
                <a href="#"><i class="fa fa-chevron-up"></i></a>
            </div><!-- End off scroll up -->


            <footer id="footer" class="footer bg-black">
                <div class="container">
                    <div class="row">
                        <div class="main_footer text-center p-top-40 p-bottom-30">
                            <p class="wow fadeInRight" data-wow-duration="1s">
                                Made with 
                                <i class="fa fa-heart"></i>
                                by 
                                <a target="_blank" href="https://bootstrapthemes.co">Bootstrap Themes</a> 
                                2016. All Rights Reserved
                            </p>
                            <a href="admin_login.html">管理员登录</a>
                        </div>
                    </div>
                </div>
            </footer>




        </div>

            <!-- JS includes -->

            <script src="assets/js/vendor/jquery-1.11.2.min.js"></script>
            <script src="assets/js/vendor/bootstrap.min.js"></script>

            <script src="assets/js/jquery.magnific-popup.js"></script>
            <script src="assets/js/jquery.easing.1.3.js"></script>
            <script src="assets/js/slick.min.js"></script>
            <script src="assets/js/jquery.collapse.js"></script>
            <script src="assets/js/bootsnav.js"></script>


            <!-- paradise slider js -->


            <script src="http://maps.google.com/maps/api/js?key=AIzaSyD_tAQD36pKp9v4at5AnpGbvBUsLCOSJx8"></script>
            <script src="assets/js/gmaps.min.js"></script>

            <script src="assets/js/plugins.js"></script>
            <script src="assets/js/main.js"></script>

            <script>
                $(document).ready(function(){

                    $('#loading-example-btn').click(function () {
                        btn = $(this);
                        simpleLoad(btn, true)

                        // Ajax example
    //                $.ajax().always(function () {
    //                    simpleLoad($(this), false)
    //                });

                        simpleLoad(btn, false)
                    });
                });

                function simpleLoad(btn, state) {
                    if (state) {
                        btn.children().addClass('fa-spin');
                        btn.contents().last().replaceWith(" Loading");
                    } else {
                        setTimeout(function () {
                            btn.children().removeClass('fa-spin');
                            btn.contents().last().replaceWith(" Refresh");
                        }, 2000);
                    }
                }
            </script>

    </body>
</html>
