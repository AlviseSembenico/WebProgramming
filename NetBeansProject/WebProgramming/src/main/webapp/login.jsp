<%-- 
    Document   : Login
    Created on : Sep 9, 2017, 4:24:56 PM
    Author     : Alvise
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<!DOCTYPE html>
<!doctype html>
<html>
    <c:import url="pageBuilder/header.jsp"/>
    <body class="login-page">


        <div class="page-header header-filter" style="background-image: url('http://demos.creative-tim.com/material-kit-pro/assets/img/bg7.jpg'); background-size: cover; background-position: top center;">
            <div class="container">
                <div class="row">
                    <div class="col-md-4 col-md-offset-4 col-sm-6 col-sm-offset-3">
                        <div class="card card-signup">
                            <form class="form" method="" action="">
                                <div class="header header-primary text-center">
                                    <h4 class="card-title">Log in</h4>
                                    <div class="social-line">
                                        <a href="#pablo" class="btn btn-just-icon btn-simple">
                                            <i class="fa fa-facebook-square"></i>
                                        </a>
                                        <a href="#pablo" class="btn btn-just-icon btn-simple">
                                            <i class="fa fa-twitter"></i>
                                        </a>
                                        <a href="#pablo" class="btn btn-just-icon btn-simple">
                                            <i class="fa fa-google-plus"></i>
                                        </a>
                                    </div>
                                </div>
                                <p class="description text-center">Or Be Classical</p>
                                <div class="card-content">

                                    <div class="input-group">
                                        <span class="input-group-addon">
                                            <i class="material-icons">face</i>
                                        </span>
                                        <input type="text" class="form-control" placeholder="First Name...">
                                    </div>

                                    <div class="input-group">
                                        <span class="input-group-addon">
                                            <i class="material-icons">email</i>
                                        </span>
                                        <input type="text" class="form-control" placeholder="Email...">
                                    </div>

                                    <div class="input-group">
                                        <span class="input-group-addon">
                                            <i class="material-icons">lock_outline</i>
                                        </span>
                                        <input type="password" placeholder="Password..." class="form-control" />
                                    </div>

                                    <!-- If you want to add a checkbox to this form, uncomment this code
    
                                    <div class="checkbox">
                                            <label>
                                                    <input type="checkbox" name="optionsCheckboxes" checked>
                                                    Subscribe to newsletter
                                            </label>
                                    </div> -->
                                </div>
                                <div class="footer text-center">
                                    <a href="#pablo" class="btn btn-primary btn-simple btn-wd btn-lg">Get Started</a>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
    <c:import url="pageBuilder/footer.jsp"/>

