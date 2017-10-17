<%-- 
    Document   : risultati
    Created on : 14-ott-2017, 10.32.00
    Author     : Utente
--%>

<%@page import="Dao.entities.Product"%>
<%@page import="Dao.ProductDao"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>

<!DOCTYPE html>
<!doctype html>
<html>
    <c:import url="pageBuilder/header.jsp"/>
    <div class="page-header header-filter header-small" data-parallax="true" style="background-image: url('http://www.napolidavivere.it/wp-content/uploads/2016/11/A-Napoli-il-primo-Supermercato-dove-Non-si-paga-con-i-Soldi-640x360-640x360.jpg');">
        <div class="container">
            <div class="row">
                <div class="col-md-8 col-md-offset-2">
                    <div class="brand">
                        <h1 class="title">Ecommerce Page!</h1>
                        <h4>Free global delivery for all products. Use coupon <b>25summer</b> for an extra 25% Off</h4>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="main main-raised">
        <div class="section">
            <div class="container">
                <h2 class="section-title">Latest Offers</h2>
                <div class="row">
                    <div class="col-md-4">

                        <div class="card card-product card-plain card-rotate">
                            <div class="rotating-card-container">
                                <div class="card-image">
                                    <div class="front">
                                        <img class="img" src="https://i.ytimg.com/vi/48uPk1SA37Y/maxresdefault.jpg"/>
                                    </div>

                                    <div class="back back-background">
                                        <div class="card-content">
                                            <h5 class="card-title">
                                                Quick Actions...
                                            </h5>
                                            <div class="footer text-center">
                                                <a href="product.jsp?id=32" class="btn btn-round btn-white">
                                                    <i class="material-icons">info</i> Details
                                                </a>
                                                <a href="../source Packages/product.servlet/product.java" class="btn btn-round btn-rose">
                                                    <i class="material-icons">add_shopping_cart</i> Cart
                                                </a>
                                            </div>
                                            <hr/>

                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div class="card-content">
                                <h4 class="card-title">
                                    <a>Iphone 8</a>
                                </h4>
                                <p class="card-description">The last apple product</p>
                                <div class="footer">
                                    <div class="price-container">
                                        <span class="price price-old"> &euro;1075</span>
                                        <span class="price price-new"> &euro;950</span>
                                    </div>
                                    <div class="stats">

                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="col-md-4">

                        <div class="card card-product card-plain card-rotate">
                            <div class="rotating-card-container">
                                <div class="card-image">
                                    <div class="front">
                                        <img class="img" src="http://www.tecnoandroid.it/wp-content/uploads/2017/03/samsung_C27H580_nuovo_monitor_fhd_curvo.jpg" />
                                    </div>

                                    <div class="back back-background">
                                        <div class="card-content">
                                            <h5 class="card-title">
                                                Quick Actions...
                                            </h5>
                                            <div class="footer text-center">
                                                <a href="product.jsp?id=33" class="btn btn-round btn-white">
                                                    <i class="material-icons">info</i> Details
                                                </a>
                                                <a href="../source Packages/product.servlet/product.java" class="btn btn-round btn-rose">
                                                    <i class="material-icons">add_shopping_cart</i> Cart
                                                </a>
                                            </div>
                                            <hr/>

                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div class="card-content">
                                <h4 class="card-title">
                                    <h4 class="card-title">Monitor</h4>
                                </h4>
                                <p class="card-description">SAMSUNG Monitor LCD con Retroilluminazione a LED 27” LC27F396FHU Risoluzione 1920 x 1080 Pixels Full HD Tempo di Risposta 4 ms Contrasto 3000 :1 Luminosità 250 cd / m²</p>
                                <div class="footer">
                                    <div class="price-container">
                                        <span class="price price-old"> &euro;350</span>
                                        <span class="price price-new">&euro;270</span>
                                    </div>
                                    <div class="stats">

                                    </div>
                                </div>
                            </div>
                        </div>

                    </div>

                    <div class="col-md-4">

                        <div class="card card-product card-plain card-rotate">
                            <div class="rotating-card-container">
                                <div class="card-image">
                                    <div class="front">
                                        <img class="img" src="https://www.sportit.com/ir/66658/f/f/459/0/0/1492590934189/nike-mercurial-superfly-v-cr7-8.jpg" style="width: 80%"/>
                                    </div>

                                    <div class="back back-background">
                                        <div class="card-content">
                                            <h5 class="card-title">
                                                Quick Actions...
                                            </h5>
                                            <div class="footer text-center">
                                                <a href="product.jsp?id=34" class="btn btn-round btn-white">
                                                    <i class="material-icons">info</i> Details
                                                </a>
                                                <a href="../source Packages/product.servlet/product.java" class="btn btn-round btn-rose">
                                                    <i class="material-icons">add_shopping_cart</i> Cart
                                                </a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div class="card-content">
                                <h4 class="card-title">
                                    <h4 class="card-title">Mercurial NIKE</h4>
                                </h4>
                                <p class="card-description">Nike Scarpe Calcio Mercurial Superfly V Cr7 Fg Argento Arancio 41 Cut in a trim yet comfortable regular fit.</p>
                                <div class="footer">
                                    <div class="price-container">
                                        <span class="price price-old"> &euro;275</span>
                                        <span class="price price-new">&euro;220</span>
                                    </div>
                                    <div class="stats">
                                    </div>
                                </div>
                            </div>
                        </div>

                    </div>

                </div>
            </div>
        </div><!-- section -->

        <div class="section">
            <div class="container">
                <h2 class="section-title">Find what you need</h2>
                <div class="row">
                    <div class="col-md-3">
                        <div class="card card-refine card-plain">
                            <div class="card-content">
                                <h4 class="card-title">
                                    Refine
                                    <button class="btn btn-default btn-fab btn-fab-mini btn-simple pull-right" rel="tooltip" title="Reset Filter">
                                        <i class="material-icons">cached</i>
                                    </button>
                                </h4>
                                <div class="panel panel-default panel-rose">
                                    <div class="panel-heading" role="tab" id="headingOne">
                                        <a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseOne" aria-expanded="false" aria-controls="collapseOne">
                                            <h4 class="panel-title">Price Range</h4>
                                            <i class="material-icons material-margin">keyboard_arrow_down</i>
                                        </a>
                                    </div>
                                    <div id="collapseOne" class="panel-collapse collapse in" role="tabpanel" aria-labelledby="headingOne">
                                        <div class="panel-body panel-refine">
                                            <span id="price-left" class="price-left pull-left" data-currency="&euro;">100</span>
                                            <span id="price-right" class="price-right pull-right" data-currency="&euro;">850</span>
                                            <div class="clearfix"></div>
                                            <div id="sliderRefine" class="slider slider-rose"></div>
                                        </div>
                                    </div>
                                </div>

                                <div class="panel panel-default panel-rose">
                                    <div class="panel-heading" role="tab" id="headingTwo">
                                        <a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
                                            <h4 class="panel-title">Clothing</h4>
                                            <i class="material-icons material-margin">keyboard_arrow_down</i>
                                        </a>
                                    </div>
                                    <div id="collapseTwo" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingTwo">
                                        <div class="panel-body">
                                            <div class="checkbox">
                                                <label>
                                                    <input type="checkbox" value="" data-toggle="checkbox" checked="">
                                                    Blazers
                                                </label>
                                            </div>

                                            <div class="checkbox">
                                                <label>
                                                    <input type="checkbox" value="" data-toggle="checkbox">
                                                    Casual Shirts
                                                </label>
                                            </div>

                                            <div class="checkbox">
                                                <label>
                                                    <input type="checkbox" value="" data-toggle="checkbox">
                                                    Formal Shirts
                                                </label>
                                            </div>

                                            <div class="checkbox">
                                                <label>
                                                    <input type="checkbox" value="" data-toggle="checkbox">
                                                    Jeans
                                                </label>
                                            </div>

                                            <div class="checkbox">
                                                <label>
                                                    <input type="checkbox" value="" data-toggle="checkbox">
                                                    Polos
                                                </label>
                                            </div>

                                            <div class="checkbox">
                                                <label>
                                                    <input type="checkbox" value="" data-toggle="checkbox">
                                                    Pyjamas
                                                </label>
                                            </div>

                                            <div class="checkbox">
                                                <label>
                                                    <input type="checkbox" value="" data-toggle="checkbox">
                                                    Shorts
                                                </label>
                                            </div>

                                            <div class="checkbox">
                                                <label>
                                                    <input type="checkbox" value="" data-toggle="checkbox">
                                                    Trousers
                                                </label>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                                <div class="panel panel-default panel-rose">
                                    <div class="panel-heading" role="tab" id="headingThree">
                                        <a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseThree" aria-expanded="false" aria-controls="collapseThree">
                                            <h4 class="panel-title">Designer</h4>
                                            <i class="material-icons material-margin">keyboard_arrow_down</i>
                                        </a>
                                    </div>
                                    <div id="collapseThree" class="panel-collapse collapse in" role="tabpanel" aria-labelledby="headingThree">
                                        <div class="panel-body">
                                            <div class="checkbox">
                                                <label>
                                                    <input type="checkbox" value="" data-toggle="checkbox" checked="">
                                                    All
                                                </label>
                                            </div>

                                            <div class="checkbox">
                                                <label>
                                                    <input type="checkbox" value="" data-toggle="checkbox">
                                                    Polo Ralph Lauren
                                                </label>
                                            </div>

                                            <div class="checkbox">
                                                <label>
                                                    <input type="checkbox" value="" data-toggle="checkbox">
                                                    Wooyoungmi
                                                </label>
                                            </div>

                                            <div class="checkbox">
                                                <label>
                                                    <input type="checkbox" value="" data-toggle="checkbox">
                                                    Alexander McQueen
                                                </label>
                                            </div>

                                            <div class="checkbox">
                                                <label>
                                                    <input type="checkbox" value="" data-toggle="checkbox">
                                                    Tom Ford
                                                </label>
                                            </div>

                                            <div class="checkbox">
                                                <label>
                                                    <input type="checkbox" value="" data-toggle="checkbox">
                                                    AMI
                                                </label>
                                            </div>

                                            <div class="checkbox">
                                                <label>
                                                    <input type="checkbox" value="" data-toggle="checkbox">
                                                    Berena
                                                </label>
                                            </div>

                                            <div class="checkbox">
                                                <label>
                                                    <input type="checkbox" value="" data-toggle="checkbox">
                                                    Thom Sweeney
                                                </label>
                                            </div>

                                            <div class="checkbox">
                                                <label>
                                                    <input type="checkbox" value="" data-toggle="checkbox">
                                                    Burberry Prorsum
                                                </label>
                                            </div>

                                            <div class="checkbox">
                                                <label>
                                                    <input type="checkbox" value="" data-toggle="checkbox">
                                                    Calvin Klein
                                                </label>
                                            </div>

                                            <div class="checkbox">
                                                <label>
                                                    <input type="checkbox" value="" data-toggle="checkbox">
                                                    Kingsman
                                                </label>
                                            </div>

                                            <div class="checkbox">
                                                <label>
                                                    <input type="checkbox" value="" data-toggle="checkbox">
                                                    Club Monaco
                                                </label>
                                            </div>

                                            <div class="checkbox">
                                                <label>
                                                    <input type="checkbox" value="" data-toggle="checkbox">
                                                    Dolce & Gabbana
                                                </label>
                                            </div>

                                            <div class="checkbox">
                                                <label>
                                                    <input type="checkbox" value="" data-toggle="checkbox">
                                                    Gucci
                                                </label>
                                            </div>

                                            <div class="checkbox">
                                                <label>
                                                    <input type="checkbox" value="" data-toggle="checkbox">
                                                    Biglioli
                                                </label>
                                            </div>

                                            <div class="checkbox">
                                                <label>
                                                    <input type="checkbox" value="" data-toggle="checkbox">
                                                    Lanvin
                                                </label>
                                            </div>

                                            <div class="checkbox">
                                                <label>
                                                    <input type="checkbox" value="" data-toggle="checkbox">
                                                    Loro Piana
                                                </label>
                                            </div>

                                            <div class="checkbox">
                                                <label>
                                                    <input type="checkbox" value="" data-toggle="checkbox">
                                                    Massimo Alba
                                                </label>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                                <div class="panel panel-default panel-rose">
                                    <div class="panel-heading" role="tab" id="headingFour">
                                        <a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseFour" aria-expanded="false" aria-controls="collapseFour">
                                            <h4 class="panel-title">Colour</h4>
                                            <i class="material-icons material-margin">keyboard_arrow_down</i>
                                        </a>
                                    </div>
                                    <div id="collapseFour" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingOne">
                                        <div class="panel-body">
                                            <div class="checkbox">
                                                <label>
                                                    <input type="checkbox" value="" data-toggle="checkbox" checked="">
                                                    All
                                                </label>
                                            </div>

                                            <div class="checkbox">
                                                <label>
                                                    <input type="checkbox" value="" data-toggle="checkbox">
                                                    Black
                                                </label>
                                            </div>

                                            <div class="checkbox">
                                                <label>
                                                    <input type="checkbox" value="" data-toggle="checkbox">
                                                    Blue
                                                </label>
                                            </div>

                                            <div class="checkbox">
                                                <label>
                                                    <input type="checkbox" value="" data-toggle="checkbox">
                                                    Brown
                                                </label>
                                            </div>

                                            <div class="checkbox">
                                                <label>
                                                    <input type="checkbox" value="" data-toggle="checkbox">
                                                    Gray
                                                </label>
                                            </div>

                                            <div class="checkbox">
                                                <label>
                                                    <input type="checkbox" value="" data-toggle="checkbox">
                                                    Green
                                                </label>
                                            </div>

                                            <div class="checkbox">
                                                <label>
                                                    <input type="checkbox" value="" data-toggle="checkbox">
                                                    Neutrals
                                                </label>
                                            </div>

                                            <div class="checkbox">
                                                <label>
                                                    <input type="checkbox" value="" data-toggle="checkbox">
                                                    Purple
                                                </label>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div><!-- end card -->
                    </div>

                    <div class="col-md-9">
                        <div class="row">
                            <div class="col-md-4">
                                <div class="card card-product card-plain no-shadow" data-colored-shadow="false">
                                    <div class="card-image">
                                        <a href="#">
                                            <img src="../assets/img/examples/suit-1.jpg" alt="..."/>
                                        </a>
                                    </div>
                                    <div class="card-content">
                                        <a href="#">
                                            <h4 class="card-title">Polo Ralph Lauren</h4>
                                        </a>
                                        <p class="description">
                                            Impeccably tailored in Italy from lightweight navy wool.
                                        </p>
                                        <div class="footer">
                                            <div class="price-container">
                                                <span class="price"> &euro; 800</span>
                                            </div>

                                            <button class="btn btn-rose btn-simple btn-fab btn-fab-mini btn-round pull-right" rel="tooltip" title="Remove from wishlist" data-placement="left">
                                                <i class="material-icons">favorite</i>
                                            </button>
                                        </div>
                                    </div>
                                </div> <!-- end card -->
                            </div>
                            <div class="col-md-4">
                                <div class="card card-product card-plain no-shadow" data-colored-shadow="false">
                                    <div class="card-image">
                                        <a href="#">
                                            <img src="../assets/img/examples/suit-2.jpg" alt="..."/>
                                        </a>
                                    </div>
                                    <div class="card-content">
                                        <a href="#">
                                            <h4 class="card-title">Wooyoungmi</h4>
                                        </a>
                                        <p class="description">
                                            Dark-grey slub wool, pintucked notch lapels.
                                        </p>
                                        <div class="footer">
                                            <div class="price-container">
                                                <span class="price">&euro; 555</span>
                                            </div>

                                            <button class="btn btn-rose btn-simple btn-fab btn-fab-mini btn-round pull-right" rel="tooltip" title="Add to wishlist" data-placement="left">
                                                <i class="material-icons">favorite_border</i>
                                            </button>
                                        </div>
                                    </div>
                                </div> <!-- end card -->
                            </div>
                            <div class="col-md-4">
                                <div class="card card-product card-plain no-shadow" data-colored-shadow="false">
                                    <div class="card-image">
                                        <a href="#">
                                            <img src="../assets/img/examples/suit-3.jpg" alt="..."/>
                                        </a>
                                    </div>
                                    <div class="card-content">
                                        <a href="#">
                                            <h4 class="card-title">Tom Ford</h4>
                                        </a>
                                        <p class="description">
                                            Immaculate tailoring is TOM FORD's forte.
                                        </p>
                                        <div class="footer">
                                            <div class="price-container">
                                                <span class="price"> &euro; 879</span>
                                            </div>

                                            <button class="btn btn-rose btn-simple btn-fab btn-fab-mini btn-round pull-right"  rel="tooltip" title="Add to wishlist" data-placement="left">
                                                <i class="material-icons">favorite_border</i>
                                            </button>
                                        </div>
                                    </div>
                                </div> <!-- end card -->
                            </div>

                            <div class="col-md-4">
                                <div class="card card-product card-plain no-shadow" data-colored-shadow="false">
                                    <div class="card-image">
                                        <a href="#">
                                            <img src="../assets/img/examples/suit-4.jpg" alt="..."/>
                                        </a>
                                    </div>
                                    <div class="card-content">
                                        <a href="#">
                                            <h4 class="card-title">Thom Sweeney</h4>
                                        </a>
                                        <p class="description">
                                            It's made from lightweight grey wool woven.
                                        </p>
                                        <div class="footer">
                                            <div class="price-container">
                                                <span class="price"> &euro; 680</span>
                                            </div>

                                            <button class="btn btn-rose btn-simple btn-fab btn-fab-mini btn-round pull-right"  rel="tooltip" title="Add to wishlist" data-placement="left">
                                                <i class="material-icons">favorite_border</i>
                                            </button>
                                        </div>
                                    </div>
                                </div> <!-- end card -->
                            </div>

                            <div class="col-md-4">
                                <div class="card card-product card-plain no-shadow" data-colored-shadow="false">
                                    <div class="card-image">
                                        <a href="#">
                                            <img src="../assets/img/examples/suit-5.jpg" alt="..."/>
                                        </a>
                                    </div>
                                    <div class="card-content">
                                        <a href="#">
                                            <h4 class="card-title">Kingsman</h4>
                                        </a>
                                        <p class="description">
                                            Crafted from khaki cotton and fully canvassed.
                                        </p>
                                        <div class="footer">
                                            <div class="price-container">
                                                <span class="price"> &euro; 725</span>
                                            </div>

                                            <button class="btn btn-rose btn-simple btn-fab btn-fab-mini btn-round pull-right" rel="tooltip" title="Remove from wishlist" data-placement="left">
                                                <i class="material-icons">favorite</i>
                                            </button>
                                        </div>
                                    </div>
                                </div> <!-- end card -->
                            </div>
                            <div class="col-md-4">
                                <div class="card card-product card-plain no-shadow" data-colored-shadow="false">
                                    <div class="card-image">
                                        <a href="#">
                                            <img src="../assets/img/examples/suit-6.jpg" alt="..."/>
                                        </a>
                                    </div>
                                    <div class="card-content">
                                        <a href="#">
                                            <h4 class="card-title">Boglioli</h4>
                                        </a>
                                        <p class="description">
                                            Masterfully crafted in Northern Italy.
                                        </p>
                                        <div class="footer">
                                            <div class="price-container">
                                                <span class="price">&euro; 699</span>
                                            </div>

                                            <button class="btn btn-rose btn-simple btn-fab btn-fab-mini btn-round pull-right" rel="tooltip" title="Add to wishlist" data-placement="left">
                                                <i class="material-icons">favorite_border</i>
                                            </button>
                                        </div>
                                    </div>
                                </div> <!-- end card -->
                            </div>
                            <div class="col-md-3 col-md-offset-4">
                                <button rel="tooltip" class="btn btn-rose btn-round">Load more...</button>
                            </div>
                        </div>
                    </div>
                </div>

                <br>
                <h2 class="section-title">News in fashion</h2>

                <div class="row">
                    <div class="col-md-4">
                        <div class="card card-background" style="background-image: url(../assets/img/examples/chris9.jpg)">
                            <div class="card-content">
                                <h6 class="category text-info">Productivy Apps</h6>
                                <a href="#pablo">
                                    <h3 class="card-title">The best trends in fashion 2017</h3>
                                </a>
                                <p class="card-description">
                                    Don't be scared of the truth because we need to restart the human foundation in truth And I love you like Kanye loves Kanye I love Rick Owens’ bed design but the back is...
                                </p>
                                <a href="#pablo" class="btn btn-white btn-round">
                                    <i class="material-icons">subject</i> Read
                                </a>
                            </div>
                        </div> <!-- end card -->
                    </div>

                    <div class="col-md-4">
                        <div class="card card-background" style="background-image: url(../assets/img/examples/color3.jpg)">
                            <div class="card-content">
                                <h6 class="category text-info">Fashion News</h6>
                                <h3 class="card-title">Kanye joins the Yeezy team at Adidas</h3>
                                <p class="card-description">
                                    Don't be scared of the truth because we need to restart the human foundation in truth And I love you like Kanye loves Kanye I love Rick Owens’ bed design but the back is...
                                </p>
                                <a href="#pablo" class="btn btn-white btn-round">
                                    <i class="material-icons">subject</i> Read
                                </a>
                            </div>
                        </div> <!-- end card -->
                    </div>

                    <div class="col-md-4">
                        <div class="card card-background" style="background-image: url(../assets/img/examples/chris1.jpg)">
                            <div class="card-content">
                                <h6 class="category text-info">Productivy Apps</h6>
                                <a href="#pablo">
                                    <h3 class="card-title">Learn how to use the new colors of 2017</h3>
                                </a>
                                <p class="card-description">
                                    Don't be scared of the truth because we need to restart the human foundation in truth And I love you like Kanye loves Kanye I love Rick Owens’ bed design but the back is...
                                </p>
                                <a href="#pablo" class="btn btn-white btn-round">
                                    <i class="material-icons">subject</i> Read
                                </a>
                            </div>
                        </div> <!-- end card -->
                    </div>

                    <div class="col-md-6">
                        <div class="card card-background" style="background-image: url(../assets/img/dg3.jpg)">
                            <div class="card-content">
                                <h6 class="category text-info">Tutorials</h6>
                                <a href="#pablo">
                                    <h3 class="card-title">Trending colors of 2017</h3>
                                </a>
                                <p class="card-description">
                                    Don't be scared of the truth because we need to restart the human foundation in truth And I love you like Kanye loves Kanye I love Rick Owens’ bed design but the back is...
                                </p>
                                <a href="#pablo" class="btn btn-white btn-round">
                                    <i class="material-icons">subject</i> Read
                                </a>
                            </div>
                        </div> <!-- end card -->
                    </div>

                    <div class="col-md-6">
                        <div class="card card-background" style="background-image: url(../assets/img/dg1.jpg)">
                            <div class="card-content">
                                <h6 class="category text-info">Productivy Style</h6>
                                <a href="#pablo">
                                    <h3 class="card-title">Fashion & Style 2017</h3>
                                </a>
                                <p class="card-description">
                                    Don't be scared of the truth because we need to restart the human foundation in truth And I love you like Kanye loves Kanye I love Rick Owens’ bed design but the back is...
                                </p>
                                <a href="#pablo" class="btn btn-white btn-round">
                                    <i class="material-icons">subject</i> read
                                </a>
                            </div>
                        </div> <!-- end card -->
                    </div>
                </div>

            </div>
        </div><!-- section -->

    </div> <!-- end-main-raised -->

    <div class="section section-blog">
        <div class="container">
            <h2 class="section-title">Latest Articles</h2>
            <div class="row">
                <div class="col-md-4">

                    <div class="card card-blog">
                        <div class="card-image">
                            <a href="#pablo">
                                <img src="../assets/img/dg6.jpg" alt="">
                            </a>
                            <div class="colored-shadow" style="background-image: url(&quot;assets/img/examples/color1.jpg&quot;); opacity: 1;"></div><div class="ripple-container"></div></div>
                        <div class="card-content">
                            <h6 class="category text-rose">Trends</h6>
                            <h4 class="card-title">
                                <a href="#pablo">Learn how to wear your scarf with a floral print shirt</a>
                            </h4>
                            <p class="card-description">
                                Don't be scared of the truth because we need to restart the human foundation in truth And I love you like Kanye loves Kanye I love Rick Owens’ bed design but the back is...
                            </p>
                        </div>
                    </div>

                </div>

                <div class="col-md-4">

                    <div class="card card-blog">
                        <div class="card-image">
                            <a href="#pablo">
                                <img src="../assets/img/dg10.jpg" alt="">
                            </a>
                            <div class="colored-shadow" style="background-image: url(&quot;assets/img/examples/color1.jpg&quot;); opacity: 1;"></div><div class="ripple-container"></div></div>
                        <div class="card-content">
                            <h6 class="category text-rose">Fashion week</h6>
                            <h4 class="card-title">
                                <a href="#pablo">Katy Perry was wearing a Dolce & Gabanna arc dress</a>
                            </h4>
                            <p class="card-description">
                                Don't be scared of the truth because we need to restart the human foundation in truth And I love you like Kanye loves Kanye I love Rick Owens’ bed design but the back is...
                            </p>
                        </div>
                    </div>

                </div>

                <div class="col-md-4">

                    <div class="card card-blog">
                        <div class="card-image">
                            <a href="#pablo">
                                <img src="../assets/img/dg9.jpg" alt="">
                            </a>
                            <div class="colored-shadow" style="background-image: url(&quot;assets/img/examples/color1.jpg&quot;); opacity: 1;"></div><div class="ripple-container"></div></div>
                        <div class="card-content">
                            <h6 class="category text-rose">Fashion week</h6>
                            <h4 class="card-title">
                                <a href="#pablo">Check the latest fashion events and which are the trends</a>
                            </h4>
                            <p class="card-description">
                                Don't be scared of the truth because we need to restart the human foundation in truth And I love you like Kanye loves Kanye I love Rick Owens’ bed design but the back is...
                            </p>
                        </div>
                    </div>

                </div>

            </div>
        </div>
    </div><!-- section -->

    <div class="subscribe-line subscribe-line-image" data-parallax="true"  style="background-image: url('../assets/img/examples/ecommerce-header.jpg');">
        <div class="container">
            <div class="row">
                <div class="col-md-6 col-md-offset-3">
                    <div class="text-center">
                        <h3 class="title">Subscribe to our Newsletter</h3>
                        <p class="description">
                            Join our newsletter and get news in your inbox every week! We hate spam too, so no worries about this.
                        </p>
                    </div>

                    <div class="card card-raised card-form-horizontal">
                        <div class="card-content">
                            <form method="" action="">
                                <div class="row">
                                    <div class="col-sm-8">

                                        <div class="input-group">
                                            <span class="input-group-addon">
                                                <i class="material-icons">mail</i>
                                            </span>
                                            <div class="form-group is-empty"><input type="email" value="" placeholder="Your Email..." class="form-control"><span class="material-input"></span></div>
                                        </div>
                                    </div>
                                    <div class="col-sm-4">
                                        <button type="button" class="btn btn-rose btn-block">Subscribe</button>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>

                </div>
            </div>
        </div>
    </div>
    <c:import url="pageBuilder/footer.jsp"/>
    <script type="text/javascript">
        $(document).ready(function () {

            var slider2 = document.getElementById('sliderRefine');

            noUiSlider.create(slider2, {
                start: [42, 880],
                connect: true,
                range: {
                    'min': [30],
                    'max': [900]
                }
            });

            var limitFieldMin = document.getElementById('price-left');
            var limitFieldMax = document.getElementById('price-right');

            slider2.noUiSlider.on('update', function (values, handle) {
                if (handle) {
                    limitFieldMax.innerHTML = $('#price-right').data('currency') + Math.round(values[handle]);
                } else {
                    limitFieldMin.innerHTML = $('#price-left').data('currency') + Math.round(values[handle]);
                }
            });
        });
    </script>




</html>
