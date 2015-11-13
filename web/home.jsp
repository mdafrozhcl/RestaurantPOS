
<%-- 
    Document   : userLogged
    Created on : Jan 8, 2015, 12:26:12 AM
    Author     : Afroz
--%>
<%@ page language="java" contentType="text/html; charset=windows-1256" pageEncoding="windows-1256" import="RestaurentPOS.UserBean" %> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd"> 
<html> 
    <head> 
        <meta http-equiv="Content-Type" content="text/html; charset=windows-1256">  
        <title>Restaurant POS System</title>
    <link rel="stylesheet" href="css/style.css">
    </head> 
    <body> 
        <%
            if(session.getAttribute("currentSessionUser")==null){
                response.sendRedirect("index.html");
            }else{
        %>
    <div class="menu4">
    <a href="#" class="current"><span>Home</span></a>
    <a href="addItem.jsp"><span>Add Menus Item</span></a>
    <a href="menu.jsp"><span>Menu</span></a>
    <a href="reserv.jsp"><span>Reservation</span></a>
    <a href="logout.jsp"><span>Logout</span></a>
</div>
<div class="menu4sub"> </div>
<br/><br/>
<p style="color: #00a2d3;font-size: xx-large; text-align: center">
        Restaurant POS System - SNHU Dinning.<br/><br/>
        <% RestaurentPOS.UserBean currentUser = (UserBean)(session.getAttribute("currentSessionUser"));%> 
            Welcome <%= currentUser.getFirstName() + " " + currentUser.getLastName()%>!!<br/><br/>
            SNHU Dinning Center<br/><br/>
            <img src="img/NewDiningHall(1).jpg" align="middle" />
    </p>
    <%}%>
    <footer>
  <p>All rights reserved ©</p>
  <p>Contact Me: <a href="mailto:md.afroz.hcl@gmail.com">Here</a>.</p>
</footer>
    </body> 
</html> 