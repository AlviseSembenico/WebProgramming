<%-- 
    Document   : notifiche
    Created on : 25-nov-2017, 16.11.11
    Author     : zappi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ page session="true" %>

<!DOCTYPE html>
<!doctype html>
<%@ page session="true" %>
<c:import url="/pageBuilder/header.jsp"/>

    <body class="profile-page">        
        <div class="page-header header-filter " data-parallax="true" style="background-image: url('https://www.changeboard.com/images/7167/default/feedback-1-.jpg'); height: 40vh; min-height: 40vh;">
            
        </div>
        <div id="notfy" class="main main-raised main-cart">
            <div class="contact-content">
                <div class="container">
                    <div class="row">
                        <c:choose>
                            <c:when test="${anomalie.get(0) != null}">
                                <div class="col-md-12">
                                    <h2>Anomalies</h2>  
                                    <div class="table-responsive">
                                        <table class="table">
                                            <thead>
                                                <tr>
                                                    <th class="text-center">#</th>
                                                    <th>Product</th>
                                                    <th>Description</th>                                                    
                                                    <th>Status</th>
                                                    <th>Solution</th>
                                                    <th>Date of purchase</th>
                                                    <th>Problem</th>
                                                        <c:choose>
                                                            <c:when test="${user.getPrivileges().equals('admin')}">
                                                            <th class="text-right">Actions</th>
                                                            </c:when>
                                                        </c:choose>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <c:forEach var="i" begin="0" end="${anomalie.size()-1}">                                                
                                                    <tr>
                                                        <td class="text-center">${i+1}</td>
                                                        <td>${anomalie.get(i).getPurchase().getProduct().getName()}</td>
                                                        <td>${anomalie.get(i).getDescription()}</td>
                                                        <td>${anomalie.get(i).getStatus()}</td>
                                                        <td>${anomalie.get(i).getSolution()}</td>
                                                        <td>${anomalie.get(i).getPurchase().getDate()}</td>
                                                        <td>${anomalie.get(i).getTag()}</td>
                                                        <c:choose>
                                                            <c:when test="${user.getPrivileges().equals('admin') and anomalie.get(i).getStatus().equals('not verified')}">
                                                                <td class="td-actions text-right">
                                                                    <form id="form${i}" action="notify" method="POST">
                                                                        <input id="act${i}" hidden="true" name="action"/>
                                                                        <input  hidden="true" name="index" value="${i}"/>
                                                                        <button type="button" rel="tooltip" class="btn btn-success" data-original-title="" onclick="{
                                                                                    document.getElementById('act${i}').value = 'Resolve';
                                                                                    document.getElementById('form${i}').submit();
                                                                                }" title="Refound">
                                                                            <i class="material-icons">attach_money</i>
                                                                        </button>

                                                                        <button type="button" rel="tooltip" class="btn btn-danger" data-original-title="" onclick="{
                                                                                    document.getElementById('act${i}').value = 'Reject';
                                                                                    document.getElementById('form${i}').submit();
                                                                                }"  title="Reject">
                                                                            <i class="material-icons">close</i>
                                                                        </button>
                                                                        <button type="button" rel="tooltip" class="btn btn-rose" data-original-title="" onclick="{
                                                                                    document.getElementById('act${i}').value = 'Review';
                                                                                    document.getElementById('form${i}').submit();
                                                                                }"  title="Add negative review">
                                                                            <i class="material-icons">launch</i>
                                                                        </button>
                                                                    </form>
                                                                </td>
                                                            </c:when>
                                                            <c:otherwise>
                                                                <td class="td-actions text-right">
                                                                    <i class="material-icons" style="color: #00ff00">check</i>
                                                                </td>
                                                            </c:otherwise>
                                                        </c:choose>
                                                    </tr>
                                                </c:forEach>
                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                            </c:when>
                            <c:otherwise>
                                <h3>There's no new Anomalies..</h3>
                            </c:otherwise>
                        </c:choose>
                    </div>
                        <hr/>
                        <div class="row">
                            
                            <c:choose>
                                <c:when test="${reviews.get(0) != null}">
                                    <div class="col-md-12">
                                        <h2>Reviews</h2>
                                        <div class="table-responsive">
                                            <form action="notify" method="post">
                                                <table class="table table-striped">
                                                    <thead>
                                                        <tr>
                                                            <th class="text-center">#</th>
                                                            <th>Description</th>
                                                            <th>Rating</th>
                                                            <th>Reviewer</th>
                                                            <th class="text-right">Product</th>
                                                            <th class="text-right">Date</th>
                                                            <th></th>
                                                        </tr>
                                                    </thead>
                                                    <tbody>
                                                        <c:forEach var="i" begin="0" end="${reviews.size()-1}">
                                                            <tr>
                                                                <td class="text-center">${i+1}</td>                                                                
                                                                <td>${reviews.get(i).getDescription()}</td>
                                                                <td><i class="a-icon a-icon-star a-star-${reviews.get(i).getQuality()}"></i></td>
                                                                <td>${reviews.get(i).getCreator().getLastName()} ${reviews.get(i).getCreator().getFirstName()} </td>
                                                                <td class="text-right">${reviews.get(i).getProduct().getName()}</td>
                                                                <td class="text-right">${reviews.get(i).getCreationDate()}</td>
                                                                <td>
                                                                    <a href="reviewsReply?id=${reviews.get(i).getId()}" class="btn btn-rose"  title="Reply review ">
                                                                        <i class="material-icons">reply</i>
                                                                    </a>
                                                                </td>
                                                            </tr>
                                                        </c:forEach>                                                    
                                                    </tbody>                                              
                                                </table>
                                            </form>
                                        </div>
                                    </div>
                                </c:when>
                                <c:otherwise>
                                    <h3>There are no new Reviews...</h3>
                                </c:otherwise>
                            </c:choose>
                        </div>
                    </div>
                </div> 
            </div>
        </div>
        <c:import url="/pageBuilder/footer.jsp"/>
        <c:if test="${!(empty param.result) && param.result eq 'true'}">
            <script>
                $(document).ready(function () {
                    $("#successModal").modal("show");
                });
            </script>
        </c:if>
        <c:if test="${!(empty param.result) && param.result eq 'false'}">
            <script>
                $(document).ready(function () {
                    $("#errorModal").modal("show");
                });
            </script>
        </c:if>