
<%-- 
    Document   : risultati
    Created on : 14-ott-2017, 10.32.00
    Author     : Utente
--%>

<%@page import="java.util.LinkedList"%>
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
                        <!--<form method="GET" <c:out value="${name}"></c:out>></form>-->
                            <h1 class="title">Ecommerce Page!</h1>
                            <h4>Free global delivery for all products. Use coupon <b>25summer</b> for an extra 25% Off</h4>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div class="main main-raised">
            <div class="section" style="padding-bottom: 0px;">
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
                                                    <a href="product?id=32" class="btn btn-round btn-white">
                                                        <i class="material-icons">info</i> Details
                                                    </a>
                                                    <a href="cart" class="btn btn-round btn-rose">
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
                                                    <a href="product?id=33" class="btn btn-round btn-white">
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
                                                    <a href="product?id=34" class="btn btn-round btn-white">
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

            <div class="section" style="padding-top: 0px;">
                <div class="container">
                    <form method="GET">

                        <div class="row">
                            <div class="col-md-3">
                                <h3 class="section-title">Find what you need</h3>
                                <input type="text" value="<c:out value="${name}"/>" hidden="false" name="name">
                            <div class="card card-refine card-plain">
                                <div class="card-content">
                                    <h4 class="card-title">
                                        Filter
                                        <button class="btn btn-default btn-fab btn-fab-mini btn-simple pull-right" type= submit" rel="tooltip" title="Send filter">
                                            <i class="material-icons">filter_list</i>
                                        </button>
                                    </h4>
                                    <div class="panel panel-default panel-blu">
                                        <div class="panel-heading" role="tab" id="headingOne">
                                            <a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseOne" aria-expanded="false" aria-controls="collapseOne">
                                                <h4 class="panel-title">Price Range</h4>
                                                <i class="material-icons material-margin">keyboard_arrow_down</i>
                                            </a>
                                        </div>
                                        <div id="collapseOne" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingOne">
                                            <div class="panel-body panel-refine">
                                                <span id="price-left" class="price-left pull-left" data-currency="&euro;">0</span> 
                                                <span id="price-right" class="price-right pull-right" data-currency="&euro;">1000</span>
                                                <input name="maxPrice" id="maxPrice" hidden="true" />
                                                <input name="minPrice" id="minPrice" hidden="true" />
                                                <div class="clearfix"></div>
                                                <div id="sliderRefine" class="slider slider-blu"></div>
                                            </div>
                                        </div>
                                    </div>



                                    <div class="panel panel-default panel-blu">
                                        <div class="panel-heading" role="tab" id="headingTwo">
                                            <a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
                                                <h4 class="panel-title">Region</h4>
                                                <i class="material-icons material-margin">keyboard_arrow_down</i>
                                            </a>
                                        </div>
                                        <div id="collapseTwo" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingTwo">
                                            <div class="panel-body">
                                                <form action="">
                                                    <fieldset>
                                                        <legend>Region</legend>
                                                        <input type="radio" name="Region" value=""/> Everything <br>
                                                        <input type="radio" name="Region" value="Valle da Osta"/> Valle da Osta<br>
                                                        <input type="radio" name="Region" value="Piemonte"/> Piemonte<br>
                                                        <input type="radio" name="Region" value="Liguria"/> Liguria<br>
                                                        <input type="radio" name="Region" value="Lombardia"/> Lombardia<br>
                                                        <input type="radio" name="Region" value="Trentino-Alto Adige"/> Trentino-Alto Adige<br>
                                                        <input type="radio" name="Region" value="Veneto"/> Veneto<br>
                                                        <input type="radio" name="Region" value="Friuli-Venezia Giulia"/> Friuli-Venezia Giulia <br>
                                                        <input type="radio" name="Region" value="Emilia-Romagna"/> Emilia-Romagna<br>
                                                        <input type="radio" name="Region" value="Toscana"/> Toscana<br>
                                                        <input type="radio" name="Region" value="Marche"/> Marche<br>
                                                        <input type="radio" name="Region" value="Umbria"/> Umbria<br>
                                                        <input type="radio" name="Region" value="Lazio"/> Lazio<br>
                                                        <input type="radio" name="Region" value="Abruzzo"/> Abruzzo<br>
                                                        <input type="radio" name="Region" value="Molise"/> Molise<br>
                                                        <input type="radio" name="Region" value="Campania"/> Campania<br>
                                                        <input type="radio" name="Region" value="Basilicata"/> Basilicata<br>
                                                        <input type="radio" name="Region" value="Puglia"/> Puglia<br>
                                                        <input type="radio" name="Region" value="Calabria"/> Calabria<br>
                                                        <input type="radio" name="Region" value="Sicilia"/> Sicilia<br>
                                                        <input type="radio" name="Region" value="Sardegna"/> Sardegna<br>

                                                    </fieldset>

                                            </div>
                                        </div>
                                    </div>

                                    <div class="panel panel-default panel-blu">
                                        <div class="panel-heading" role="tab" id="headingThree">
                                            <a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseThree" aria-expanded="false" aria-controls="collapseThree">
                                                <h4 class="panel-title">City</h4>
                                                <i class="material-icons material-margin">keyboard_arrow_down</i>
                                            </a>
                                        </div>
                                        <div id="collapseThree" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingThree">
                                            <div class="panel-body">
                                                <fieldset>
                                                    <legend>City</legend>
                                                    <input type="radio" name="City" value=""/> Everything <br>
                                                    <input type="radio" name="City" value="Aosta"/> Aosta<br>
                                                    <input type="radio" name="City" value="Torino"/> Torino<br>
                                                    <input type="radio" name="City" value="Genova"/> Genova<br>
                                                    <input type="radio" name="City" value="Milano"/> Milano<br>
                                                    <input type="radio" name="City" value="Trento"/> Trento<br>
                                                    <input type="radio" name="City" value="Venezia"/> Venezia<br>
                                                    <input type="radio" name="City" value="Trieste"/> Trieste<br>
                                                    <input type="radio" name="City" value="Bologna"/> Bologna<br>
                                                    <input type="radio" name="City" value="Firenze"/> Firenze<br>
                                                    <input type="radio" name="City" value="Ancona"/> Ancona<br>
                                                    <input type="radio" name="City" value="Perugia"/> Perugia<br>
                                                    <input type="radio" name="City" value="Roma"/> Roma<br>
                                                    <input type="radio" name="City" value="L'Aquila"/> L'Aquila<br>
                                                    <input type="radio" name="City" value="Campobasso"/> Campobasso<br>
                                                    <input type="radio" name="City" value="Napoli"/> Napoli<br>
                                                    <input type="radio" name="City" value="Potenza"/> Potenza<br>
                                                    <input type="radio" name="City" value="Bari"/> Bari<br>
                                                    <input type="radio" name="City" value="Catanzaro"/> Catanzaro<br>
                                                    <input type="radio" name="City" value="Palermo"/> Palermo<br>
                                                    <input type="radio" name="City" value="Cagliari"/> Cagliari<br>
                                                </fieldset>

                                            </div>
                                        </div>
                                    </div>


                                    <div class="panel panel-default panel-blu">
                                        <div class="panel-heading" role="tab" id="headingFour">
                                            <a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseFour" aria-expanded="false" aria-controls="collapseFour">
                                                <h4 class="panel-title">Number of Review</h4>
                                                <i class="material-icons material-margin">keyboard_arrow_down</i>
                                            </a>
                                        </div>
                                        <div id="collapseFour" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingFour">
                                            <div class="panel-body">

                                                <fieldset>
                                                    <legend>Number of Review</legend>
                                                    <input type="radio" name="maxRew" value="10"/> <10 <br>
                                                    <input type="radio" name="maxRew" value="15"/> <15 <br>
                                                    <input type="radio" name="maxRew" value="20"/> <20 <br>
                                                    <input type="radio" name="maxRew" value="30"/> >20<br>
                                                </fieldset>

                                            </div>
                                        </div>
                                    </div>
                                    <div class="panel panel-default panel-blu">
                                        <div class="panel-heading" role="tab" id="headingFour">
                                            <a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseFive" aria-expanded="false" aria-controls="collapseFive">
                                                <h4 class="panel-title">Star</h4>
                                                <i class="material-icons material-margin">keyboard_arrow_down</i>
                                            </a>
                                        </div>
                                        <div id="collapseFive" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingFive">
                                            <div class="panel-body">

                                                <fieldset>
                                                    <legend>Min of Star</legend>
                                                    <link rel="stylesheet" href="//netdna.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css">
                                                    <div class="stars">

                                                        <form action="">

                                                            <input class="star star-5" id="star-5" type="radio" name="star" value="5"/>

                                                            <label class="star star-5" for="star-5"></label>

                                                            <input class="star star-4" id="star-4" type="radio" name="star"value="4"/>

                                                            <label class="star star-4" for="star-4"></label>

                                                            <input class="star star-3" id="star-3" type="radio" name="star"value="3"/>

                                                            <label class="star star-3" for="star-3"></label>

                                                            <input class="star star-2" id="star-2" type="radio" name="star"value="2"/>

                                                            <label class="star star-2" for="star-2"></label>

                                                            <input class="star star-1" id="star-1" type="radio" name="star"value="1"/>

                                                            <label class="star star-1" for="star-1"></label>


                                                    </div>


                                                </fieldset>

                                            </div>

                                        </div>
                                    </div>
                                    </form>
                                </div>
                            </div>
                            <!-- end card -->
                        </div>
                        <div class="col-md-9">
                            <div class="row">
                                <c:choose>
                                    <c:when test="${product.get(0)!=null}">
                                        <c:forEach var="i" items='${product}'>
                                            <div class="col-md-4">
                                                <div class="card card-product card-plain card-rotate">
                                                    <div class="rotating-card-container">
                                                        <div class="card-image">
                                                            <div class="front">
                                                                <c:set var="picture" value="${pictureDao.getPictureByProduct(i)}"></c:set>
                                                                <img src="<c:out value='${picture.get(0).getPath()}'/>">
                                                            </div>

                                                            <div class="back back-background">
                                                                <div class="card-content">
                                                                    <h5 class="card-title">
                                                                        Quick Actions...
                                                                    </h5>
                                                                    <div class="footer text-center">
                                                                        <a href="product?id=<c:out value="${i.getId()}"/>" class="btn btn-round btn-white">
                                                                            <i class="material-icons">info</i> Details
                                                                        </a>
                                                                        <form method="POST" action="product">
                                                                            <input name="pid" style="visibility: hidden;" value="<c:out value="${i.getId()}"/>" />
                                                                            <button class="btn btn-rose btn-round" type="submit" >Add to Cart &nbsp;<i class="material-icons">shopping_cart</i></button>
                                                                        </form>

                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>

                                                    <div class="card-content">
                                                        <h4 class="card-title">
                                                            <h4 class="card-title"><c:out value="${i.getName()}"/></h4>
                                                        </h4>
                                                        <p class="card-description"><c:out value="${i.getDescription()}"/></p>
                                                        <div class="footer">
                                                            <div class="price-container">
                                                                <span class="price price-new">&euro;<c:out value="${i.getPrice()}"/></span>
                                                            </div>
                                                            <div class="stats">
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>

                                            </div>
                                        </c:forEach>  
                                    </c:when>
                                    <c:otherwise>
                                        <h2 class="section-title text-center"style="margin-top: 25px;"> There is no Product with it's name</h2>
                                    </c:otherwise>
                                </c:choose>
                            </div>
                        </div>
                    </div>
                </form>
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
                    start: [50, 750],
                    connect: true,
                    range: {
                        'min': [0],
                        'max': [1500]
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

                slider2.noUiSlider.on('change', function (values, handle) {
                    document.getElementById('minPrice').setAttribute("value", values[0]);
                    document.getElementById('maxPrice').setAttribute("value", values[1]);
                })

            });
        </script>

</html>
