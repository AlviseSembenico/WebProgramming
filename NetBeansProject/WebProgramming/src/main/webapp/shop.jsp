<%@page import="Dao.entities.Shop"%>
<%@page import="Dao.ShopDao"%>
<%@page import="Dao.entities.Picture"%>
<%@page import="Dao.PictureDao"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<c:set var="shopDao" value="${pageContext.servletContext.getAttribute('shopDao')}"></c:set>
<c:set var="pictureDao" value="${pageContext.servletContext.getAttribute('pictureDao')}"></c:set>
<c:set var="shop" value="${shopDao.getShopById(param.id)}"></c:set>
<c:set var="picture" value="${pictureDao.getPictureByShop(shop)}"></c:set>
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
                        <h4>Meet the amazing team behind this project and find out more about how we work.</h4>
                    </div>
                </div>
            </div>
        </div>

        <div class="main main-raised">
            <div class="container">
                <div class="about-description text-center">
                    <div class="row">
                        <div class="col-md-8 col-md-offset-2">
                            <h5 class="description">This is the paragraph where you can write more details about your product. Keep you user engaged by providing meaningful information. Remember that by this time, the user is curious, otherwise he wouldn't scroll to get here. Add a button if you want the user to see more.</h5>
                        </div>
                    </div>
                </div>
                <div class="about-team team-1">
                    <div class="row">
                        <div class="col-md-8 col-md-offset-2 text-center">
                            <h2 class="title">We are nerd rockstars</h2>
                            <h5 class="description">This is the paragraph where you can write more details about your team. Keep you user engaged by providing meaningful information.</h5>
                        </div>
                    </div>

                    <div class="row">
                        <div class="col-md-3">
                            <div class="card card-profile card-plain">
                                <div class="card-avatar">
                                    <a href="#pablo">
                                        <img class="img" src="../assets/img/faces/marc.jpg">
                                    </a>
                                </div>

                                <div class="card-content">
                                    <h4 class="card-title">Alec Thompson</h4>
                                    <h6 class="category text-muted">CEO / Co-Founder</h6>

                                    <p class="card-description">
                                        And I love you like Kanye loves Kanye. We need to restart the human foundation.
                                    </p>
                                    <div class="footer">
                                        <a href="#pablo" class="btn btn-just-icon btn-simple btn-twitter"><i class="fa fa-twitter"></i></a>
                                        <a href="#pablo" class="btn btn-just-icon btn-simple btn-facebook"><i class="fa fa-facebook-square"></i></a>
                                        <a href="#pablo" class="btn btn-just-icon btn-simple btn-google"><i class="fa fa-google"></i></a>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="col-md-3">
                            <div class="card card-profile card-plain">
                                <div class="card-avatar">
                                    <a href="#pablo">
                                        <img class="img" src="../assets/img/faces/kendall.jpg">
                                    </a>
                                </div>

                                <div class="card-content">
                                    <h4 class="card-title">Tania Andrew</h4>
                                    <h6 class="category text-muted">Designer</h6>

                                    <p class="card-description">
                                        Don't be scared of the truth because we need to restart the human foundation. And I love you like Kanye loves Kanye.
                                    </p>
                                    <div class="footer">
                                        <a href="#pablo" class="btn btn-just-icon btn-simple btn-twitter"><i class="fa fa-twitter"></i></a>
                                        <a href="#pablo" class="btn btn-just-icon btn-simple btn-dribbble"><i class="fa fa-dribbble"></i></a>
                                        <a href="#pablo" class="btn btn-just-icon btn-simple btn-linkedin"><i class="fa fa-linkedin"></i></a>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="col-md-3">
                            <div class="card card-profile card-plain">
                                <div class="card-avatar">
                                    <a href="#pablo">
                                        <img class="img" src="../assets/img/faces/christian.jpg">
                                    </a>
                                </div>

                                <div class="card-content">
                                    <h4 class="card-title">Christian Mike</h4>
                                    <h6 class="category text-muted">Web Developer</h6>

                                    <p class="card-description">
                                        I love you like Kanye loves Kanye. Don't be scared of the truth because we need to restart the human foundation.
                                    </p>
                                    <div class="footer">
                                        <a href="#pablo" class="btn btn-just-icon btn-simple btn-facebook"><i class="fa fa-facebook-square"></i></a>
                                        <a href="#pablo" class="btn btn-just-icon btn-simple btn-dribbble"><i class="fa fa-dribbble"></i></a>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="col-md-3">
                            <div class="card card-profile card-plain">
                                <div class="card-avatar">
                                    <a href="#pablo">
                                        <img class="img" src="../assets/img/faces/avatar.jpg">
                                    </a>
                                </div>

                                <div class="card-content">
                                    <h4 class="card-title">Rebecca Stormvile</h4>
                                    <h6 class="category text-muted">Web Developer</h6>

                                    <p class="card-description">
                                        Don't be scared of the truth because we need to restart the human foundation.
                                    </p>
                                    <div class="footer">
                                        <a href="#pablo" class="btn btn-just-icon btn-simple btn-google"><i class="fa fa-google"></i></a>
                                        <a href="#pablo" class="btn btn-just-icon btn-simple btn-twitter"><i class="fa fa-twitter"></i></a>
                                        <a href="#pablo" class="btn btn-just-icon btn-simple btn-dribbble"><i class="fa fa-dribbble"></i></a>
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
                    <div class="row  text-center">
                        <div class="col-md-8 col-md-offset-2">
                            <h2 class="title">Photo</h2>
                            <h4 class="description">Here are some pictures.</h4>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-4">
                            <img class="img-rounded img-responsive img-raised" alt="Raised Image" src="../assets/img/examples/office2.jpg">
                        </div>
                        <div class="col-md-4">
                            <img class="img-rounded img-responsive img-raised" alt="Raised Image" src="../assets/img/examples/office4.jpg">
                        </div>
                        <div class="col-md-4">
                            <img class="img-rounded img-responsive img-raised" alt="Raised Image" src="../assets/img/examples/office3.jpg">
                        </div>
                        <div class="col-md-6">
                            <img class="img-rounded img-responsive img-raised" alt="Raised Image" src="../assets/img/examples/office5.jpg">
                        </div>
                        <div class="col-md-6">
                            <img class="img-rounded img-responsive img-raised" alt="Raised Image" src="../assets/img/examples/office1.jpg">
                        </div>

                    </div>

                </div>
                <div class="about-office">
                    <div class="row">
                        <div class="col-md-8 col-md-offset-2">
                            <h2 class="text-center title">Rate Us:</h2>
                            <h4 class="text-center description">Give us a star.</h4>
                            <div class="">
                                
                            </div>
                        </div>
                    </div>

                </div>
            </div>
        </div>
        <c:import url="pageBuilder/footer.jsp"/>

