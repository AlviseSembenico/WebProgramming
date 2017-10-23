<%-- 
    Document   : payment
    Created on : Oct 16, 2017, 10:40:46 AM
    Author     : skat96
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
    <!doctype html>
<html>
    <c:import url="pageBuilder/header.jsp"/>    
    <body>
        <div class="page-header header-filter" data-parallax="true" style="background-image: url(https://www.consumatori.it/wp-content/uploads/2015/09/venditore_consumatore_stretta-di-mano1.jpg); transform: translate3d(0px, 0px, 0px);"></div>
        <div class="main main-raised">
            <div class="profile-content">
                <div class="container">
                    <div class="row-content">                        
                        <div class="col-md-12">
                            <div class="row">
                                <h4>Totale: </h4>
                            </div>
                            <div class="row">
                                <div class="col-sm-3">
		                    <div class="title">
		                        <h4>Select a payment method</h4>
		                    </div>
                                    <div class="radio">
                                            <label  style="color:black">
                                                <input id="credito" type="radio" name="optionsRadios"  checked="true" onchange="ChangeMode()"><span class="circle"></span><span class="check"></span>
                                                    <p>Credit or debit card</p>
                                            </label>
                                    </div>
                                    <div class="radio">
                                            <label style="color:black">
                                                    <input id="paypal" type="radio" name="optionsRadios" onchange="ChangeMode()"><span class="circle"></span><span class="check"></span>
                                                    <p>PayPal</p>
                                            </label>
                                    </div>
                                    <div class="radio">
                                            <label style="color:black">
                                                    <input id="bonifico" type="radio" name="optionsRadios" onchange="ChangeMode()"><span class="circle"></span><span class="check"></span>
                                                    <p>Bank transfer</p>
                                            </label>
                                    </div>
		                </div>
                            </div>
                            <br/>
                            <hr/>
                            <br/>
                            <div class="row">                                
                                <div id='CC' style='display: none'>
                                    <div class="row">
                                        <div class='col-md-4'>
                                            <h5>Accountholder</h5>
                                        </div>
                                        <div class='col-md-4'>
                                            <h5>Card Number</h5>
                                        </div>
                                        <div class='col-md-4'>
                                            <h5>Expiry date</h5>
                                        </div>
                                    </div>
                                    <div class='row'>
                                        <div class="col-md-4">
                                            <input type="text" placeholder="Accountholder" class="form-control">
                                        </div>   
                                        <div class="col-md-4">
                                            <input type="text" placeholder="Card Number" class="form-control">
                                        </div>
                                        <div class="col-md-4">
                                            <input class="datepicker form-control" type="text" value="03/12/2016"/>
                                        </div>  
                                    </div>
                                </div>
                            </div>
                            <script>
                                $('.datepicker').datepicker({
                                            weekStart:1
                                });
                            </script>
                                
                            <script text='javascript'>
                                function Paga()
                                {
                                    alert("Pagamento effettuato");
                                }       
                                function ChangeMode()
                                {
                                   var credito = document.getElementById('credito').checked;
                                   var paypal = document.getElementById('paypal').checked;
                                   var bonifico = document.getElementById('bonifico').checked;
                                   
                                   if(credito == true)
                                   {
                                       document.getElementById('CC').removeAttribute('disabled');
                                   }
                                }
                            </script>
                            <div class="row">
                                <div class="text-center">
                                    <input type="button" class="btn btn-primary" value="Confirm" onclick='Paga()'/>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </body>
    <c:import url="pageBuilder/footer.jsp"/>
</html>
