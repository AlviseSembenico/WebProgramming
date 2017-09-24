<%-- 
    Document   : product.jsp
    Created on : 22-set-2017, 11.13.20
    Author     : Utente
--%>

<%@page import="Dao.entities.Product"%>
<%@page import="Dao.ProductDao"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<c:set var="productDao" value="${pageContext.servletContext.getAttribute('productDao')}"></c:set>
<c:set var="product" value="${productDao.getById(param.id)}"></c:set>
<c:set var="pictureDao" value="${pageContext.servletContext.getAttribute('pictureDao')}"></c:set>
<c:set var="picture" value="${pictureDao.getPictureByProduct(product)}"></c:set>
    <!DOCTYPE html>
    <!doctype html>
    <html>
    <c:import url="pageBuilder/header.jsp"/>
    <body class="product-page">

        <div class="page-header header-filter" data-parallax="true" filter-color="lightblue" style="background-image: url(http://www.nonsprecare.it/wp-content/uploads/2013/03/credito-okok.jpg);">
            <div class="container">
                <div class="row title-row">
                </div>
            </div>
        </div>
        <div class="section section-gray">
            <div class="container">
                <div class="main main-raised main-product">
                    <div class="row">
                        <div class="col-md-6 col-sm-6">

                            <div class="tab-content">
                                <div class="tab-pane active" id="product-page<c:out value='${picture.get(0).getId()}'/>">
                                    <img src="<c:out value='${picture.get(0).getPath()}'/>">
                                </div>

                                <c:forEach var="i" items="${picture}" begin="1">
                                    <div class="tab-pane" id="product-page<c:out value='${i.getId()}'/>">
                                        <img src="<c:out value='${i.getPath()}'/>">
                                    </div>
                                </c:forEach>
                            </div>
                            <ul class="nav flexi-nav" role="tablist" id="flexiselDemo1">

                                <li class="active">
                                    <a href="#product-page<c:out value='${picture.get(0).getId()}'/>" role="tab" data-toggle="tab" aria-expanded="true">
                                        <img src="<c:out value='${picture.get(0).getPath()}'/>"/>
                                    </a>
                                </li>

                                <c:forEach var="i" items="${picture}" begin="1">
                                    <li>
                                        <a href="#product-page<c:out value='${i.getId()}'/>" role="tab" data-toggle="tab" aria-expanded="false">
                                            <img src="<c:out value='${i.getPath()}'/>"/>
                                        </a>
                                    </li>
                                </c:forEach>

                            </ul>
                        </div>
                    </div>

                       <div class="col-md-6 col-sm-6">
                            <h2 class="title" ><c:out value="${product.getName()}"/> </h2>
                            <h3 class="main-price"><c:out value="${product.getPrice()}"/> $</h3>
                            <div id="acordeon">
                                <div class="panel-group" id="accordion">
                                    <div class="panel panel-border panel-default">
                                        <div class="panel-heading" role="tab" id="headingOne">
                                            <a role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseOne" aria-expanded="true" aria-controls="collapseOne" style="color: black">
                                                <h4 class="panel-title">
                                                    Description
                                                    <i class="material-icons">keyboard_arrow_down</i>
                                                </h4>
                                            </a>
                                        </div>
                                        <div id="collapseOne" class="panel-collapse collapse in" style="color: black">
                                            <div class="panel-body">
                                                <p><c:out value="${product.getDescription()}"/></p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                       </div>

                            <div class="row pick-size">
                                <div class="col-md-6 col-sm-6">
                                    <label>Select color</label>
                                    <select class="selectpicker" data-style="select-with-transition" data-size="7">
                                        <option value="1">Rose </option>
                                        <option value="2">Gray</option>
                                        <option value="3">White</option>
                                    </select>
                                </div>
                                <div class="col-md-6 col-sm-6">
                                    <label>Select size</label>
                                    <select class="selectpicker" data-style="select-with-transition" data-size="7">
                                        <option value="1">Small </option>
                                        <option value="2">Medium</option>
                                        <option value="3">Large</option>
                                    </select>
                                </div>
                            </div>
                            <div class="row text-right">
                                <button class="btn btn-rose btn-round">Add to Cart &nbsp;<i class="material-icons">shopping_cart</i></button>
                            </div>
                        </div>
                    </div>
                </div>


            </div>

        </div>





        <c:import url="pageBuilder/footer.jsp"/>