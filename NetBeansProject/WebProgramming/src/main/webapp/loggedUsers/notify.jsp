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
<html>
    <c:import url="/pageBuilder/header.jsp"/>
    <body class="contact-page">        
        <div class="page-header header-filter header-small" data-parallax="true" style="background-image: url('');">
            <div class="container"> 
                <div class="row">
                    <div class="col-md-8 col-md-offset-2">
                        <div class="brand">
                            <h1 class="title text-center">Notifiche</h1>                                
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div id="notfy" class="main main-raised">
            <div class="contact-content">
                <div class="container">
                    <div class="row">
                        <c:choose>
                            <c:when test="${user.getPrivileges().equals('admin')}">
                                <c:choose>
                                    <c:when test="${anomalie.get(0) != null}">
                                        <div class="col-md-12">
                                            <h1>Anomalies</h1>  
                                            <div class="table-responsive">
                                                <table class="table">
                                                    <thead>
                                                        <tr>
                                                            <th class="text-center">#</th>
                                                            <th>Product</th>
                                                            <th>Description</th>
                                                            <th>Date of purchase</th>
                                                            <th>Problem</th>
                                                            <th class="text-right">Actions</th>
                                                        </tr>
                                                    </thead>
                                                    <tbody>
                                                        <c:forEach var="i" begin="0" end="${anomalie.size()-1}">                                                
                                                            <tr>
                                                                <td class="text-center">${i+1}</td>
                                                                <td>${anomalie.get(i).getPurchase().getProduct().getName()}</td>
                                                                <td>${anomalie.get(i).getDescription()}</td>
                                                                <td>${anomalie.get(i).getPurchase().getDate()}</td>
                                                                <td class="text-right">${anomalie.get(i).getTag()}</td>
                                                                <td class="td-actions text-right">
                                                                    <form id="form" action="notify" method="POST">
                                                                        <input id="act" hidden="true" name="action"/>
                                                                        <input  hidden="true" name="index" value="${i}"/>
                                                                        <button type="submit" rel="tooltip" class="btn btn-success" data-original-title="" onclick="{
                                                                                    document.getElementById('act').value = 'Resolve';
                                                                                }" title="Refound">
                                                                            <i class="material-icons">edit</i>
                                                                        </button>

                                                                        <button type="submit" rel="tooltip" class="btn btn-danger" data-original-title="" onclick="{
                                                                                    document.getElementById('act').value = 'Reject';
                                                                                }"  title="Ignore">
                                                                            <i class="material-icons">close</i>
                                                                        </button>
                                                                    </form>
                                                                </td>
                                                            </tr>
                                                        </c:forEach>
                                                    </tbody>
                                                </table>
                                            </div>
                                        </div>
                                    </c:when>
                                    <c:otherwise>
                                        <h2>There's no new Anomalies..</h2>
                                    </c:otherwise>
                                </c:choose>
                            </c:when>
                        </c:choose>
                        <hr/>
                        <div class="row">
                            <c:choose>
                                <c:when test="${reviews.get(0) != null}">
                                    <div class="col-md-12">
                                        <h1>Reviews</h1>
                                        <div class="table-responsive">
                                            <form action="notifiche" method="get">
                                                <table class="table table-striped">
                                                    <thead>
                                                        <tr>
                                                            <th class="text-center">#</th>
                                                            <th></th>
                                                            <th>Description</th>
                                                            <th>Rating</th>
                                                            <th>Reviewer</th>
                                                            <th class="text-right">Product</th>
                                                            <th class="text-right">Date</th>
                                                        </tr>
                                                    </thead>
                                                    <tbody>
                                                        <c:forEach var="i" begin="0" end="${reviews.size()-1}">
                                                            <tr>
                                                                <td class="text-center">${i+1}</td>
                                                                <td>
                                                                    <div class="checkbox">
                                                                        <label>
                                                                            <input type="checkbox" name="${i}" checked=""><span class="checkbox-material"></span>
                                                                        </label>
                                                                    </div>
                                                                </td>
                                                                <td>${reviews.get(i).getDescription()}</td>
                                                                <td><i class="a-icon a-icon-star a-star-${reviews.get(i).getQuality()}"></i></td>
                                                                <td>${reviews.get(i).getCreator().getLastName()} ${reviews.get(i).getCreator().getFirstName()} </td>
                                                                <td class="text-right">${reviews.get(i).getProduct().getName()}</td>
                                                                <td class="text-right">${reviews.get(i).getCreationDate()}</td>
                                                            </tr>
                                                        </c:forEach>                                                    
                                                    </tbody>                                              
                                                </table>
                                                <button type="submit" class="btn btn-primary btn-round" >Mark Read</button>
                                            </form>
                                        </div>
                                    </div>
                                </c:when>
                                <c:otherwise>
                                    <h2>There's no new reviews...</h2>
                                </c:otherwise>
                            </c:choose>
                        </div>
                    </div>
                </div> 
            </div>
        </div>
        <c:import url="/pageBuilder/footer.jsp"/>