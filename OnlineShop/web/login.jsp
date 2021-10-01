<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-F3w7mX95PdgyTmZZMECAngseQB83DfGTowi0iMjiWaeVhAn4FJkqJByhZMI3AhiU" crossorigin="anonymous">
        <link href="css/login-register.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <div id="intro">
            <div class="middle signin"> 
                <div class="login-panel">
                    <p>LOGIN USER</p>
                    <p>${message}</p>
                    <p class="notification" style="padding: .3rem;"></p>
                    <form action="servicesaccount" method="post">
                        <div class="form-group">
                            <div class="col">
                                <input type="text" name="email" class="form-control" placeholder="Email" >
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="col">
                                <input type="password" name="password" class="form-control" placeholder="Password">
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="col">
                                <label class="custom-control custom-checkbox">
                                    <input type="checkbox" class="custom-control-input" id="login-remember-me" name="login-remember-me">
                                    <span class="custom-control-indicator"></span>
                                    <span class="custom-control-description">Ghi nhớ mật khẩu</span>
                                </label>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="col">
                                <button type="submit" class="btn btn-sm">
                                    Đăng nhập
                                </button>
                                <input name="service" type="hidden" value="login"/>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="col">
                                <a href="reset-password.jsp">
                                    Quên mật khẩu
                                </a>
                                <a href="register.jsp" style="margin-left: 6.6rem;">
                                    Đăng ký
                                </a>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </body>
</html>