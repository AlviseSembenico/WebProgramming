<%-- 
    Document   : cart
    Created on : Sep 22, 2017, 7:34:48 PM
    Author     : Alvise
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<!DOCTYPE html>
<html>
    <c:import url="pageBuilder/header.jsp"/>
    <body class="product-page">
        <div class="page-header header-filter" data-parallax="true" style="background-image: url('https://www.happywall.co.uk/uploads/galleri/1204/forest_landscape_gallery.jpg');">
            <div class="container">
                <div class="row title-row">
                    <div class="col-md-4 col-md-offset-8">
                        <button class="btn btn-white pull-right"><i class="material-icons">shopping_cart</i> 0 Items</button>
                    </div>
                </div>
            </div>
        </div>
        <div class="container">
        <div class="main main-raised">
                <div class="container tim-container">
                    <div id="tables">
                        <div class="row">
                            <div class="col-md-12">
                                <h4>Shopping Cart Table</h4>
                            </div>
                            <div class="col-md-10 col-md-offset-1">
                                <div class="table-responsive">
                                    <table class="table table-shopping">
                                        <thead>
                                            <tr>
                                                <th class="text-center"></th>
                                                <th>Product</th>
                                                <th class="th-description">Color</th>
                                                <th class="th-description">Size</th>
                                                <th class="text-right">Price</th>
                                                <th class="text-right">Qty</th>
                                                <th class="text-right">Amount</th>
                                                <th></th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <td>
                                                    <div class="img-container">
                                                        <img alt="..." src="http://demos.creative-tim.com/material-kit-pro/assets/img/product1.jpg">
                                                    </div>
                                                </td>
                                                <td class="td-name">
                                                    <a href="#jacket">Spring Jacket</a>
                                                    <br><small>by Dolce&amp;Gabbana</small>
                                                </td>
                                                <td>
                                                    Red
                                                </td>
                                                <td>
                                                    M
                                                </td>
                                                <td class="td-number">
                                                    <small>€</small>549
                                                </td>
                                                <td class="td-number">
                                                    1
                                                    <div class="btn-group">
                                                        <button class="btn btn-round btn-xs"> <i class="material-icons">remove</i> </button>
                                                        <button class="btn btn-round btn-xs"> <i class="material-icons">add</i> </button>
                                                    </div>
                                                </td>
                                                <td class="td-number">
                                                    <small>€</small>549
                                                </td>
                                                <td class="td-actions">
                                                    <button title="" class="btn btn-simple" type="button" data-original-title="Remove item" rel="tooltip" data-placement="left">
                                                        <i class="material-icons">close</i>
                                                    </button>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <div class="img-container">
                                                        <img alt="..." src="http://demos.creative-tim.com/material-kit-pro/assets/img/product2.jpg">
                                                    </div>
                                                </td>
                                                <td class="td-name">
                                                    <a href="#pants">Short Pants</a>
                                                    <br><small>by Pucci</small>
                                                </td>
                                                <td>
                                                    Purple
                                                </td>
                                                <td>
                                                    M
                                                </td>

                                                <td class="td-number">
                                                    <small>€</small>499
                                                </td>
                                                <td class="td-number">
                                                    2
                                                    <div class="btn-group">
                                                        <button class="btn btn-round btn-xs"> <i class="material-icons">remove</i> </button>
                                                        <button class="btn btn-round btn-xs"> <i class="material-icons">add</i> </button>
                                                    </div>
                                                </td>
                                                <td class="td-number">
                                                    <small>€</small>998
                                                </td>
                                                <td class="td-actions">
                                                    <button title="" class="btn btn-simple" type="button" data-original-title="Remove item" rel="tooltip" data-placement="left">
                                                        <i class="material-icons">close</i>
                                                    </button>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <div class="img-container">
                                                        <img alt="..." src="http://demos.creative-tim.com/material-kit-pro/assets/img/product3.jpg">
                                                    </div>
                                                </td>
                                                <td class="td-name">
                                                    <a href="#nothing">Pencil Skirt</a>
                                                    <br><small>by Valentino</small>
                                                </td>
                                                <td>
                                                    White
                                                </td>
                                                <td>
                                                    XL
                                                </td>

                                                <td class="td-number">
                                                    <small>€</small>799
                                                </td>
                                                <td class="td-number">
                                                    1
                                                    <div class="btn-group">
                                                        <button class="btn btn-round  btn-xs"> <i class="material-icons">remove</i> </button>
                                                        <button class="btn btn-round  btn-xs"> <i class="material-icons">add</i> </button>
                                                    </div>
                                                </td>
                                                <td class="td-number">
                                                    <small>€</small>799</td>
                                                <td class="td-actions">
                                                    <button title="" class="btn btn-simple" type="button" data-original-title="Remove item" rel="tooltip" data-placement="left">
                                                        <i class="material-icons">close</i>
                                                    </button>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td colspan="3">
                                                </td>
                                                <td class="td-total">
                                                    Total
                                                </td>
                                                <td class="td-price">
                                                    <small>€</small>2,346
                                                </td>
                                                <td class="text-right" colspan="3"> <button class="btn btn-success btn-round" type="button">Complete Purchase <i class="material-icons">keyboard_arrow_right</i></button></td>

                                            </tr>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            
            </div>
        </div>
        <script type="text/javascript">

            $(document).ready(function () {
                $("#flexiselDemo1").flexisel({
                    visibleItems: 4,
                    itemsToScroll: 1,
                    animationSpeed: 400,
                    enableResponsiveBreakpoints: true,
                    responsiveBreakpoints: {
                        portrait: {
                            changePoint: 480,
                            visibleItems: 3
                        },
                        landscape: {
                            changePoint: 640,
                            visibleItems: 3
                        },
                        tablet: {
                            changePoint: 768,
                            visibleItems: 3
                        }
                    }
                });
            });
        </script>
        <c:import url="pageBuilder/footer.jsp"/>
