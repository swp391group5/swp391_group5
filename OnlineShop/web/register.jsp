<%-- 
    Document   : register
    Created on : Sep 27, 2021, 4:30:48 PM
    Author     : SANG
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="css/bootstrap.min.css" rel="stylesheet">
        <title>JSP Page</title>
    </head>
    <body>
        <div class="container">
            <div class="row" style="margin-top: 200px;">
                <div class="col-sm-4" style="margin-left: 450px;">
                    <h2>New User Sign up!</h2>
                    <p>${message}</p>
                    <form action="register" method="post">
                        <input name="email" type="text" placeholder="Email" required=""/>
                        <input name="password" type="password" placeholder="Password" required=""/>
                        <input name="repassword" type="password" placeholder="Re-password" required=""/>
                        <input name="name" type="text" placeholder="Name" required=""/>
                        <input name="phone" type="text" placeholder="Phone" required=""/>
                        <div class="col">
                            <textarea name="address" type="text" placeholder="Address" required=""></textarea>
                        </div>
                        <div class="col">
                            <label>
                                <input type="radio" value="1" name="gender" required="">
                                <span>Nam</span>
                            </label>
                            <label>
                                <input type="radio" value="0" name="gender" required="">
                                <span>Nữ</span>
                            </label>
                        </div>
                        <a href="login.jsp">Back</a>
                        <div class="col">
                            <button type="submit" class="btn btn-success">Sign up</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </body>
</html>
