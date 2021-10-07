<%-- 
    Document   : reminder_password
    Created on : Oct 1, 2021, 12:18:03 AM
    Author     : SANG
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Edit Role</title>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <link href="https://fonts.googleapis.com/css?family=Lato:300,400,700&display=swap" rel="stylesheet">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
        <link rel="stylesheet" href="css/style_1.css">

    </head>
    <body class="img js-fullheight" style="background-image: url(images/bg.jpg);">
        <div class="holder d-flex align-items-center justify-content-center">

            <div class="container">
                <!-- FOR DEMO PURPOSE -->
                <header class="text-center mb-5">
                    <h1 class="display-4">Edit Role</h1>
                </header>

                <form action="UpdateAccount" method="post">                                             
                    <div class="row">
                        <div class="col-lg-5 mx-auto">

                            <!-- CHECKBOX LIST -->
                            <div class="card rounded border-0 shadow-sm position-relative">
                                <div class="card-body p-5">
                                    <div class="d-flex align-items-center mb-4 pb-4 border-bottom"><i class="far fa-calendar-alt fa-3x"></i>
                                        <div class="ms-3">
                                            <h4 class="text-uppercase fw-weight-bold mb-0">Set role for account :</h4>
                                            <p class="text-gray fst-italic mb-0">${a.email}</p>
                                            <input value="${a.email}" name="email" readonly type="hidden" >
                                        </div>
                                    </div>

                                    <div class="form-check">
                                        <input class="form-check-input" type="radio" name="isAdmin" value="1" ${a.roleId==1?"checked":""} id="flexRadioDefault1">
                                        <label class="form-check-label" for="flexRadioDefault1">
                                            Set Admin
                                        </label>
                                    </div>
                                    <div class="form-check">
                                        <input class="form-check-input" type="radio" name="isAdmin" value="2" ${a.roleId==2?"checked":""} id="flexRadioDefault2">
                                        <label class="form-check-label" for="flexRadioDefault2">
                                            Set Customer
                                        </label>
                                    </div>
                                    <div class="form-check">
                                        <input class="form-check-input" type="radio" name="isAdmin" value="3" ${a.roleId==3?"checked":""} id="flexRadioDefault2">
                                        <label class="form-check-label" for="flexRadioDefault2">
                                            Set Employee
                                        </label>
                                    </div>
                                    <br>
                                    <input type="submit" class="btn btn-success" value="Edit">
                                </div>
                            </div>
                        </div>
                    </div>
                </form>
            </div>

            <script src="js/jquery.min.js"></script>
            <script src="js/popper.js"></script>
            <script src="js/bootstrap.min.js"></script>
            <script src="js/main.js"></script>

    </body>
</html>
