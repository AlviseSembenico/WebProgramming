<%-- 
    Document   : cart
    Created on : Sep 22, 2017, 7:34:48 PM
    Author     : Alvise
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="Dao.entities.*"%>
<%@page import="Dao.*"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
    <!DOCTYPE html>
    <html>
    <c:import url="../pageBuilder/header.jsp"/>
    <body class="product-page">
        <div class="page-header header-filter" data-parallax="true" style="background-image: url('https://www.happywall.co.uk/uploads/galleri/1204/forest_landscape_gallery.jpg');">
            <div class="container">
                <div class="row title-row">
                    <div class="col-md-4 col-md-offset-8">
                        <button class="btn btn-white pull-right"><i class="material-icons">shopping_cart</i> <c:out value="${cart.getProducts().size()}"/> Items</button>
                    </div>
                </div>
            </div>
        </div>
        <div class="section section-gray">
            <div class="container">
                <div class="main main-raised main-product">
                    <div class="container tim-container">
                        <div id="tables">
                            <div class="row">
                                <div class="col-md-12">
                                    <h4>All Purchases</h4>
                                </div>
                                <div class="col-md-10">
                                    <div class="row">
                                        <div class="col-md-2 text-center"> 
                                            PRODUCT
                                        </div>
                                        <div class="col-md-3 text-center"> 
                                            NAME
                                        </div>
                                        <div class="col-md-2 th-description"> 
                                            DESCRIPTION
                                        </div>
                                        <div class="col-md-1"> 
                                            PRICE
                                        </div>
                                        <div class="col-md-2 th-description"> 
                                            DATE
                                        </div>
                                        <div class="col-md-1 th-description"> 
                                            STATUS ORDER 
                                        </div>
                                        <div class="col-md-1"> 
                                            REVIEW
                                        </div>
                                    </div>
                                    <hr>
                                  
                                    <c:forEach var="i" items="${purchaseDao.getPurchaseByUser(user)}">
                                        <div class="row">
                                            <div class="col-md-2 td-name"> 
                                                <div class="img-container" style="width: 100%; max-width: 120px">
                                                    <img alt="..." src="<c:out value='${pictureDao.getPictureByProduct(i.getProduct()).get(0).getPath()}'/>">
                                                </div>
                                            </div>
                                            <div class="col-md-3 col-main">
                                                <a href="../product?id=<c:out value='${i.getProduct().getId()}'/>"><c:out value="${i.getProduct().getName()}"/></a>
                                            </div>
                                            <div class="col-md-2 col-name"> 
                                                <c:out value="${i.getProduct().getDescription()}"/>
                                            </div>
                                            <div class="col-md-1  col-number text-left"> 
                                                <small>€</small><c:out value="${i.getProduct().getPrice()}"/>
                                            </div>
                                            <div class="col-md-2 col-name" >                                                
                                                <c:out value='${i.strDate()}'/>
                                            </div>
                                            <div class="col-md-1 col-name"> 
                                                <c:out value='${i.strStatus()}'/>   
                                            </div>
                                            <div class="col-md-1 col-name">
                                                <div class="row">                                                    
                                                    <a href="AddReview?id=<c:out value="${i.getId()}"/>"class="btn btn-primary btn-round">AddReview</a>                             
                                                </div>
                                                <div class="row">
                                                    <a href="AddAnomaly?id=<c:out value="${i.getId()}"/>"class="btn btn-primary btn-round">AddAnomaly</a>             
                                                </div>
                                            </div>
                                        </div>
                                        <br/>
                                    </c:forEach>
                                    
                                </div>
                            </div>
                            <br/>
                            <br/>
                            <a href="index" class="btn btn-primary btn-round"  > Return to shopping </a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
                    
    </body>
    <c:import url="../pageBuilder/footer.jsp"/>
