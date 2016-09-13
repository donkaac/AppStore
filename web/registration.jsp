<%-- 
    Document   : registration
    Created on : Sep 11, 2016, 3:28:35 PM
    Author     : Ish
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        
     
        <link href="css/bootstrap.min.css" rel="stylesheet">
        <link href="css/bootstrap-theme.css" rel="stylesheet">
        <link href="css/styles.css" rel="stylesheet">
    </head>
    <body>
        <div class="signin-form">

            <div class="container">


                <form class="form-signin" method="post" id="login-form">

                    <h2 class="form-signin-heading">Log In to WebApp.</h2><hr />

                    <div id="error">
                        <!-- error will be shown here ! -->
                    </div>

                    <div class="form-group">
                        <input type="email" class="form-control" placeholder="Email address" name="user_email" id="user_email" />
                        <span id="check-e"></span>
                    </div>

                    <div class="form-group">
                        <input type="password" class="form-control" placeholder="Password" name="password" id="password" />
                    </div>

                    <hr />

                    <div class="form-group">
                        <button type="submit" class="btn btn-default" name="btn-login" id="btn-login">
                            <span class="glyphicon glyphicon-log-in"></span> &nbsp; Sign In
                        </button> 
                    </div>
                    <div class="alert alert-danger display-hide">
                        <button class="close" data-close="alert"></button>
                        <span>Enter any username and password. </span>
                    </div>                            
                    <div class="alert alert-warning display-hide">
                        <button class="close" data-close="alert"></button>
                        <span class="allert-message">Invalid username or password. </span>
                    </div>                            
                    <div class="alert alert-success display-hide">
                        <button class="close" data-close="alert"></button>
                        <span>Successfully Loged In</span>
                    </div>

                </form>

                <div class="form-group">
                    <input type="date" name="dat">
                    <input type="button" id="edit" value="Edit">
                </div>

            </div>

        </div>
    </body>
    <script src="js/jquery-3.1.0.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/validation.min.js"></script>
    <script src="js/pages/scripts/login.js"></script>
</html>
