<%@ page import="java.text.SimpleDateFormat" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%--
  Created by IntelliJ IDEA.
  User: FuShengqi
  Date: 2017/9/17
  Time: 21:29
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>

<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>INSPINIA | Empty Page</title>

    <link href="assets/inspinia/css/bootstrap.min.css" rel="stylesheet">
    <link href="assets/inspinia/font-awesome/css/font-awesome.css" rel="stylesheet">

    <link href="assets/inspinia/css/animate.css" rel="stylesheet">
    <link href="assets/inspinia/css/style.css" rel="stylesheet">

</head>

<body class="">

<div id="wrapper">

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
                    <a href="layouts.html"><i class="fa fa-diamond"></i> <span class="nav-label">我的收支情况</span></a>
                </li>
            </ul>
        </div>
    </nav>

    <div id="page-wrapper" class="gray-bg">
        <div class="row border-bottom">
            <nav class="navbar navbar-static-top  " role="navigation" style="margin-bottom: 0">
                <div class="navbar-header">
                    <a class="navbar-minimalize minimalize-styl-2 btn btn-primary " href="#"><i class="fa fa-bars"></i> </a>
                    <form role="search" class="navbar-form-custom" action="search_results.html">
                        <div class="form-group">
                            <%--<input type="text" placeholder="Search for something..." class="form-control" name="top-search" id="top-search">--%>
                        </div>
                    </form>
                </div>
                <ul class="nav navbar-top-links navbar-right">
                    <li class="dropdown">
                        <a class="dropdown-toggle count-info" data-toggle="dropdown" href="#">
                            <i class="fa fa-envelope"></i>  <span class="label label-warning">16</span>
                        </a>
                        <ul class="dropdown-menu dropdown-messages">
                            <li>
                                <div class="dropdown-messages-box">
                                    <a href="#" class="pull-left">
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
                        <a class="dropdown-toggle count-info" data-toggle="dropdown" href="empty_page.html#">
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
        <div class="row wrapper border-bottom white-bg page-heading">
            <c:choose>
                <c:when test="${fn:length(orders) != 0}">
                    <div class="col-sm-4">
                        <h2>已完成订单</h2>
                    </div>
                </c:when>
                <c:otherwise>
                    <div class="col-sm-4">
                        <h2>暂无已完成订单</h2>
                    </div>
                </c:otherwise>
            </c:choose>
        </div>

        <c:forEach items="${orders}" var="order">
            <div class="row">
                <div class="col-lg-12">
                    <div class="ibox float-e-margins">
                        <div class="ibox-title">
                            <h5>订单编号：<c:out value="${order.orderUUID}"></c:out></h5>
                            <h5>&nbsp;&nbsp;&nbsp;状态：已完成 &nbsp;&nbsp;日期：<c:out value="${order.orderDate.toLocaleString()}"></c:out></h5>
                            <div class="ibox-tools">
                                <a class="collapse-link">
                                    <i class="fa fa-chevron-up"></i>
                                </a>
                                <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                                    <i class="fa fa-wrench"></i>
                                </a>
                                <ul class="dropdown-menu dropdown-user">
                                    <li><a href="typography.html#">Config option 1</a>
                                    </li>
                                    <li><a href="typography.html#">Config option 2</a>
                                    </li>
                                </ul>
                                <a class="close-link">
                                    <i class="fa fa-times"></i>
                                </a>
                            </div>
                        </div>
                        <div class="ibox-content">
                            <fieldset>
                                <div class="row">
                                    <div class="col-lg-4">
                                        <div class="form-group">
                                            <label>寄件人姓名 : <c:out value="${order.senderName}"></c:out></label>

                                        </div>
                                        <div class="form-group">
                                            <label>寄件地址 : <c:out value="${order.senderAddress}"></c:out></label>
                                                <%--<input  name="senderAddress" type="text" class="form-control required">--%>
                                        </div>
                                        <div class="form-group">
                                            <label>寄件人电话 : <c:out value="${order.senderTel}"></c:out></label>
                                                <%--<input  name="senderTel" type="text" class="form-control required">--%>
                                        </div>
                                    </div>

                                    <div class="col-lg-4">
                                        <div class="form-group">
                                            <label>收件人姓名 : <c:out value="${order.receiverName}"></c:out></label>
                                                <%--<input  name="receiverName" type="text" class="form-control required">--%>
                                        </div>
                                        <div class="form-group">
                                            <label>收件人地址 : <c:out value="${order.receiverAddress}"></c:out></label>
                                                <%--<input  name="receiverAddress" type="text" class="form-control required">--%>
                                        </div>
                                        <div class="form-group">
                                            <label>收件人电话 : <c:out value="${order.receiverTel}"></c:out></label>
                                                <%--<input  name="receiverTel" type="text" class="form-control required">--%>
                                        </div>
                                    </div>

                                    <div class="col-lg-4">
                                        <div class="form-group">
                                            <label>货物重量 : <c:out value="${order.weight}"></c:out></label>
                                                <%--<input  name="weight" type="text" class="form-control required">--%>
                                        </div>
                                        <div class="form-group">
                                            <label>配送类型 : <c:out value="${order.serviceName}"></c:out></label>
                                                <%--<select class="form-control m-b" name="serviceName">--%>
                                                <%--<option value="1">物流普运  ¥10/kg</option>--%>
                                                <%--<option value="2">物流快运  ¥20/kg</option>--%>
                                                <%--<option value="3">重货专运  ¥30/kg</option>--%>
                                                <%--</select>--%>

                                        </div>
                                        <div class="form-group">
                                            <label>配送金额 : <c:out value="${order.price}"></c:out></label>
                                                <%--<input id="confirm" name="confirm" type="text" class="form-control required">--%>
                                        </div>
                                    </div>
                                </div>

                            </fieldset>
                        </div>
                    </div>
                </div>
            </div>
        </c:forEach>
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


</body>

</html>
