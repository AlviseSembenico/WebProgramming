<%-- 
    Document   : email.jsp
    Created on : 7-dic-2017, 12.00.01
    Author     : zappi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>  
<!DOCTYPE html>
<html>
    <c:import url="/pageBuilder/header.jsp"/>
    <div class="page-header header-filter header-small" data-parallax="true" style="">
        <div class="container"> 
            <div class="row">
                <div class="col-md-8 col-md-offset-2">
                    Reply
                </div>
            </div>
        </div>
    </div>
    <div class="main main-raised">
        <div class="contact-content">
            <div class="container">
                <h2 class="title text-center">Send your reply</h2>
                <div class="row">
                    <div class="col-md-8 col-md-offset-2">                        
                        <form role="form" id="contact-form" method="post" action="reviewsReply">
                            <div class="media">
                                <a class="pull-left" href="">
                                    <div class="avatar">
                                        <img class="media-object" src="<c:choose><c:when test="${reviews.getCreator().getAvatarPath() != null}"><c:out value="${reviews.getCreator().getAvatarPath()}"/></c:when><c:otherwise><c:out value="https://x1.xingassets.com/assets/frontend_minified/img/users/nobody_m.original.jpg"/></c:otherwise></c:choose>">
                                            </div>
                                        </a>
                                        <div class="media-body">
                                                <h4 class="media-heading">${reviews.getCreator().getFirstName()} ${reviews.getCreator().getLastName()}  <small>· ${reviews.diffTime()} days ago</small></h4>
                                    <i class="a-icon a-icon-star a-star-${reviews.getQuality()}"></i>
                                    <h6 class="text-muted">On product: <br/>${reviews.getProduct().getName()}</h6>
                                    <p>${reviews.getDescription()}</p>
                                </div>
                            </div>
                            <div class="form-group label-floating is-empty">
                                <label class="control-label">Reply</label>
                                <textarea name="reply" class="form-control" id="message" rows="6"></textarea>
                                <span class="material-input"></span></div>
                            <div class="submit text-center">
                                <input type="submit" class="btn btn-primary btn-raised btn-round" value="Send">
                            </div>
                        </form>
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
