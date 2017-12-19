<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ page session="true" %>

<!DOCTYPE html>
<!doctype html>
<html>
    <c:import url="pageBuilder/header.jsp"/>
    <body class="contact-page">        
        <div class="page-header header-filter header-small" data-parallax="true" style="background-image: url('${picture}');">
            <div class="container"> 
                <div class="row">
                    <div class="col-md-8 col-md-offset-2">
                        <div class="brand">
                            <h1 class="title text-center">${shop.getName()}</h1>                                
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="main main-raised">
            <div class="contact-content">
                <div class="container">
                    <div class="row">
                        <div class="col-md-6">
                            <div class="col-md-10 col-md-offset-1">                                
                                <div class="media-area">
                                    <h3 class="title">Comments</h3>
                                    <c:choose>
                                        <c:when test="${reviews[0] != null}">
                                            <c:forEach var="i" begin="${begin}" end="${end}">
                                                <div class="media">
                                                    <a class="pull-left" href="">
                                                        <div class="avatar">
                                                            <img class="media-object" src="${reviews[i].getCreator().getAvatarPath()}">
                                                        </div>
                                                    </a>
                                                    <div class="media-body">
                                                        <c:choose>
                                                            <c:when test="${reviews[i].getCreator().getId() == sessionScope.user.getId()}">
                                                                <h4 class="media-heading">you  <small>· ${reviews[i].DiffTime()} days ago</small></h4>

                                                            </c:when>
                                                            <c:otherwise>
                                                                <h4 class="media-heading">${reviews[i].getCreator().getFirstName()} ${reviews[i].getCreator().getLastName()}  <small>· ${reviews[i].DiffTime()} days ago</small></h4>

                                                            </c:otherwise>
                                                        </c:choose>
                                                        <i class="a-icon a-icon-star a-star-${reviews[i].getQuality()}"></i>
                                                        <h6 class="text-muted">Sul prodotto: <br/>${reviews[i].getProduct().getName()}</h6>
                                                        <p>${reviews[i].getDescription()}</p>
                                                    </div>
                                                </div>
                                                <hr/>
                                            </c:forEach>
                                        </c:when>
                                        <c:otherwise>
                                            <h2>Nessun commento...</h2>
                                        </c:otherwise>
                                    </c:choose>
                                </div>
                            </div>
                            <u class="pagination pagination-info">
                                <li><a <c:if test="${(begin-3)>=0}">href="shop?id=<c:out value="${id}"/>&begin=<c:out value="${begin-3}"/>"</c:if> style="color: black" >&lt; prev</a></li>
                                    <c:forEach var="i" begin="0" end="${len}">
                                        <c:if test="${i%3==0 && i != len}">
                                        <li><a href="shop?id=<c:out value="${id}"/>&begin=<c:out value="${i}"/>" style="color: black"><c:out value="${Integer(i/3)+1}"/></a></li>
                                        </c:if>
                                    </c:forEach>

                                <li><a <c:if test="${(begin+3)< len}">href="shop?id=<c:out value="${id}"/>&begin=<c:out value="${begin+3}"/>"</c:if> style="color: black">next &gt;</a></li>
                                </u>
                            </div>
                            <div class="col-md-4 col-md-offset-2">
                                <div class="info info-horizontal">
                                    <div class="icon icon-primary">
                                        <i class="material-icons">pin_drop</i>
                                    </div>
                                    <div class="description">
                                        <h4 class="info-title">Address</h4>
                                        <p>${shop.getStreet()}<br>
                                        ${shop.getCity()}<br>
                                        ${shop.getRegion()}<br>
                                        <a href="map.jsp?lat=${shop.getLatitude()}&long=${shop.getLongitude()}" class="btn btn-primary btn-round">Map</a>
                                    </p>
                                </div>
                            </div>
                            <div class="info info-horizontal">
                                <div class="icon icon-primary">
                                    <i class="material-icons">contacts</i>
                                </div>
                                <div class="description">
                                    <h4 class="info-title">Conctact</h4>
                                    <p> <h6>Site:</h6>
                                    <a href="http://www.${shop.getWebSiteUrl()}">${shop.getWebSiteUrl()}</a><br>
                                    </p>
                                </div>
                            </div>
                            <div class="info info-horizontal">
                                <div class="icon icon-primary">
                                    <i class="material-icons">info_outline</i>
                                </div>
                                <div class="description">
                                    <h4 class="info-title">Information</h4>
                                    <p><h6>Open Time:</h6>
                                    ${shop.getOpenTime()}<br>
                                    <h6>Close Time:</h6>
                                    ${shop.getCloseTime()}<br>
                                    <h6>Close Day</h6>
                                    ${shop.getCloseDay()}<br>
                                    </p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div> 
        <c:import url="pageBuilder/footer.jsp"/>



