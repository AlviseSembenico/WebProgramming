<%-- 
    Document   : map
    Created on : 5-nov-2017, 16.52.26
    Author     : zappi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <div class="row">
            <div class="contact-page">
                <div id="contactUsMap" class="big-map"></div>
            </div>
        </div>
    </body>
    <script type="text/javascript">
        $().ready(function () {
            materialKitDemo.initContactUsMap();

        });
    </script>
</html>

