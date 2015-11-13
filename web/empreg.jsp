<%-- 
    Document   : empreg
    Created on : Jan 10, 2015, 11:00:46 AM
    Author     : Afroz
--%>

<%@page import="RestaurentPOS.MenuDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Restaurant POS System</title>
        <link rel="stylesheet" href="css/style.css">
        <link rel="stylesheet" href="//code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css">
        <script src="//code.jquery.com/jquery-1.10.2.js"></script>
        <script src="//code.jquery.com/ui/1.11.4/jquery-ui.js"></script>
        <link rel="stylesheet" href="/resources/demos/style.css">
        <script>
            $(function () {

                $("#datepicker1").datepicker({
                    showButtonPanel: true
                });
                $("#datepicker").datepicker({
                    changeMonth: true,
                    changeYear: true
                });
            });
        </script>
        <title>JSP Page</title>
    </head>
    <body>
        <%
            if(session.getAttribute("currentSessionUser")!=null){
                response.sendRedirect("home.jsp");
            }else{
        %>
        <br/><br/>
        <p style="color: #00a2d3;font-size: xx-large; text-align: center">
            Restaurant POS System - Employee Registration
        </p>
        <form method="post" action="empregis" class="login">
            <p>
                <label for="empid">Employee-Id:</label>
                <input type="text" name="empid" id="empid" value="">
            </p>
            <p>
                <label for="deptID">Department:</label>
                <input type="text" name="deptId" id="deptID" value="">
            </p>
            <p>
                <label for="">Password:</label>
                <input type="password" name="password" id="password" value="">
            </p>
            <p>
                <label for="repassword">Confirm:</label>
                <input type="password" name="repassword" id="repassword" value="">
            </p>
            <p>
                <label for="title">Title:</label>
                <input type="text" name="title" id="title" value="">
            </p>
            <p>
                <label for="fname">First Name:</label>
                <input type="text" name="fname" id="fname" value="">
            </p>
            <p>
                <label for="lname">Last Name:</label>
                <input type="text" name="lname" id="lname" value="">
            </p>
            <p>
                <label for="bdate">DOB:</label>
                <input type="text" name="dob" id="datepicker" value="">
            </p>
            <p>
                <label for="hdate">Hire Date:</label>
                <input type="text" name="hiredate" id="datepicker1" value="">
            </p>
            <p>
                <label for="phone">Phone:</label>
                <input type="text" name="phone" id="phone" value="">
            </p>
            <p class="forgot-password">
                <a href="index.html">sign-in?</a>
            </p>
            <p class="login-submit" style="top: 412px">
                <button type="submit"  name="submitItem" id="submitItem" class="login-button">Login</button>
            </p>
        </form>
        <%}%>
        <footer>
  <p>All rights reserved ©</p>
  <p>Contact Me: <a href="mailto:md.afroz.hcl@gmail.com">Here</a>.</p>
</footer>
    </body>
</html>
