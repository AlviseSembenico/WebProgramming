<%-- 
    Document   : trial
    Created on : Sep 22, 2017, 12:09:17 PM
    Author     : Alvise
--%>

<%@page import="Dao.entities.Product"%>
<%@page import="Dao.ProductDao"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<c:set var="productDao" value="${pageContext.servletContext.getAttribute('productDao')}"></c:set>
<c:set var="product" value="${productDao.getById(4)}"></c:set>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page </title>
    </head>
    <body>
        <h1>Hello World!<c:out value="${product.getName()}"/> </h1>
    </body>
</html>
