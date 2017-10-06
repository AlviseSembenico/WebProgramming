<%@page import="Dao.entities.Shop"%>
<%@page import="Dao.ShopDao"%>
<%@page import="Dao.entities.Picture"%>
<%@page import="Dao.PictureDao"%>
<%@page import="Dao.ProductDao" %>
<%@page import="Dao.entities.Product"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
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
                                <img src="<c:out value="${picture[0].getPath()}"/>">
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
                                            <div class="item active">
                                                <div class="card card-testimonial card-plain">
                                                    <div class="card-avatar">
                                                        <a href="/product.jsp?id=${product[0].getId()}">
                                                            <img class="img" src="<c:out value="${picture[0].getPath()}"/>">
                                                        </a>
                                                    </div>
                                                    <div class="card-content">
                                                        <h5 class="card-description"><c:out value="${product[0].getDescription()}"/></h5>
                                                        <a href="/product.jsp?id=${product[0].getId()}"><h4 class="card-title"><c:out value="${product[0].getName()}"/></h4></a>
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
                                            <c:forEach var="i" begin="1" end="${fn:length(product)-1}">
                                                <div class="item">
                                                    <div class="card card-testimonial card-plain">
                                                        <div class="card-avatar">
                                                            <a href="/product.jsp?id=${product[i].getId()}">
                                                                <img class="img" src="<c:out value="${picture[i].getPath()}"/>">
                                                            </a>
                                                        </div>
                                                        <div class="card-content">
                                                            <h5 class="card-description"><c:out value="${product[i].getDescription()}"/></h5>
                                                            <a href="/product.jsp?id=${product[i].getId()}"><h4 class="card-title"><c:out value="${product[i].getName()}"/></h4></a>
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
                                            </c:forEach>
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
                            <h2 class="title">Found Us</h2>
                            <a href="${shop.getWebSiteUrl()}"><h4 class="card-title"><c:out value="${shop.getWebSiteUrl()}"/></h4></a>
                        </div>
                    </div>

                    <div class="row">
                        <div class="contact-page">
                            <div id="contactUsMap" class="big-map"></div>
                        </div>
                    </div>
                </div>
                <div class="about-office">
                    <div class="row">
                        <div class="col-md-8 col-md-offset-2">
                            <h2 class="text-center title">Rate Us:</h2>
                            <h4 class="text-center description">Give us a star.</h4>
                            <div class="stars">
                                <form class="text-center" action="">
                                    <input class="star star-5" id="star-5" type="radio" name="star"/>
                                    <label class="star star-5" for="star-5"></label>
                                    <input class="star star-4" id="star-4" type="radio" name="star"/>
                                    <label class="star star-4" for="star-4"></label>
                                    <input class="star star-3" id="star-3" type="radio" name="star"/>
                                    <label class="star star-3" for="star-3"></label>
                                    <input class="star star-2" id="star-2" type="radio" name="star"/>
                                    <label class="star star-2" for="star-2"></label>
                                    <input class="star star-1" id="star-1" type="radio" name="star"/>
                                    <label class="star star-1" for="star-1"></label>
                                </form>
                            </div>
                        </div>
                    </div>

                </div>
            </div>
        </div>
        <c:import url="pageBuilder/footer.jsp"/>
        <script type="text/javascript">
            $().ready(function () {
                materialKitDemo.initContactUsMap();

            });
        </script>

