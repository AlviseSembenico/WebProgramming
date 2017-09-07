<%-- 
    Document   : newjsp
    Created on : Aug 16, 2017, 1:11:14 PM
    Author     : Alvise
--%>




<%@page import="com.google.gson.Gson"%>
<%@page import="Dao.jdbc.*"%>
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
                User u=new JdbcUserDao().getUserById(6);
                u.setEmail("EMMM");
                /*u.setFirstName("michele");
                u.setLastName("bortolotti");
                u.setEmail("michi.borto@gmail.com");*/
                Gson g=new Gson();
                //new JdbcUserDao().insertDao(u);
            %> 
            
            <%=  new JdbcUserDao().updateDao(u) %>
        
    </body>
</html>
