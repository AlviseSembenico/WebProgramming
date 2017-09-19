<%-- 
    Document   : header
    Created on : Sep 9, 2017, 4:33:12 PM
    Author     : Alvise
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
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

        <!-- CSS Files -->
        <link href="assets/css/bootstrap.min.css" rel="stylesheet" />
        <link href="assets/css/demo.css" rel="stylesheet" />
        <link href="assets/css/style.css" rel="stylesheet" />
        <link href="assets/css/unminify.css" rel="stylesheet"/>
    </head>
    <c:if test="${param.trasparent eq 'true' || (empty param.trasparent) }">
        <nav class="navbar navbar-transparent navbar-fixed-top navbar-color-on-scroll" role="navigation">
    </c:if>
    <c:if test="${param.trasparent eq 'false'}">
         <nav class="navbar navbar-fixed-top    " role="navigation">
    </c:if>
        <div class="container">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#navigation-example">
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
                <ul class="nav navbar-nav navbar-right">
                    <li>
                        <a href="../index.html">
                            <i class="material-icons">apps</i> Components
                        </a>
                    </li>

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
                            <li>
                                <a href="../sections.html#features">
                                    <i class="material-icons">build</i> Features
                                </a>
                            </li>
                            <li>
                                <a href="../sections.html#blogs">
                                    <i class="material-icons">list</i> Blogs
                                </a>
                            </li>
                            <li>
                                <a href="../sections.html#teams">
                                    <i class="material-icons">people</i> Teams
                                </a>
                            </li>
                            <li>
                                <a href="../sections.html#projects">
                                    <i class="material-icons">assignment</i> Projects
                                </a>
                            </li>
                            <li>
                                <a href="../sections.html#pricing">
                                    <i class="material-icons">monetization_on</i> Pricing
                                </a>
                            </li>
                            <li>
                                <a href="../sections.html#testimonials">
                                    <i class="material-icons">chat</i> Testimonials
                                </a>
                            </li>
                            <li>
                                <a href="../sections.html#contactus">
                                    <i class="material-icons">call</i> Contacts
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
                            <li>
                                <a href="../examples/blog-post.html">
                                    <i class="material-icons">art_track</i> Blog Post
                                </a>
                            </li>
                            <li>
                                <a href="../examples/blog-posts.html">
                                    <i class="material-icons">view_quilt</i> Blog Posts
                                </a>
                            </li>
                            <li>
                                <a href="../examples/contact-us.html">
                                    <i class="material-icons">location_on</i> Contact Us
                                </a>
                            </li>
                            <li>
                                <a href="../examples/landing-page.html">
                                    <i class="material-icons">view_day</i> Landing Page
                                </a>
                            </li>
                            <li>
                                <a href="../examples/login-page.html">
                                    <i class="material-icons">fingerprint</i> Login Page
                                </a>
                            </li>
                            <li>
                                <a href="../examples/pricing.html">
                                    <i class="material-icons">attach_money</i> Pricing Page
                                </a>
                            </li>
                            <li>
                                <a href="../examples/ecommerce.html">
                                    <i class="material-icons">shop</i> Ecommerce Page
                                </a>
                            </li>
                            <li>
                                <a href="../examples/product-page.html">
                                    <i class="material-icons">beach_access</i> Product Page
                                </a>
                            </li>
                            <li>
                                <a href="../examples/profile-page.html">
                                    <i class="material-icons">account_circle</i> Profile Page
                                </a>
                            </li>
                            <li>
                                <a href="../examples/signup-page.html">
                                    <i class="material-icons">person_add</i> Signup Page
                                </a>
                            </li>
                        </ul>
                    </li>

                    <li>
                        <a href="http://www.creative-tim.com/buy/material-kit-pro?ref=presentation" target="_blank" class="btn btn-white btn-simple">
                            <i class="material-icons">shopping_cart</i> Buy Now
                        </a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>