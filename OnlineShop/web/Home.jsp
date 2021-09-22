<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Home Page</title>
        <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
        <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
        <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <!------ Include the above in your HEAD tag ---------->
        <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous">
        <link href="css/style.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <jsp:include page="Menu.jsp"></jsp:include>
            <div class="container">
                <div class="row">
                    <div class="col">
                        <nav aria-label="breadcrumb">
                            <ol class="breadcrumb">
                                <li class="breadcrumb-item"><a href="Home.jsp">Home</a></li>
                                <li class="breadcrumb-item"><a href="#">Category</a></li>
                                <li class="breadcrumb-item active" aria-current="#">Sub-category</li>
                            </ol>
                        </nav>
                    </div>
                </div>
            </div>
            <div class="container">
                <div class="row">
                <jsp:include page="Left.jsp"></jsp:include>

                    <div class="col-sm-9">
                        <div class="row">

                            <!--Product 1-->
                            <div class="col-12 col-md-6 col-lg-4">
                                <div class="card">
                                    <img class="card-img-top" src="https://cdn.tgdd.vn/Products/Images/42/213031/iphone-12-den-1-1-org.jpg" alt="Card image cap">
                                    <div class="card-body">
                                        <h4 class="card-title show_txt"><a href="#" title="View Product">iPhone 12</a></h4>
                                        <p class="card-text show_txt">iPhone 12 64GB</p>
                                        <div class="row">
                                            <div class="col">
                                                <p>20.490.000₫</p>
                                            </div>
                                            <div class="col">
                                                <a href="#" class="btn btn-success btn-block">Add to cart</a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!--Product 2-->
                            <div class="col-12 col-md-6 col-lg-4">
                                <div class="card">
                                    <img class="card-img-top" src="https://cdn.tgdd.vn/Products/Images/42/210648/iphone-11-trang-1-org.jpg" alt="Card image cap">
                                    <div class="card-body">
                                        <h4 class="card-title show_txt"><a href="#" title="View Product">iPhone 11</a></h4>
                                        <p class="card-text show_txt">iPhone 11 256GB</p>
                                        <div class="row">
                                            <div class="col">
                                                <p>19.490.000₫</p>
                                            </div>
                                            <div class="col">
                                                <a href="#" class="btn btn-success btn-block">Add to cart</a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!-- Product 3-->
                            <div class="col-12 col-md-6 col-lg-4">
                                <div class="card">
                                    <img class="card-img-top" src="https://cdn.tgdd.vn/Products/Images/42/230630/vivo-y12s-4gb-128gb-den-1-org.jpg" alt="Card image cap">
                                    <div class="card-body">
                                        <h4 class="card-title show_txt"><a href="#" title="View Product">Vivo Y12s</a></h4>
                                        <p class="card-text show_txt">Vivo Y12s 128GB</p>
                                        <div class="row">
                                            <div class="col">
                                                <p>10.790.000₫</p>
                                            </div>
                                            <div class="col">
                                                <a href="#" class="btn btn-success btn-block">Add to cart</a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!-- Product 4-->
                            <div class="col-12 col-md-6 col-lg-4">
                                <div class="card">
                                    <img class="card-img-top" src="https://cdn.tgdd.vn/Products/Images/42/246200/xiaomi-redmi-10-trang-1-org.jpg" alt="Card image cap">
                                    <div class="card-body">
                                        <h4 class="card-title show_txt"><a href="#" title="View Product">Xiaomi Redmi 10</a></h4>
                                        <p class="card-text show_txt">Xiaomi Redmi 10 128GB</p>
                                        <div class="row">
                                            <div class="col">
                                                <p>10.690.000₫</p>
                                            </div>
                                            <div class="col">
                                                <a href="#" class="btn btn-success btn-block">Add to cart</a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!-- Product 5-->
                            <div class="col-12 col-md-6 col-lg-4">
                                <div class="card">
                                    <img class="card-img-top" src="https://cdn.tgdd.vn/Products/Images/42/239747/oppo-reno6-z-5g-bac-1-org.jpg" alt="Card image cap">
                                    <div class="card-body">
                                        <h4 class="card-title show_txt"><a href="#" title="View Product">OPPO Reno6 Z</a></h4>
                                        <p class="card-text show_txt">OPPO Reno6 Z 5G</p>
                                        <div class="row">
                                            <div class="col">
                                                <p>10.490.000₫</p>
                                            </div>
                                            <div class="col">
                                                <a href="#" class="btn btn-success btn-block">Add to cart</a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <!-- Product 6-->
                            <div class="col-12 col-md-6 col-lg-4">
                                <div class="card">
                                    <img class="card-img-top" src="https://cdn.tgdd.vn/Products/Images/42/226099/samsung-galaxy-z-fold-2-den-1-org.jpg" alt="Card image cap">
                                    <div class="card-body">
                                        <h4 class="card-title show_txt"><a href="#" title="View Product">Samsung Galaxy Z Fold2</a></h4>
                                        <p class="card-text show_txt">Samsung Galaxy Z Fold2 5G</p>
                                        <div class="row">
                                            <div class="col">
                                                <p>50.000.000₫</p>
                                            </div>
                                            <div class="col">
                                                <a href="#" class="btn btn-success btn-block">Add to cart</a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

        <jsp:include page="Footer.jsp"></jsp:include>
    </body>
</html>

