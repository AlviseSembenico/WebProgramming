<%-- 
    Document   : cart
    Created on : Sep 22, 2017, 7:34:48 PM
    Author     : Alvise
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="Dao.entities.*"%>
<%@page import="Dao.*"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/fmt" prefix = "fmt" %>
    <!DOCTYPE html>
    <html>
    <c:import url="/pageBuilder/header.jsp"/>
    <body class="product-page">
        <div class="page-header header-filter" data-parallax="true" style="background-image: url('https://www.happywall.co.uk/uploads/galleri/1204/forest_landscape_gallery.jpg');">
            <div class="container">
            </div>
        </div>
        <div class="section section-gray">
            <div class="container">
                <div class="main main-raised main-product">
                    <div class="container tim-container">
                        <div id="tables">
                            <div class="row">
                                <div class="col-md-12">
                                    <h3>My Orders</h3>
                                </div>
                                <div class="col-md-10 col-md-offset-1">
                                    <div class="row">
                                        <div class="col-md-2 text-center"> 
                                            PRODUCT
                                        </div>
                                        <div class="col-md-3 text-center"> 
                                            NAME
                                        </div>
                                        <div class="col-md-1"> 
                                            PRICE
                                        </div>
                                        <div class="col-md-2 th-description"> 
                                            DATE OF PURCHASE
                                        </div>
                                        <div class="col-md-2 th-description"> 
                                            SHOP 
                                        </div>
                                        <div class="col-md-2 th-description"> 
                                            ACTION
                                        </div>
                                    </div>
                                    <hr>
                                    <c:forEach var="i" items="${purchaseList}">
                                        <div class="row">
                                            <div class="col-md-2 td-name"> 
                                                <div class="img-container" style="width: 100%; max-width: 120px">
                                                    <img alt="..." src="<c:out value='${pictureDao.getPictureByProduct(i.getProduct()).get(0).getPath()}'/>">
                                                </div>
                                            </div>
                                            <div class="col-md-3 col-main">
                                                <a href="./product?id=<c:out value='${i.getProduct().getId()}'/>"><c:out value="${i.getProduct().getName()}"/></a>

                                            </div>
                                            <div class="col-md-1  col-number text-left"> 
                                                <small>€</small><c:out value="${i.getPrice()}"/>
                                            </div>
                                            <div class="col-md-2 col-name" >
                                                <fmt:formatDate type="both" pattern="dd-MM-yyyy" value="${i.getDate()}"/>
                                                
                                            </div>
                                            <div class="col-md-2 col-name"> 
                                                <a href="./shop?id=<c:out value='${i.getProduct().getShop().getId()}'/>"><c:out value="${i.getProduct().getShop().getName()}"/></a>    
                                            </div>
                                            <div class="col-md-2 col-name"> 
                                                <a href="./addAnomaly?id=<c:out value='${i.getProduct().getId()}'/>">Add anomaly</a>    
                                            </div>
                                            
                                        </div>
                                    </c:forEach>

                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <c:import url="/pageBuilder/footer.jsp"/>
