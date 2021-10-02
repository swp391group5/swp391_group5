<!doctype html>
<html lang="en">
    <head>
        <title>Register</title>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

        <link href="https://fonts.googleapis.com/css?family=Lato:300,400,700&display=swap" rel="stylesheet">

        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">

        <link rel="stylesheet" href="css/style_1.css">

    </head>
    <body class="img js-fullheight" style="background-image: url(images/bg.jpg);">
        <section class="ftco-section">
            <div class="container">
                <div class="row justify-content-center">
                    <div class="col-md-6 text-center mb-5">
                        <h2 class="heading-section">Register</h2>
                    </div>
                </div>
                <div class="row justify-content-center">
                    <div class="col-md-6 col-lg-4">
                        <div class="login-wrap p-0">
                            <form action="register" method="post">     
                                <div class="form-group">
                                    <input  name="email" type="text" class="form-control" placeholder="Email" required>
                                </div>
                                <div class="form-group">
                                    <input name="password" type="password" class="form-control" placeholder="Password" required>
                                    <span toggle="#password-field" class="fa fa-fw fa-eye field-icon toggle-password"></span>
                                </div>
                                <div class="form-group">
                                    <input name="repassword" type="password" class="form-control" placeholder="Re Password" required>
                                    <span toggle="#password-field" class="fa fa-fw fa-eye field-icon toggle-password"></span>
                                </div>
                                <div class="form-group">
                                    <input  name="name" type="text" class="form-control" placeholder="Name" required>
                                </div>
                                <div class="form-group">
                                    <input  name="phone" type="text" class="form-control" placeholder="Phone" required>
                                </div>
                                <div class="form-group">
                                    <input  name="address" type="text" class="form-control" placeholder="address" required>
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
                                </div>
                                <div class="form-group">
                                    <button type="submit" class="form-control btn btn-primary submit px-3">Sign Up</button>
                                </div>
                            </form>
                            <p class="w-100 text-center">&mdash; Or &mdash;</p>
                            <div class="social d-flex text-center">
                                <a href="login1.jsp" class="px-2 py-2 mr-md-1 rounded"><span class="ion-logo-facebook mr-2"></span>Back to Login</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <script src="js/jquery.min.js"></script>
        <script src="js/popper.js"></script>
        <script src="js/bootstrap.min.js"></script>
        <script src="js/main.js"></script>

    </body>
</html>

