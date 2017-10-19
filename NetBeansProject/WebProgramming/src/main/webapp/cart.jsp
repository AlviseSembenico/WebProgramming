<%-- 
    Document   : cart
    Created on : Sep 22, 2017, 7:34:48 PM
    Author     : Alvise
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="Dao.entities.*"%>
<%@page import="Dao.*"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>

<c:set var="cartDao" value="${pageContext.servletContext.getAttribute('cartDao')}"></c:set>
<c:set var="pictureDao" value="${pageContext.servletContext.getAttribute('pictureDao')}"></c:set>
<c:set var="user" value="${pageContext.servletContext.getAttribute('user')}"></c:set>
<c:if test="${user ne null}">   
<c:set var="cart" value="${cartDao.getByUser(user)}"></c:set>
</c:if>

    <%  Cart cart= (Cart)session.getAttribute("cart"); 
        if(cart==null){
            cart=new Cart();
            session.setAttribute("cart", cart);
            ProductDao pd=(ProductDao)session.getAttribute("productDao"); 
            for(Cookie c:request.getCookies()){
                try{
                    cart.getProducts().add(pd.getProductById(Integer.parseInt(c.getValue())));
                }catch(Exception e){}
            }
               
        } 
    %>
   
    <!DOCTYPE html>
    <html>
    <c:import url="pageBuilder/header.jsp"/>
    <body class="product-page">
        <div class="page-header header-filter" data-parallax="true" style="background-image: url('https://www.happywall.co.uk/uploads/galleri/1204/forest_landscape_gallery.jpg');">
            <div class="container">
                <div class="row title-row">
                    <div class="col-md-4 col-md-offset-8">
                        <button class="btn btn-white pull-right"><i class="material-icons">shopping_cart</i> <c:out value="${cart.getProducts().size()}"/> Items</button>
                    </div>
                </div>
            </div>
        </div>
        <div class="section section-gray">
            <div class="container">
                <div class="main main-raised main-product">
                    <div class="container tim-container">
                        <div id="tables">
                            <div class="row">
                                <div class="col-md-12">
                                    <h4>Shopping Cart Table</h4>
                                </div>
                                <div class="col-md-10 col-md-offset-1">
                                    <div class="row">
                                        <div class="col-md-2 text-center"> 
                                            PRODUCT
                                        </div>
                                        <div class="col-md-3 text-center"> 
                                            NAME
                                        </div>
                                        <div class="col-md-2 th-description"> 
                                            DESCRIPTION
                                        </div>
                                        <div class="col-md-1"> 
                                            PRICE
                                        </div>

                                        <div class="col-md-1 th-description"> 
                                            CATEGORY
                                        </div>
                                        <div class="col-md-1 th-description"> 
                                            SHOP 
                                        </div>
                                        <div class="col-md-1"> 
                                            ACTION
                                        </div>
                                    </div>
                                    <hr>
                                    <c:forEach var="i" items="${cart.getProducts()}">
                                        <div class="row">
                                            <div class="col-md-2 td-name"> 
                                                <div class="img-container" style="width: 100%; max-width: 120px">
                                                    <img alt="..." src="<c:out value='${pictureDao.getPictureByProduct(i).get(0).getPath()}'/>">
                                                </div>
                                            </div>
                                            <div class="col-md-3 col-main">
                                                <a href="../product?id=<c:out value='${i.getId()}'/>"><c:out value="${i.getName()}"/></a>

                                            </div>
                                            <div class="col-md-2 col-name"> 
                                                <c:out value="${i.getDescription()}"/>
                                            </div>
                                            <div class="col-md-1  col-number text-left"> 
                                                <small>€</small><c:out value="${i.getPrice()}"/>
                                            </div>
                                            <div class="col-md-1 col-name" >
                                                <c:out value="${i.getCategory()}"/>
                                            </div>
                                            <div class="col-md-1 col-name"> 
                                                <a href="../product?id=<c:out value='${i.getShop().getId()}'/>"><c:out value="${i.getShop().getName()}"/></a>    
                                            </div>
                                            <div class="col-md-2 col-name">
                                                
                                                <div class="btn-group">
                                                    <button class="btn btn-round btn-xs"> <i class="material-icons">remove</i> </button>
                                                    <button class="btn btn-round btn-xs"> <i class="material-icons">add</i> </button>
                                                </div> <br>
                                                QTY <c:out value='${cart.countProduct(i)}'/>
                                            </div>
                                        </div>
                                    </c:forEach>

                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <c:import url="pageBuilder/footer.jsp"/>