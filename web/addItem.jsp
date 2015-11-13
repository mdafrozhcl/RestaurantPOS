<%-- 
    Document   : addItem
    Created on : Jan 9, 2015, 6:52:37 PM
    Author     : Afroz
--%>

<%@page import="RestaurentPOS.MenuDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <title>Restaurant POS System</title>
    <link rel="stylesheet" href="css/style.css">
    <script type="text/javascript">
        function validateform(){
        var reg = /^\$?[0-9]+(\.[0-9][0-9])?$/;
        var isValid = true;
        if(document.additem.itemName.value === ""){
            alert("expected name");
            document.additem.itemName.focus();
            isValid = false;
        }else if(document.itemPrice.value===""){
            alert(expected price);
            document.additem.itemPrice.focus();
            isValid = false;
        }else{
            isValid = reg.test(document.additem.itemPrice.value);
            document.additem.itemPrice.focus();
        }
        return isValid;
    }
    </script>
</head>
<body>
    <%
            if(session.getAttribute("currentSessionUser")==null){
                response.sendRedirect("index.html");
            }else{
        %>
    <div class="menu4">
    <a href="home.jsp"><span>Home</span></a>
    <a href="#" class="current"><span>Add Menus Item</span></a>
    <a href="menu.jsp"><span>Menu</span></a>
    <a href="reserv.jsp"><span>Reservation</span></a>
    <a href="logout.jsp"><span>Logout</span></a>
</div>
<div class="menu4sub"> </div>


    <br/><br/>
    <p style="color: #00a2d3;font-size: xx-large; text-align: center">
        Restaurant POS System - Add Item
    </p>
    
    <form name="additem" method="get" action="addItem" class="login">

<%
    MenuDAO menu = new MenuDAO();
    int count = menu.itemCount();
%>
        <p>
            <label for="itemID">Item ID:</label>
            <input type="text" name="itemID" id="itemID" value="<%=count%>" style="text-decoration: #00a2d3" readonly=""/>
        </p>

        <p>
            <label for="itemName">Item Name:</label>
            <input type="text" name="itemName" id="itemName" value=""/>
        </p>

        <p>
            <label for="itemPrice">Item Price:</label>
            <input type="text" name="itemPrice" id="itemPrice" value=""/>
        </p>
        
        <p class="login-submit" style="top: 62px">
            <button type="submit" onsubmit="return validateform();" name="submitItem" id="submitItem" class="login-button">Login</button>
        </p>
        

    </form> 
        <%}%>
        
<footer>
  <p>All rights reserved ©</p>
  <p>Contact Me: <a href="mailto:md.afroz.hcl@gmail.com">Here</a>.</p>
</footer>
</body>
</html>
