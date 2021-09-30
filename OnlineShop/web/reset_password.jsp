<%-- 
    Document   : reminder_password
    Created on : Oct 1, 2021, 12:18:03 AM
    Author     : SANG
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="css/bootstrap.min.css" rel="stylesheet">
        <title>Page Remind_Password</title>
    </head>
    <body>
        <div id="form">
            <div class="container">
                <div class="row" style="margin-top: 200px;">
                    <div class="col-sm-4" style="margin-left: 450px;">
                        <h2>Reset account</h2>
                        <p>${message}</p>
                        <form action="servicesaccount" method="post">
                            <div class="form-group">
                                <input name="email" type="text" placeholder="Email" required="" style="border: 2px solid; border-radius: .5rem" />
                            </div>
                            <div class="col" style="margin-left: 60px;">
                                <button type="submit" class="btn btn-sm" style="border: 2px solid; border-radius: .5rem;">Confirm</button>
                            </div>
                            <input name="service" type="hidden" value="remindpassword"/>
                            <a href="login.jsp" style="margin-left: 140px;">Back</a>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>
