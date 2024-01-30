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
    <title>UserLogin</title>
    <link rel="stylesheet" href="userlogin.css">
</head>

<body>
    <form name="form" action="LoginServlet_user" method="post"
        onsubmit="return validateForm()">
        <div class="container">
            <div class="brand-logo"></div>
            <div class="brand-title">User Login </div>
            <div class="inputs">
                <label for="username">USERNAME</label>
                <input class="input-field" type="text" id="username" name="username" placeholder="example@test.com" />
                <p class="error-message" id="usernameError"></p>

                <label for="password">PASSWORD</label>
                <input class="input-field" type="password" id="password" name="password"
                    placeholder="Min 6 charaters long" />
                <p class="error-message" id="passwordError"></p>

                <button class="login-button" type="submit" id="myButton"
                    onclick="window.location.href='after_user_login.jsp'">LOGIN</button>
            </div>
            <div class="card">
                <P class="footer-text"> If you are new,<a href="user_Registration.jsp"
                        class="registration-link">Register</a>
                </P>
            </div>
    </form>

    <script>
        function validateForm() {
            var username = document.getElementById('username').value;
            var password = document.getElementById('password').value;
            var usernameError = document.getElementById('usernameError');
            var passwordError = document.getElementById('passwordError');

            // Clear any previous error messages
            usernameError.textContent = '';
            passwordError.textContent = '';

            if (username === '') {
                usernameError.textContent = 'Please enter your username.';
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