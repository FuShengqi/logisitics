<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: FuShengqi
  Date: 2017/9/22
  Time: 20:26
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>留言详情</title>

    <link href="assets/inspinia/css/bootstrap.min.css" rel="stylesheet">
    <link href="assets/inspinia/font-awesome/css/font-awesome.css" rel="stylesheet">
    <link href="assets/inspinia/css/plugins/iCheck/custom.css" rel="stylesheet">
    <link href="assets/inspinia/css/plugins/steps/jquery.steps.css" rel="stylesheet">
    <link href="assets/inspinia/css/animate.css" rel="stylesheet">
    <link href="assets/inspinia/css/style.css" rel="stylesheet">

</head>

<body>

<%
    Cookie[] cookies = request.getCookies();
    String userName = null;
    for(Cookie cookie:cookies){
        if(cookie.getName().equals("userName")){
            userName = cookie.getValue();
            break;
        }
    }
%>

<div id="wrapper">

    <nav class="navbar-default navbar-static-side" role="navigation">
        <div class="sidebar-collapse">
            <ul class="nav metismenu" id="side-menu">
                <li class="nav-header">
                    <div class="dropdown profile-element">
                        <a data-toggle="dropdown" class="dropdown-toggle" href="form_wizard.html#">
                            <span class="clear"> <span class="block m-t-xs"> <strong class="font-bold">您好，<%=userName%></strong> </span></span>
                        </a>
                    </div>
                    <div class="logo-element">
                        IN+
                    </div>
                </li>

                <li>
                    <a href="my_orders.html"><i class="fa fa-diamond"></i> <span class="nav-label">编辑订单</span></a>
                </li>
                <li>
                    <a href="unfinished_orders.html"><i class="fa fa-diamond"></i> <span class="nav-label">未完成订单</span></a>
                </li>
                <li>
                    <a href="finished_orders.html"><i class="fa fa-diamond"></i> <span class="nav-label">已完成订单</span></a>
                </li>
                <li>
                    <a href="my_message.html"><i class="fa fa-diamond"></i> <span class="nav-label">我的留言</span></a>
                </li>
                <li>
                    <a href="layouts.html"><i class="fa fa-diamond"></i> <span class="nav-label">我的收支情况</span></a>
                </li>
            </ul>
        </div>
    </nav>

    <div id="page-wrapper" class="gray-bg">
        <div class="row border-bottom">
            <nav class="navbar navbar-static-top" role="navigation" style="margin-bottom: 0">
                <div class="navbar-header">
                    <a class="navbar-minimalize minimalize-styl-2 btn btn-primary " href="form_wizard.html#"><i class="fa fa-bars"></i> </a>
                    <form role="search" class="navbar-form-custom" action="search_results.html">
                        <div class="form-group">
                            <%--<input type="text" placeholder="Search for something..." class="form-control" name="top-search" id="top-search">--%>
                        </div>
                    </form>
                </div>
                <ul class="nav navbar-top-links navbar-right">
                    <li class="dropdown">
                        <a class="dropdown-toggle count-info" data-toggle="dropdown" href="form_wizard.html#">
                            <i class="fa fa-envelope"></i>  <span class="label label-warning">16</span>
                        </a>
                        <ul class="dropdown-menu dropdown-messages">
                            <li>
                                <div class="dropdown-messages-box">
                                    <a href="profile.html" class="pull-left">
                                        <img alt="image" class="img-circle" src="img/a7.jpg">
                                    </a>
                                    <div class="media-body">
                                        <small class="pull-right">46h ago</small>
                                        <strong>Mike Loreipsum</strong> started following <strong>Monica Smith</strong>. <br>
                                        <small class="text-muted">3 days ago at 7:58 pm - 10.06.2014</small>
                                    </div>
                                </div>
                            </li>
                            <li class="divider"></li>
                            <li>
                                <div class="dropdown-messages-box">
                                    <a href="profile.html" class="pull-left">
                                        <img alt="image" class="img-circle" src="img/a4.jpg">
                                    </a>
                                    <div class="media-body ">
                                        <small class="pull-right text-navy">5h ago</small>
                                        <strong>Chris Johnatan Overtunk</strong> started following <strong>Monica Smith</strong>. <br>
                                        <small class="text-muted">Yesterday 1:21 pm - 11.06.2014</small>
                                    </div>
                                </div>
                            </li>
                            <li class="divider"></li>
                            <li>
                                <div class="dropdown-messages-box">
                                    <a href="profile.html" class="pull-left">
                                        <img alt="image" class="img-circle" src="img/profile.jpg">
                                    </a>
                                    <div class="media-body ">
                                        <small class="pull-right">23h ago</small>
                                        <strong>Monica Smith</strong> love <strong>Kim Smith</strong>. <br>
                                        <small class="text-muted">2 days ago at 2:30 am - 11.06.2014</small>
                                    </div>
                                </div>
                            </li>
                            <li class="divider"></li>
                            <li>
                                <div class="text-center link-block">
                                    <a href="mailbox.html">
                                        <i class="fa fa-envelope"></i> <strong>Read All Messages</strong>
                                    </a>
                                </div>
                            </li>
                        </ul>
                    </li>
                    <li class="dropdown">
                        <a class="dropdown-toggle count-info" data-toggle="dropdown" href="form_wizard.html#">
                            <i class="fa fa-bell"></i>  <span class="label label-primary">8</span>
                        </a>
                        <ul class="dropdown-menu dropdown-alerts">
                            <li>
                                <a href="mailbox.html">
                                    <div>
                                        <i class="fa fa-envelope fa-fw"></i> You have 16 messages
                                        <span class="pull-right text-muted small">4 minutes ago</span>
                                    </div>
                                </a>
                            </li>
                            <li class="divider"></li>
                            <li>
                                <a href="profile.html">
                                    <div>
                                        <i class="fa fa-twitter fa-fw"></i> 3 New Followers
                                        <span class="pull-right text-muted small">12 minutes ago</span>
                                    </div>
                                </a>
                            </li>
                            <li class="divider"></li>
                            <li>
                                <a href="grid_options.html">
                                    <div>
                                        <i class="fa fa-upload fa-fw"></i> Server Rebooted
                                        <span class="pull-right text-muted small">4 minutes ago</span>
                                    </div>
                                </a>
                            </li>
                            <li class="divider"></li>
                            <li>
                                <div class="text-center link-block">
                                    <a href="notifications.html">
                                        <strong>See All Alerts</strong>
                                        <i class="fa fa-angle-right"></i>
                                    </a>
                                </div>
                            </li>
                        </ul>
                    </li>


                    <li>
                        <a href="logout.html">
                            <i class="fa fa-sign-out"></i> 退出登录
                        </a>
                    </li>
                </ul>

            </nav>
        </div>
        <div>
            <div class="row wrapper border-bottom white-bg page-heading">
                <div class="col-lg-10">
                    <h2>留言详情</h2>
                </div>
                <div class="col-lg-2">

                </div>
            </div>
        </div>

        <div class="row wrapper wrapper-content animated fadeInRight">
            <div class="col-lg-12">
                <div class="ibox float-e-margins">
                    <div class="ibox-title">
                        <div class="form-group">
                            <h3>留言主题：${message.msgTitle}</h3>
                            <span>留言人姓名：${message.userName}</span> &nbsp;&nbsp; <span>留言时间：${message.msgDate.toLocaleString()}</span> &nbsp;&nbsp;
                            <c:choose>
                                <c:when test="${message.msgResponse != null}">
                                    <span>状态：已回复</span>
                                </c:when>
                                <c:otherwise>
                                    <span>状态：未回复</span>
                                </c:otherwise>
                            </c:choose>
                        </div>
                        <div class="faq-answer">
                            <p>
                                ${message.msgContent}
                            </p>
                        </div>
                        <br>
                        <h3>回复如下：</h3>
                        <c:choose>
                            <c:when test="${message.msgResponse != null}">
                                <div class="faq-answer">
                                    <p>
                                            ${message.msgResponse}
                                    </p>
                                </div>
                            </c:when>
                        </c:choose>
                    </div>
                    <%--<div class="form-group">
                        <textarea class="form-control" name="msgContent" rows="6" placeholder="您的回复"></textarea>
                    </div>
                    <div class="form-group text-center">
                        <a href="" class="btn btn-primary">回复</a>
                    </div>--%>
                </div>
            </div>
        </div>
        <div class="footer">
            <div class="pull-right">
                <%--10GB of <strong>250GB</strong> Free.--%>
            </div>
            <div>
                <%--<strong>Copyright</strong> Example Company &copy; 2014-2015--%>
            </div>
        </div>

    </div>
</div>



<!-- Mainly scripts -->
<script src="assets/inspinia/js/jquery-2.1.1.js"></script>
<script src="assets/inspinia/js/bootstrap.min.js"></script>
<script src="assets/inspinia/js/plugins/metisMenu/jquery.metisMenu.js"></script>
<script src="assets/inspinia/js/plugins/slimscroll/jquery.slimscroll.min.js"></script>

<!-- Custom and plugin javascript -->
<script src="assets/inspinia/js/inspinia.js"></script>
<script src="assets/inspinia/js/plugins/pace/pace.min.js"></script>

<!-- Steps -->
<script src="assets/inspinia/js/plugins/staps/jquery.steps.min.js"></script>

<!-- Jquery Validate -->
<script src="assets/inspinia/js/plugins/validate/jquery.validate.min.js"></script>


</body>

</html>

