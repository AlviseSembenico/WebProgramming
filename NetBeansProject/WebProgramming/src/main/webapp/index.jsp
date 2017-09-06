<%-- 
    Document   : newjsp
    Created on : Aug 16, 2017, 1:11:14 PM
    Author     : Alvise
--%>




<%@page import="com.google.gson.Gson"%>
<%@page import="Dao.jdbc.JdbcUserDao"%>
<%@page import="Dao.entities.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Prova</title>
    </head>
    <body>
           
            <% 
                User u=new JdbcUserDao().getUserById(1);
                Gson g=new Gson();
               
            %> 
            
            <%= g.toJson(u) %>
        
    </body>
</html>
