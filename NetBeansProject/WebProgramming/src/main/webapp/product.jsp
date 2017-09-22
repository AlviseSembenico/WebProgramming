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
<!DOCTYPE html>
<!doctype html>
<html>
    <c:import url="pageBuilder/header.jsp"/>
    <body class="product-page">
        <div class="page-header header-filter" style="background-image: url(https://www.consumatori.it/wp-content/uploads/2015/09/venditore_consumatore_stretta-di-mano1.jpg); background-size: cover; background-position: top center;">
        <div class="container">
                    <div class="col-md-6 col-sm-6">

                       <div class="tab-content">
                            <div class="tab-pane" id="product-page1">
                                 <img src="../assets/img/examples/product1.jpg">
                              </div>
                              <div class="tab-pane active" id="product-page2">
                                  <img src="../assets/img/examples/product2.jpg">
                             </div>
                              <div class="tab-pane" id="product-page3">
                                  <img src="../assets/img/examples/product3.jpg">
                              </div>
                              <div class="tab-pane" id="product-page4">
                                  <img src="../assets/img/examples/product4.jpg">
                              </div>
                        </div>
                        <div class="nbs-flexisel-container"><div class="nbs-flexisel-inner"><ul class="nav flexi-nav nbs-flexisel-ul" role="tablist" id="flexiselDemo1" style="left: -772.5px;"><li class="nbs-flexisel-item" style="width: 128.75px;">
								<a href="#product-page1" role="tab" data-toggle="tab" aria-expanded="false">
									<img src="../assets/img/examples/product1.jpg">
								</a>
							</li><li class="active nbs-flexisel-item" style="width: 128.75px;">
								<a href="#product-page2" role="tab" data-toggle="tab" aria-expanded="false">
									<img src="../assets/img/examples/product2.jpg">
								</a>
							</li><li class="nbs-flexisel-item" style="width: 128.75px;">
								<a href="#product-page3" role="tab" data-toggle="tab" aria-expanded="false">
									<img src="../assets/img/examples/product3.jpg">
								</a>
							</li><li class="nbs-flexisel-item" style="width: 128.75px;">
								<a href="#product-page4" role="tab" data-toggle="tab" aria-expanded="true">
									<img src="../assets/img/examples/product4.jpg">
								</a>
							</li>
							<li class="nbs-flexisel-item" style="width: 128.75px;">
								<a href="#product-page1" role="tab" data-toggle="tab" aria-expanded="false">
									<img src="../assets/img/examples/product1.jpg">
								</a>
							</li>
							<li class="active nbs-flexisel-item" style="width: 128.75px;">
								<a href="#product-page2" role="tab" data-toggle="tab" aria-expanded="false">
									<img src="../assets/img/examples/product2.jpg">
								</a>
							</li>
							<li class="nbs-flexisel-item" style="width: 128.75px;">
								<a href="#product-page3" role="tab" data-toggle="tab" aria-expanded="false">
									<img src="../assets/img/examples/product3.jpg">
								</a>
							</li>
							<li class="nbs-flexisel-item" style="width: 128.75px;">
								<a href="#product-page4" role="tab" data-toggle="tab" aria-expanded="true">
									<img src="../assets/img/examples/product4.jpg">
								</a>
							</li>
                        <li class="nbs-flexisel-item" style="width: 128.75px;">
								<a href="#product-page1" role="tab" data-toggle="tab" aria-expanded="false">
									<img src="../assets/img/examples/product1.jpg">
								</a>
							</li><li class="active nbs-flexisel-item" style="width: 128.75px;">
								<a href="#product-page2" role="tab" data-toggle="tab" aria-expanded="false">
									<img src="../assets/img/examples/product2.jpg">
								</a>
							</li><li class="nbs-flexisel-item" style="width: 128.75px;">
								<a href="#product-page3" role="tab" data-toggle="tab" aria-expanded="false">
									<img src="../assets/img/examples/product3.jpg">
								</a>
							</li><li class="nbs-flexisel-item" style="width: 128.75px;">
								<a href="#product-page4" role="tab" data-toggle="tab" aria-expanded="true">
									<img src="../assets/img/examples/product4.jpg">
								</a>
							</li></ul><div class="nbs-flexisel-nav-left"><i class="material-icons">chevron_left</i></div><div class="nbs-flexisel-nav-right"><i class="material-icons">chevron_right</i></div></div></div>
                    </div>
                    <div class="col-md-6 col-sm-6">
                        <h2 class="title" ><c:out value="${product.getName()}"/> </h2>
                        <h3 class="main-price"><c:out value="${product.getPrice()}"/></h3>
						<div id="acordeon">
                            <div class="panel-group" id="accordion">
                          <div class="panel panel-border panel-default">
                            <div class="panel-heading" role="tab" id="headingOne">
                                <a role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseOne" aria-expanded="true" aria-controls="collapseOne" style="color: white">
                                    <h4 class="panel-title">
                                    Description
                                    <i class="material-icons">keyboard_arrow_down</i>
                                    </h4>
                                </a>
                            </div>
                            <div id="collapseOne" class="panel-collapse collapse in" style="color: white">
                              <div class="panel-body">
                                  <p><c:out value="${product.getDescription()}"/></p>
                              </div>
                            </div>
                          </div>
                          
                          
                        </div>
                        </div><!--  end acordeon -->

			            <div class="row pick-size">
                            <div class="col-md-6 col-sm-6">
                                <label>Select color</label>
                                <div class="btn-group bootstrap-select"></button><div class="dropdown-menu open" role="combobox"><ul class="dropdown-menu inner" role="listbox" aria-expanded="false"><li data-original-index="0" class="selected"><a tabindex="0" class="" data-tokens="null" role="option" aria-disabled="false" aria-selected="true"><span class="text">Rose </span><span class="material-icons  check-mark"> done </span></a></li><li data-original-index="1"><a tabindex="0" class="" data-tokens="null" role="option" aria-disabled="false" aria-selected="false"><span class="text">Gray</span><span class="material-icons  check-mark"> done </span></a></li><li data-original-index="2"><a tabindex="0" class="" data-tokens="null" role="option" aria-disabled="false" aria-selected="false"><span class="text">White</span><span class="material-icons  check-mark"> done </span></a></li></ul></div><select class="selectpicker" data-style="select-with-transition" data-size="7" tabindex="-98">
									<option value="1">Rose </option>
									<option value="2">Gray</option>
									<option value="3">White</option>
								</select></div>
                            </div>
                            <div class="col-md-6 col-sm-6">
                                <label>Select size</label>
								<div class="btn-group bootstrap-select"></button><div class="dropdown-menu open" role="combobox"><ul class="dropdown-menu inner" role="listbox" aria-expanded="false"><li data-original-index="0" class="selected"><a tabindex="0" class="" data-tokens="null" role="option" aria-disabled="false" aria-selected="true"><span class="text">Small </span><span class="material-icons  check-mark"> done </span></a></li><li data-original-index="1"><a tabindex="0" class="" data-tokens="null" role="option" aria-disabled="false" aria-selected="false"><span class="text">Medium</span><span class="material-icons  check-mark"> done </span></a></li><li data-original-index="2"><a tabindex="0" class="" data-tokens="null" role="option" aria-disabled="false" aria-selected="false"><span class="text">Large</span><span class="material-icons  check-mark"> done </span></a></li></ul></div><select class="selectpicker" data-style="select-with-transition" data-size="7" tabindex="-98">
									<option value="1">Small </option>
									<option value="2">Medium</option>
									<option value="3">Large</option>
								</select></div>
                            </div>
                        </div>
                        <div class="row text-right">
                            <button class="btn btn-rose btn-round">Add to Cart &nbsp;<i class="material-icons">shopping_cart</i></button>
                        </div>
                    </div>
                </div>
    </div>
	    
                   <c:import url="pageBuilder/footer.jsp"/>