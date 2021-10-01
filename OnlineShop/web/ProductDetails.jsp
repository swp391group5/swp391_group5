<%-- 
    Document   : ProductDetails
    Created on : Oct 1, 2021, 7:51:28 AM
    Author     : DucAnh
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <jsp:include page="header.jsp"/>
        <h2 class="title text-center">Product Details </h2>
        <form>
            <table align="center" border="1">
                <tr>
                    <td>${product.image}</td>
                    <td>${product.id}</td>
                    <td>${product.name}</</td>
                    <td>${product.category_id}</td>
                    <td>${product.price}</td>
                    <td>${product.description}</td>
                    <td>${product.quantity}</td>
                    <td>${product.status}</td>
                    <td>${product.note}</td>
                </tr>
            </table>
        </form>
        <jsp:include page="footer.jsp"/>
    </body>
</html>
