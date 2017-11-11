<%-- 
    Document   : register
    Created on : 19-set-2017, 10.59.52
    Author     : Utente
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<!DOCTYPE html>
<html>
    <c:import url="../pageBuilder/header.jsp"/>
    <body class ="signup-page">
        <div class="page-header header-filter" style="background-image: url('https://iso.500px.com/wp-content/uploads/2015/12/stock-photo-125301449.jpg'); background-size: cover; background-position: top center;">
            <div class="container">
                <div class="row">
                    <div class="col-md-10 col-md-offset-1">

                        <div class="card card-signup">
                            <h2 class="card-title text-center">Anomaly Creator</h2>
                            <div class="row">
                                <div class="col-md-5 col-md-offset-1">
                                    <div class="info info-horizontal">
                                        <div class="icon icon-rose">
                                            <i class="material-icons">timeline</i>
                                        </div>
                                        <div class="description">
                                            <h4 class="info-title">Purchase Item</h4>
                                            <p class="description">
                                                We've created the marketing campaign of the website. It was a very interesting collaboration.
                                            </p>
                                        </div>
                                    </div>

                                    <div class="info info-horizontal">
                                        <div class="icon icon-primary">
                                            <i class="material-icons">code</i>
                                        </div>
                                        <div class="description">
                                            <h4 class="info-title">Fully Coded in HTML5</h4>
                                            <p class="description">
                                                We've developed the website with HTML5 and CSS3. The client has access to the code using GitHub.
                                            </p>
                                        </div>
                                    </div>

                                    <div class="info info-horizontal">
                                        <div class="icon icon-info">
                                            <i class="material-icons">group</i>
                                        </div>
                                        <div class="description">
                                            <h4 class="info-title">Built Audience</h4>
                                            <p class="description">
                                                There is also a Fully Customizable CMS Admin Dashboard for this product.
                                            </p>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-5 text-center">
                                    <div class="social text-center">
                                        <h4>Compile the following form and our support will contact you as soon as possible.</h4>
                                    </div>
                                    <form action="addAnomaly" method="POST">
                                        <div class="card-content">

                                            <div class="row text-center">
                                                <select class="selectpicker" data-style="btn btn-primary btn-round" title="Single Select" data-size="7">
                                                    <option disabled selected>Choose problem</option>
                                                    <option value="1">Where is my order?</option>
                                                    <option value="2">Problem with my order</option>
                                                    <option value="2">Modify an order</option>
                                                    <option value="2">Return or refund</option>
                                                    <option value="2">Isgreat</option>
                                                    <option value="2">Payments</option>
                                                    <option value="2">Invoice request</option>
                                                    <option value="2">Sale voucher</option>
                                                    <option value="2">Other questions</option>
                                                </select>
                                            </div>
                                            <div class="row text-center">
                                                Select the anomaly you have occoured into.
                                            </div>
                                            <div class="row ">
                                                <div class="form-group label-floating is-empty">
                                                    <label class="control-label">Please help us with further informations.</label>
                                                    <textarea class="form-control" rows="5"></textarea>
                                                    <span class="material-input"></span>
                                                </div>
                                            </div>
                                            <div class="row text-center">
                                                <input type="submit" text="aaa" class="btn btn-success" value="Send Request"/>
                                            </div>
                                        </div>
                                    </form>
                                </div>
                            </div>
                        </div>

                    </div>
                </div>
            </div>  
            <c:import url="../pageBuilder/footer.jsp"/> 