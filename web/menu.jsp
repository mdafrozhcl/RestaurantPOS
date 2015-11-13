<%-- 
    Document   : menu
    Created on : Jan 17, 2015, 5:35:59 PM
    Author     : Afroz
--%>

<%@ page language="java" contentType="text/html; charset=windows-1256" pageEncoding="windows-1256" import="RestaurentPOS.UserBean" %> 
<!DOCTYPE html>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Restaurant POS System</title>
        <link rel="stylesheet" href="css/style.css">
        <style>
            table, th, td,tr {
                border: 5px solid #373737;
                text-align: center;
            }
            
            td{
                padding: 15px;
            }
        </style>
    </head>
    <body>
        <%
            if(session.getAttribute("currentSessionUser")==null){
                response.sendRedirect("index.html");
            }else{
        %>
        <sql:setDataSource var="snapshot" driver="com.mysql.jdbc.Driver"
                           url="jdbc:mysql://localhost:3306/RestaurentPOS"
                           user="root"  password="reset!@#"/>

        <sql:query dataSource="${snapshot}" var="rs2">
            SELECT * from Menu;
        </sql:query>
            <%}%>
        <div class="menu4">
            <a href="home.jsp"><span>Home</span></a>
            <a href="addItem.jsp" ><span>Add Menus Item</span></a>
            <a href="#" class="current"><span>Menu</span></a>
            <a href="reserv.jsp"><span>Reservation</span></a>
            <a href="logout.jsp"><span>Logout</span></a>
        </div>
        <div class="menu4sub"> </div>
        <br/><br/><br/>
        <p style="color: #00a2d3;font-size: xx-large; text-align: center">
        Restaurant POS System - Menu
    </p>
    <center>
        <table  style="color: #FFF; text-align: left; cellpadding: 10px">
            <tr>
                <th>Name</th>
                <th>Price</th>
            </tr>
            <c:forEach var="row" items="${rs2.rows}">
                <tr>
                    <td><c:out value="${row.Item_name}"/></td>
                    <td><c:out value="${row.Item_price}"/></td>
                    
                </tr>
            </c:forEach>
        </table>
    </center>
<footer>
  <p>All rights reserved ©</p>
  <p>Contact Me: <a href="mailto:md.afroz.hcl@gmail.com">Here</a>.</p>
</footer>
    </body>

</html>
