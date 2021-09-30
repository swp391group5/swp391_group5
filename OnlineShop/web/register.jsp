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
                        <div class="form-group">
                            <input name="email" type="text" placeholder="Email" required="" style="border: 2px solid; border-radius: .5rem" />
                        </div>
                        <div class="form-group">
                            <input name="password" type="password" placeholder="Password" required="" style="border: 2px solid; border-radius: .5rem" />
                        </div>
                        <div class=" form-group">
                            <input name="repassword" type="password" placeholder="Re-password" required="" style="border: 2px solid; border-radius: .5rem" />
                        </div>
                        <div class="form-group">
                            <input name="name" type="text" placeholder="Name" required="" style="border: 2px solid; border-radius: .5rem" />
                        </div>
                        <div class="form-group">
                            <input name="phone" type="text" placeholder="Phone" required="" style="border: 2px solid; border-radius: .5rem" />
                        </div>
                        <div class="col">
                            <textarea name="address" type="text" placeholder="Address" required="" style="border: 2px solid; border-radius: .5rem" ></textarea>
                        </div>
                        <div class="form-group">
                            <div class="col">
                                <label>
                                    <input type="radio" value="1" name="gender" required="">
                                    <span>Male</span>
                                </label>
                                <label>
                                    <input type="radio" value="0" name="gender" required="">
                                    <span>Female</span>
                                    <a href="login.jsp" style="margin-left: 58px;">Back</a>
                                </label>
                            </div>
                        </div>
                        <div class="col">
                            <button type="submit" class="btn btn-success">Sign up</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </body>
</html>
