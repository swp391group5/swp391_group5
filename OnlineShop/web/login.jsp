<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="description" content="">
        <meta name="author" content="">
        <title>Login</title>
        <link href="css/bootstrap.min.css" rel="stylesheet">
    </head><!--/head-->
    <body>
        <section id="form"><!--form-->
            <div class="container">
                <div class="row" style="margin-top: 200px;">
                    <div class="col-sm-4" style="margin-left: 450px;">
                        <h2>Login your account</h2>
                        <p>${message}</p>
                        <form action="login" method="post">
                            <div class="form-group">
                                <input name="email" type="text" placeholder="Email" required="" style="border: 2px solid; border-radius: .5rem" />
                            </div>
                            <div class="form-group">
                                <input name="password" type="password" placeholder="Password" required="" style="border: 2px solid; border-radius: .5rem" />
                            </div>
                            <div class="col">
                                <input type="checkbox"> Keep me signed in
                                <a href="register.jsp">New user ?</a>
                            </div>

                            <div class="col">
                                <button type="submit" class="btn btn-success">Login</button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </section><!--/form-->
    </body>
</html>