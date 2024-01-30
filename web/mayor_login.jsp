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
    <title>Mayor Login</title>
    <link rel="stylesheet" href="userlogin.css">
</head>

<body>
    <form name="form" action="LoginServlet_Mayor" method="post"
        onsubmit="return validateForm()">
        <div class="container">
            <div class="brand-logo"></div>
            <div class="brand-title">Mayor Login </div>
            <div class="inputs">
                <label for="mayorid">MAYOR ID</label>
                <input class="input-field" type="text" id="mayorid" name="mayorid" placeholder="example@test.com" />
                <p class="error-message" id="mError"></p>

                <label for="password">PASSWORD</label>
                <input class="input-field" type="password" id="password" name="password"
                    placeholder="Min 6 charaters long" />
                <p class="error-message" id="passwordError"></p>

                <button class="login-button" type="submit" id="myButton"
                    onclick="window.location.href='after_mayor_login.jsp'">LOGIN</button>
            </div>
            
    </form>

    <script>
    function validateForm() {
        var mayorid = document.getElementById('mayorid').value;
        var password = document.getElementById('password').value;
        var mError = document.getElementById('mError');
        var passwordError = document.getElementById('passwordError');

        // Clear any previous error messages
        mError.textContent = '';  // Fix: Correct variable name

        if (mayorid === '') {
            mError.textContent = 'Please enter mayor id.';
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