<%-- 
    Document   : clerk_login
    Created on : 16-Dec-2023, 6:49:39 pm
    Author     : 91939
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin_Login</title>
    <link rel="stylesheet" href="userlogin.css">
</head>

<body>
    <form name="form" method="post" action="AdminLoginServlet" onsubmit="return validateForm()">
        <div class="container">
            <div class="brand-logo"></div>
            <div class="brand-title">Administrator Login </div>
            <div class="inputs">
                <label for="aname">Administrator Uid</label>
                <input class="input-field" type="text" id="aname" name="aname" placeholder="Enter Adminstrator Uid" />
                <p class="error-message" id="aError"></p>

                <label for="password">PASSWORD</label>
                <input class="input-field" type="password" id="password" name="password"
                    placeholder="Min 6 charaters long" />
                <p class="error-message" id="passwordError"></p>

                <button class="login-button" type="submit" id="myButton"
                    onclick="window.location.href='after_admin_login.jsp'">LOGIN</button>
            </div>
    </form>

    <script>
        function validateForm() {
            var username = document.getElementById('aname').value;
            var password = document.getElementById('password').value;
            var usernameError = document.getElementById('aError');
            var passwordError = document.getElementById('passwordError');

            // Clear any previous error messages
            usernameError.textContent = '';
            passwordError.textContent = '';

            if (username === '') {
                usernameError.textContent = 'Please enter administrator uid';
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