<%-- 
    Document   : cart
    Created on : Sep 22, 2017, 7:34:48 PM
    Author     : Alvise
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>


<c:import url="/pageBuilder/header.jsp"/>
<body class="profile-page">
    <div class="page-header header-filter" data-parallax="true" style="background-image: url('https://www.happywall.co.uk/uploads/galleri/1204/forest_landscape_gallery.jpg');">
        <div class="container">
            <div class="row title-row">
                <div class="col-md-4 col-md-offset-8">
                    <button class="btn btn-white pull-right"><i class="material-icons">shopping_cart</i> <c:out value="${cart.getProducts().size()}"/> Items</button>
                </div>
            </div>
        </div>
    </div>
    <div class="main main-raised main-cart">

        <img src="https://i.ytimg.com/vi/HO8ctP_QNZc/maxresdefault.jpg"/>
    </div>

    <c:import url="/pageBuilder/footer.jsp"/>

