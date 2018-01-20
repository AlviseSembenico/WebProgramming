<%-- 
    Document   : cart
    Created on : Sep 22, 2017, 7:34:48 PM
    Author     : Alvise
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="Dao.entities.*"%>
<%@page import="Dao.*"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>

<body class="landing-page">
<c:import url="/pageBuilder/header.jsp"/>

 <div class="page-header header-filter" style='background-image: url("../assets/img/bg8.jpg"); transform: translate3d(0px, 80px, 0px);' data-parallax="true">
        <div class="container">
            <div class="row">
                <div class="col-md-6">
                    <h1 class="title">Your Story Starts With Us.</h1>
                    <h4>Every landing page needs a small description after the big bold title, that's why we added this text here. Add here all the information that can make you or your product create the first impression.</h4>
                    <br>
                    <a class="btn btn-danger btn-raised btn-lg" href="https://www.youtube.com/watch?v=dQw4w9WgXcQ" target="_blank">
                        <i class="fa fa-play"></i> Watch video
                    </a>
                </div>
            </div>
        </div>
    </div>
        <img src="https://i.ytimg.com/vi/HO8ctP_QNZc/maxresdefault.jpg"/>
    </div>

    <c:import url="/pageBuilder/footer.jsp"/>

