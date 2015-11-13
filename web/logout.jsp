<%-- 
    Document   : logout
    Created on : Mar 23, 2015, 7:20:48 PM
    Author     : Afroz
--%>

<%@page import="RestaurentPOS.UserBean"%>
<%@page import="RestaurentPOS.LogOut"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <% 
        if(session != null){
            session.invalidate();
        response.sendRedirect("index.html");
        }else{
            response.sendRedirect("home.jsp");
        }
        
        
        %>
        <footer>
  <p>All rights reserved ©</p>
  <p>Contact Me: <a href="mailto:md.afroz.hcl@gmail.com">Here</a>.</p>
</footer>
    </body>
</html>
