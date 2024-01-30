<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>UserRegister</title>
    <link rel="stylesheet" href="user_register.css">
</head>

<body style="background:linear-gradient(to right, #FF8C00,  #DD6E0F);">

    <div class="container-1 d-flex justify-content-between">
        <div class="d-flex align-items-center justify-content-between">
            <img src="R_logo.png" alt="logo" class="logo">
            <div class="logo-text">
                <p>
                    <h3>Road Repair</h3><span class="small-text">Tracking System</span>
                </p>
            </div>
        </div>
    </div>

    <form name="form" action="RegistrationServlet" method="post">
        <div class="container">
            <div class="brand-logo"></div>
            <div class="brand-title">User Registration </div>
            <div class="inputs">
                <label>USERNAME</label>
                <input class="input-field" type="text" id="username" name="username" placeholder="user_123" />
                
                <label>EMAIL</label>
                <input class="input-field" type="email" id="email" name="email" placeholder="example@test.com" />
                
                <label>MOBILE</label>
                <input class="input-field" type="tel" id="phone" name="phone" placeholder="9998899988" />
                
                <label>PASSWORD</label>
                <input class="input-field" type="password" id="password" name="password" placeholder="Min 8 characters long" />
                
                <label>CONFIRM PASSWORD</label>
                <input class="input-field" type="password" id="confpassword" name="confpassword" placeholder="Min 8 characters long" />
                
                <button type="submit" class="login-button">REGISTER</button>
            </div>
            <div class="card">
                <p class="footer-text"> Already have an account, <a href="userlogin.jsp" class="registration-link">Login</a></p>
            </div>
        </div>
    </form>
</body>

</html>
