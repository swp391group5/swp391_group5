<%-- 
    Document   : register
    Created on : Sep 27, 2021, 4:30:48 PM
    Author     : SANG
--%>
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
                    <p>REGISTER NEW USER</p>
                    <p>${message}</p>
                    <form action="servicesaccount" method="post">
                        <div class="form-group">
                            <div class="col">
                                <input type="text" name="email" class="form-control" placeholder="Email" >
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="col">
                                <input type="password" name="password" class="form-control" placeholder="Mật khẩu"/>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="col">
                                <input type="password" name="repassword" class="form-control" placeholder="Nhập lại mật khẩu" />
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="col">
                                <input type="text" name="name" class="form-control" placeholder="Tên người dùng" />
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="col">
                                <input type="text" name="phone" class="form-control" placeholder="Số phone" />
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="col">
                                <textarea type="text" name="address" class="form-control" placeholder="Địa chỉ" ></textarea>
                            </div>
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
                                </label>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="col">
                                <button type="submit" class="btn btn-sm">
                                    Tạo tài khoản
                                </button>
                                <input name="service" type="hidden" value="register"/>
                                <a href="login.jsp"style="margin-left: 13rem;">Quay lại</a>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </body>
</html>

