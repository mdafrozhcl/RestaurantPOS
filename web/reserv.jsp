<%-- 
    Document   : reserv
    Created on : Jan 17, 2015, 5:37:33 PM
    Author     : Afroz
--%>
<%@ page language="java" contentType="text/html; charset=windows-1256" pageEncoding="windows-1256" import="RestaurentPOS.UserBean" %> 
<%
    if(session.getAttribute("currentSessionUser")==null)
    {
            response.sendRedirect("index.html");
    }else{   
        RestaurentPOS.UserBean currentUser = (UserBean)(session.getAttribute("currentSessionUser"));
%>
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
        <link rel="stylesheet" href="//code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css">
        <script src="//code.jquery.com/jquery-1.10.2.js"></script>
        <script src="//code.jquery.com/ui/1.11.4/jquery-ui.js"></script>
        <link rel="stylesheet" href="/resources/demos/style.css">
        <style>
            table, th, td,tr {
                border: 5px solid #373737;
                text-align: center;
            }
            th{
                text-align: left;
                border-left: 10px;

            }td{
                padding: 15px
            }
        </style>
        <script>
            $(function () {
                $("#datepicker").datepicker({
                    changeMonth: true,
                    changeYear: true
                });
            });
        </script>
    </head>
    <body>
                <sql:setDataSource var="snapshot" driver="com.mysql.jdbc.Driver"
                           url="jdbc:mysql://localhost:3306/RestaurentPOS"
                           user="root"  password="reset!@#"/>
        <sql:query dataSource="${snapshot}" var="rs2">
            SELECT * from reservations;
        </sql:query>

        <div class="menu4">
            <a href="home.jsp"><span>Home</span></a>
            <a href="addItem.jsp" ><span>Add Menus Item</span></a>
            <a href="menu.jsp"><span>Menu</span></a>
            <a href="#" class="current"><span>Reservation</span></a>
            <a href="logout.jsp"><span>Logout</span></a>
        </div>
        <div class="menu4sub"> </div><br/><br/>
        <p style="color: #00a2d3;font-size: xx-large; text-align: center">
            Restaurant POS System - Reservation Order
        </p>
        <form method="post" action="reg" class="login">
            <p>
                <label for="empid">Employee-Id:</label>
                <input type="text" name="empid" id="empid" value="<%= currentUser.getEmpid()%>">
            </p>
            <p>
                <label for="rname">Reserv-Name:</label>
                <input type="text" name="rname" id="rname" value="">
            </p>
            <p>
                <label for="lname">No.People:</label>
                <input type="text" name="nopeople" id="nopeople" value="">
            </p>
            <p>
                <label for="rdate">Reserv-Date:</label>
                <input type="text" name="rdate" id="datepicker" value="">
            </p>
            
            <p class="login-submit" style="top: 112px">
                <button type="submit"  name="submitItem" id="submitItem" class="login-button">Login</button>
            </p>
        </form>
        <div class="menu4sub"> </div>
    <center>
        <table  style="color: whitesmoke; text-align: left; padding: 10px">
            <thead>
            <p style="color: #00a2d3;font-size: medium; text-align: center">
                Available Reservations
            </p>
            </thead>
            <tr>
                <th>Name</th>
                <th>No. People</th>
                <th>Date </th>
            </tr>
            <c:forEach var="row" items="${rs2.rows}">
                <tr>
                    <td><c:out value="${row.reserv_name}"/></td>
                    <td><c:out value="${row.num_person}"/></td>
                    <td><c:out value="${row.date}"/></td>
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
<%
  }%>