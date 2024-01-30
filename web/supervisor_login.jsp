<%-- 
    Document   : mayorlogin.jsp
    Created on : 16-Dec-2023, 9:14:07 pm
    Author     : 91939
--%>

<%-- 
    Document   : userlogin
    Created on : 16-Dec-2023, 6:52:48 pm
    Author     : 91939
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Supervisor Login</title>
    <link rel="stylesheet" href="userlogin.css">
</head>

<body>
    <form name="form" action="SupervisorLoginServlet" method="post"
        onsubmit="return validateForm()">
        <div class="container">
            <div class="brand-logo"></div>
            <div class="brand-title">Supervisor Login </div>
            <div class="inputs">
                <label for="suid">Supervisor Uid</label>
                <input class="input-field" type="text" id="suid" name="suid" placeholder="example@test.com" />
                <p class="error-message" id="sError"></p>

                <label for="password">PASSWORD</label>
                <input class="input-field" type="password" id="password" name="password"
                    placeholder="Min 6 charaters long" />
                <p class="error-message" id="passwordError"></p>

                <button class="login-button" type="submit" id="myButton"
                    onclick="window.location.href='after_supervisor_login.jsp'">LOGIN</button>
            </div>
            
    </form>

    <script>
        function validateForm() {
            var suid = document.getElementById('suid').value;
            var password = document.getElementById('password').value;
            var mError = document.getElementById('sError');
            var passwordError = document.getElementById('passwordError');

            // Clear any previous error messages
            usernameError.textContent = '';
            passwordError.textContent = '';

            if (username === '') {
                usernameError.textContent = 'Please enter supervisor uid.';
                return false;
            }
            if (password === '') {
                passwordError.textContent = 'Please enter your password.';
                return false;
            }
            return true; // Allow the form to be submitted
        }
    </script>


</body>

</html>