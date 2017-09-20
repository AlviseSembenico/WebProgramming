<%-- 
    Document   : register
    Created on : 19-set-2017, 10.59.52
    Author     : Utente
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<!DOCTYPE html>
<html>
    <c:import url="pageBuilder/header.jsp"/>
    <body class ="register-page">
        <div class="page-header header-filter" style="background-image: url('http://demos.creative-tim.com/material-kit-pro/assets/img/bg7.jpg'); background-size: cover; background-position: top center;">
                <div class="container">
                    <div class="col-md-8 col-md-offset-2">
                        <div class="card card-signup">
                    <h2 class="card-title text-center">Register</h2>
                    <div class="row">
                        <div class="col-md-6 col-md-offset-3">
                            <div class="social text-center">
                                <button class="btn btn-just-icon btn-round btn-twitter">
                                    <i class="fa fa-twitter"></i>
                                </button>
                                <button class="btn btn-just-icon btn-round btn-facebook">
                                    <i class="fa fa-facebook"> </i>
                                </button>
                                <button class="btn btn-just-icon btn-round btn-instagram">
                                    <i class="fa fa-instagram"> </i>
                                </button>
                                <h4> or be classical </h4>
                            </div>
                            <form action="/register.do" method="POST">
                                    <div class="card-content">
                                            <div class="input-group">
                                                    <span class="input-group-addon">
                                                            <i class="material-icons">face</i>
                                                    </span>
                                                    <div class="form-group is-empty"><input name="firstname" type="text" class="form-control" placeholder="First Name..."><span class="material-input"></span></div>
                                            </div>
                                        
                                            <div class="input-group">
                                                    <span class="input-group-addon">
                                                            <i class="material-icons">face</i>
                                                    </span>
                                                    <div class="form-group is-empty"><input name="lastname" type="text" class="form-control" placeholder="Last Name..."><span class="material-input"></span></div>
                                            </div>

                                            <div class="input-group">
                                                    <span class="input-group-addon">
                                                            <i class="material-icons">email</i>
                                                    </span>
                                                    <div class="form-group is-empty"><input name="email" type="text" class="form-control" placeholder="Email..."><span class="material-input"></span></div>
                                            </div>

                                            <div class="input-group">
                                                    <span class="input-group-addon">
                                                            <i class="material-icons">lock_outline</i>
                                                    </span>
                                                    <div class="form-group is-empty"><input name="password" type="password" placeholder="Password..." class="form-control"><span class="material-input"></span></div>
                                            </div>

                                            <!-- If you want to add a checkbox to this form, uncomment this code -->

                                            <div class="checkbox">
                                                    <label>
                                                            <input type="checkbox" name="optionsCheckboxes" checked=""><span class="checkbox-material"></span>
                                                            I agree to the <a href="#something">terms and conditions</a>.
                                                    </label>
                                            </div>  
                                    </div>
                                    <div class="footer text-center">
                                        <input type="submit" value="Register" class="btn btn-primary btn-round"/>
                                    </div>
                            </form>
                        </div>
                    </div>
                    </div>
                </div>
            </div>
        </div>
    <c:import url="pageBuilder/footer.jsp"/>