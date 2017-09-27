<%@page import="Dao.entities.Shop"%>
<%@page import="Dao.ShopDao"%>
<%@page import="Dao.entities.Picture"%>
<%@page import="Dao.PictureDao"%>
<%@page import="Dao.ProductDao" %>
<%@page import="Dao.entities.Product"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<c:set var="shopDao" value="${pageContext.servletContext.getAttribute('shopDao')}"></c:set>
<c:set var="pictureDao" value="${pageContext.servletContext.getAttribute('pictureDao')}"></c:set>
<c:set var="productDao" value="${pageContext.servletContext.getAttribute('productDao')}"></c:set>
<c:set var="shop" value="${shopDao.getShopById(param.id)}"></c:set>
<c:set var="picture" value="${pictureDao.getPictureByShop(shop)}"></c:set>
<c:set var="product" value="${productDao.getProductByShop(shop)}"></c:set>

    <!DOCTYPE html>
    <!doctype html>
    <html>
        <body class="about-us" waid71fa0d88-5390-4b5b-a2f4-e45fa93d85e2="SA password protect entry checker">
        <c:import url="pageBuilder/header.jsp"/>


        <div class="page-header header-filter header-small" data-parallax="true" style="background-image: url(http://hoanganhhalong.vn/Upload/images/chuyen-thuong-hieu/anh-dai-dien/hieu-tinh-cach-khach-hang-de-tang-doanh-so.jpg); transform: translate3d(0px, 0px, 0px);">
            <div class="container">
                <div class="row">
                    <div class="col-md-8 col-md-offset-2">
                        <h1 class="title">About Us</h1>
                    </div>
                </div>
            </div>
        </div>

        <div class="main main-raised">
            <div class="container">
                <div class="about-description text-center">
                    <div class="row">
                        <div class="col-md-8 col-md-offset-2">
                            <h2 class="title"><c:out value="${shop.getName()}"/></h2>
                            <h5><c:out value="${shop.getDescription()}"/></h5>
                            <div class="card-image">
                                <img src="<c:out value="${picture.getPath()}"/>">
                            </div>
                        </div>
                    </div>
                </div>
                <div class="about-team team-1">
                    <div class="row">
                        <div class="col-md-8 col-md-offset-2 text-center">
                            <h2 class="title">Our Product</h2>
                            <h5 class="description">Here's a carousel of our product.</h5>
                        </div>
                    </div>

                    <div class="row">
                        <div class="testimonials-2">

                            <div class="container">

                                <div class="row">

                                    <div id="carousel-testimonial" class="carousel slide" data-ride="carousel">

                                        <div class="carousel-inner" role="listbox">
                                            <div class="item">
                                                <div class="card card-testimonial card-plain">
                                                    <div class="card-avatar">
                                                        <a href="#pablo">
                                                            <img class="img" src="<c:out value="${picture.getPath()}"/>">
                                                        </a>
                                                    </div>
                                                    <div class="card-content">
                                                        <h5 class="card-description"><c:out value="${product[0].getDescription()}"/></h5>
                                                        <h4 class="card-title"><c:out value="${product[0].getName()}"/></h4>
                                                        <div class="footer">
                                                            <i class="material-icons text-warning">star</i>
                                                            <i class="material-icons text-warning">star</i>
                                                            <i class="material-icons text-warning">star</i>
                                                            <i class="material-icons text-warning">star</i>
                                                            <i class="material-icons text-warning">star</i>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="item active">
                                                <div class="card card-testimonial card-plain">
                                                    <div class="card-avatar">
                                                        <a href="#pablo">
                                                            <img class="img" src="assets/img/faces/christian.jpg">
                                                        </a>
                                                    </div>

                                                    <div class="card-content">
                                                        <h5 class="card-description">"Thank you Anna for the invite thank you to the whole Vogue team Called I Miss the Old Kanye At the God's last game Chop up the soul Kanye. I promise I will never let the people down. I want a better life for all!!! Pablo Pablo Pablo Pablo! Thank you Anna for the invite thank you to the whole Vogue team."
                                                        </h5>
                                                        <h4 class="card-title">Christian Louboutin</h4>
                                                        <h6 class="category text-muted">Designer @ Louboutin &amp; Co.</h6>
                                                        <div class="footer">
                                                            <i class="material-icons text-warning">star</i>
                                                            <i class="material-icons text-warning">star</i>
                                                            <i class="material-icons text-warning">star</i>
                                                            <i class="material-icons text-warning">star</i>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>

                                        <a class="left carousel-control" href="#carousel-testimonial" role="button" data-slide="prev">
                                            <i class="material-icons" aria-hidden="true">chevron_left</i>
                                        </a>
                                        <a class="right carousel-control" href="#carousel-testimonial" role="button" data-slide="next">
                                            <i class="material-icons" aria-hidden="true">chevron_right</i>
                                        </a>
                                    </div>

                                </div>

                            </div>
                        </div>
                    </div>

                </div>
                <div class="about-services features-2">
                    <div class="row">
                        <div class="col-md-8 col-md-offset-2 text-center">
                            <h2 class="title">We build awesome products</h2>
                            <h5 class="description">This is the paragraph where you can write more details about your product. Keep you user engaged by providing meaningful information.</h5>
                        </div>
                    </div>

                    <div class="row">
                        <div class="col-md-4">
                            <div class="info info-horizontal">
                                <div class="icon icon-rose">
                                    <i class="material-icons">gesture</i>
                                </div>
                                <div class="description">
                                    <h4 class="info-title">1. Design</h4>
                                    <p>The moment you use Material Kit, you know you’ve never felt anything like it. With a single use, this powerfull UI Kit lets you do more than ever before. </p>
                                    <a href="#pablo">Find more...</a>
                                </div>
                            </div>

                        </div>

                        <div class="col-md-4">
                            <div class="info info-horizontal">
                                <div class="icon icon-rose">
                                    <i class="material-icons">build</i>
                                </div>
                                <div class="description">
                                    <h4 class="info-title">2. Develop</h4>
                                    <p>Divide details about your product or agency work into parts. Write a few lines about each one. A paragraph describing a feature will be enough.</p>
                                    <a href="#pablo">Find more...</a>
                                </div>
                            </div>
                        </div>

                        <div class="col-md-4">
                            <div class="info info-horizontal">
                                <div class="icon icon-rose">
                                    <i class="material-icons">mode_edit</i>
                                </div>
                                <div class="description">
                                    <h4 class="info-title">3. Make Edits</h4>
                                    <p>Divide details about your product or agency work into parts. Write a few lines about each one. A paragraph describing a feature will be enough.</p>
                                    <a href="#pablo">Find more...</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="about-office">
                    <div class="row">
                        <div class="col-md-8 col-md-offset-2">
                            <h2 class="text-center title">Rate Us:</h2>
                            <h4 class="text-center description">Give us a star.</h4>
                            <div class="">
                                <label for="input-2" class="control-label">Rate This</label>
                                <input id="input-2" name="input-2" class="rating rating-loading" data-min="0" data-max="5" data-step="0.1">
                            </div>
                        </div>
                    </div>

                </div>
            </div>
        </div>
        <c:import url="pageBuilder/footer.jsp"/>
        <script src="assets/js/ratingStar.min.js" type="text/javascript"></script>
