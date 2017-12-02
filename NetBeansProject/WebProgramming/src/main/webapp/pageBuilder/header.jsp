<%-- 
    Document   : header
    Created on : Sep 9, 2017, 4:33:12 PM
    Author     : Alvise
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<c:set var="user" value="${sessionScope.user}"></c:set>
    <!DOCTYPE html>
    <html lang="it">
        <head>
            <meta charset="utf-8" />
            <link rel="apple-touch-icon" sizes="76x76" href="assets/img/apple-icon.png">
            <link rel="icon" type="image/png" href="assets/img/favicon.png">
            <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />

            <title>EcoMmerce</title>

            <meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0' name='viewport' />

            <!-- Canonical SEO -->
            <link rel="canonical" href="http://www.creative-tim.com/product/material-kit-pro" />

            <!--     Fonts and icons     -->
            <link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700|Roboto+Slab:400,700|Material+Icons" />
            <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css" />
            <link rel="stylesheet" href="https://netdna.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css">

            <!-- CSS Files -->
            <link href="assets/css/bootstrap.min.css" rel="stylesheet" />
            <link href="assets/css/demo.css" rel="stylesheet" />
            <link href="assets/css/style.css" rel="stylesheet" />
            <link href="assets/css/unminify.css" rel="stylesheet"/>
        </head>
    <c:if test="${(empty param.trasparent) || param.trasparent eq 'true'     }">
        <nav class="navbar  navbar-transparent navbar-fixed-top navbar-color-on-scroll"  color-on-scroll=" " id="sectionsNav"> 
        </c:if>
        <c:if test="${param.trasparent eq 'false'}">
            <nav class="navbar navbar-fixed-top    "id="sectionsNav">
            </c:if>
            <div class="container">
                <!-- Brand and toggle get grouped for better mobile display -->
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a href="index.jsp">
                        <div class="logo-container">
                            <div class="logo">
                                <img  src="assets/img/logo.png" data-original-title="We could sell ice to Eskimos" data-html="true" data-placement="bottom" rel="tooltip">
                            </div>
                            <div class="brand">
                                Eco
                                mmErce
                            </div>
                        </div>
                    </a>
                </div>
                <div class="collpase navbar-collapse">

                    <ul class="nav navbar-nav ">

                        <li class="dropdown">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                                <i class="material-icons">view_day</i> Sections
                                <b class="caret"></b>
                            </a>
                            <ul class="dropdown-menu dropdown-with-icons">
                                <li>
                                    <a href="../sections.html#headers">
                                        <i class="material-icons">dns</i> Headers
                                    </a>
                                </li>

                            </ul>
                        </li>

                        <li class="dropdown">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                                <i class="material-icons">view_carousel</i> Examples
                                <b class="caret"></b>
                            </a>
                            <ul class="dropdown-menu dropdown-with-icons">
                                <li>
                                    <a href="../examples/about-us.html">
                                        <i class="material-icons">account_balance</i> About Us
                                    </a>
                                </li>
                            </ul>
                        </li>
                        <c:choose>
                            <c:when test="${user eq null}">
                                <li class="dropdown">
                                    <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                                        <i class="material-icons">person</i> Login
                                        <b class="caret"></b>
                                    </a>
                                    <ul class="dropdown-menu dropdown-with-icons">
                                        <li>
                                            <a href="login">
                                                <i class="material-icons">person</i> Login
                                            </a>
                                        </li>
                                        <li>
                                            <a href="register">
                                                <i class="material-icons">person</i> Register
                                            </a>
                                        </li>
                                    </ul>
                                </li>
                            </c:when>

                            <c:otherwise>
                                <li class="dropdown">
                                    <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                                        <i class="material-icons">person</i> <c:out value="${user.getFirstName()}"/>
                                        <b class="caret"></b>
                                    </a>
                                    <ul class="dropdown-menu dropdown-with-icons">
                                        <li>
                                            <a href="personal">
                                                <i class="material-icons">settings</i> Profilo
                                            </a>
                                        </li>
                                        <li>
                                            <a href="logout">
                                                <i class="material-icons">power_settings_new</i> Logout
                                            </a>
                                        </li>
                                    </ul>
                                </li>
                            </c:otherwise>
                        </c:choose>
                     
                        <li>
                            <a href="cart" class="btn btn-rose btn-round">
                                <i class="material-icons">shopping_cart</i>Cart
                            </a>
                        </li>
                    </ul>

                    <form class="navbar-form navbar-right" role="search" method="get" action="result" >
                        <div class="form-group form-white is-empty">
                            <input style=" color: white" class="form-control " type="text" name="name" placeholder="">
                            <span class="material-input"></span></div>
                        <button class="btn btn-white btn-raised btn-fab btn-fab-mini" type="submit"><i class="material-icons">search</i></button>
                    </form>



                </div>
            </div>
        </nav>