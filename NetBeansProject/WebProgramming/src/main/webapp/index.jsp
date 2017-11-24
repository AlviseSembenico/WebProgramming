<%-- 
Document   : index
Created on : Sep 17, 2017, 7:43:18 PM
Author     : Alvise
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<!doctype html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <link rel="apple-touch-icon" sizes="76x76" href="assets/img/apple-icon.png">
        <link rel="icon" type="image/png" href="assets/img/favicon.png">
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />

        <title>EcoMmerce</title>

        <meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0' name='viewport' />

        <!--     Fonts and icons     -->
        <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons" />
        <link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700" />
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css" />

        <!-- CSS Files -->
        <link href="assets/css/bootstrap.min.css" rel="stylesheet" />
        <link href="assets/css/material-kit.css" rel="stylesheet"/>

        <!-- CSS Just for demo purpose, don't include it in your project -->
        <link href="assets/css/demo.css" rel="stylesheet" />

    </head>

    <c:import url="pageBuilder/header.jsp?trasparent=true"/>
    <div class="wrapper">
        <div class="page-header header-filter" style="background-image: url('assets/img/bg2.jpeg');">
            <div class="container">
                <div class="row">
                    <div class="col-md-8 col-md-offset-2">
                        <div class="brand">
                            <h1>Yes, we have it</h1>
                            <h3>Whatever you look for ... we have it</h3>
                        </div>
                    </div>
                </div>
                
                <!-- Carousel -->
                <div class="container" style="padding-top: 40px;">
                <div class="section" id="carousel">
                    <h2>Let you be inspired by us </h2>
                    <div class="container" style="padding-top: 40px;">
                        <div class="row">
                            <div class="col-md-8 col-md-offset-2">

                                <!-- Carousel Card -->
                                <div class="card card-raised card-carousel">
                                    <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
                                        <div class="carousel slide" data-ride="carousel">

                                            <!-- Indicators -->

                                            <ol class="carousel-indicators">
                                                <c:forEach var="i" begin="0" end="9">
                                                    <li data-target="#carousel-example-generic" data-slide-to="${i}" <c:if test="${i == 0}"> class="active"</c:if>></li>
                                                </c:forEach> </ol>

                                            <!-- Wrapper for slides -->
                                            <div class="carousel-inner">
                                                <c:forEach var="i" begin="0" end="9">
                                                    <div class="item <c:if test='${i == 0}'> active </c:if>" >
                                                        <c:set var="picture" value="${pictureDao.getPictureByProduct(product.get(i))}"/>
                                                        <img src="<c:out value='${picture.get(0).getPath()}'/>" style="height: 250px; width: 500px;padding-left: 250px;">
                                                        <div class="carousel-inner">
                                                            <a href="product?id=${product.get(i).getId()}"><i class="material-icons">touch_app</i><h4><c:out value="${product.get(i).getName()}"/></h4></a>
                                                        </div>
                                                    </div>
                                                </c:forEach>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            

                                <!-- Controls -->
                                <a class="left carousel-control" href="#carousel-example-generic" data-slide="prev">
                                    <i class="material-icons">keyboard_arrow_left</i>
                                </a>
                                <a class="right carousel-control" href="#carousel-example-generic" data-slide="next">
                                    <i class="material-icons">keyboard_arrow_right</i>
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
                    <!-- End Carousel Card -->

                </div>
            </div>
        </div>
  


<c:import url="pageBuilder/footer.jsp"/>

</html>