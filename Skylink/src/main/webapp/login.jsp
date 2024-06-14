<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login</title>

<style>

*{
    margin: 0;
    padding: 0;
    font-family: 'popins',sans-serif;
    box-sizing: border-box;
}

.container{
    width: 100%;
    height: 100vh;
    background-image:linear-gradient(rgba(0,0,50,0.8),rgba(0,0,50,0.8)) ,url(Images/background.jpg);
    background-position: center;
    background-size: cover;
    position: relative;
}

.form-box{
    width: 90%;
    max-width: 450px;
    position: absolute;
    top: 50%;
    left: 50%;
    transform: translate(-50%,-50%);
    background-color: #fff;
    padding: 50px 50px 30px;
    text-align: center;
    border-radius: 50px;
}

.form-box h1{
    font-size: 30px;
    margin-bottom: 60px;
    color: #3c00a0;
    position: relative;
}

.form-box h1::after{
    content: '';
    width: 40px;
    height: 4px;
    border-radius: 3px;
    background: #3c00a0;
    position: absolute;
    bottom: -12px;
    left: 50%;
    transform: translateX(-50%);

}

.input-field{
    background: #eaeaea;
    margin: 15px 0;
    border-radius: 3px;
    display: flex;
    align-items: center;
    max-height: 65%;
    transition: max-height 0.5s;
    overflow: hidden;
}
input{
    width: 100% ;
    background: transparent;
    border: 0;
    outline: 0;
    padding: 18px 15px;
}

.input-field i{
    margin-left: 15px;
    color: #999;
}

p{
    text-align: center;
    font-size: 13px;
    padding-top:50px;  
}
p a{
    text-decoration: none;
    color: #3c00a0;
}
.btn-field{
    width: 100%;
    display: flex;
    padding-left: 98px;
    padding-top: 10px;
}
.btn-field input{
    flex-basis: 60%;
    background: #3c00a0;
    color: #fff;
    height: 50px;
    border-radius: 30px;
    border: 0;
    outline: 0;
    cursor: pointer;
    transition: bacground 1s;   
}
.btn-field input:hover{
    background: #999;
}
.hidden {
            display: none;
        }

</style>
<script src="https://kit.fontawesome.com/c5b940c231.js" crossorigin="anonymous"></script>  
</head>

<body>
    <div class="container">
    
    
		<%-- Display success message if registration was successful --%>
		<% if (request.getAttribute("registrationSuccess") != null) { %>
		    <p id="successMessage" style="color: green; font-weight: bold;"><%= request.getAttribute("registrationSuccess") %></p>
		    <script>
		        setTimeout(function() {
		            document.getElementById("successMessage").style.display = "none";
		        }, 10000); // Hide after 10 seconds (10000 milliseconds)
		    </script>
		<% } %>

		<%-- Display error message if registration was unsuccessful --%>
		<% if (request.getAttribute("registrationError") != null) { %>
		    <p style="color: red; font-weight: bold;"><%= request.getAttribute("registrationError") %></p>
		<% } %>
				
				<%-- Display error message if login fails --%>
		<% if (request.getAttribute("loginError") != null) { %>
		    <p style="color: red; font-weight: bold;"><%= request.getAttribute("loginError") %></p>
		<% } %>
		
		
		
        <div class="form-box">
    <h1 id="title">Login</h1>
    <form action="login" method="post" id="loginForm">
        <div class="input-group">
            <div class="input-field">
                <i class="fa fa-user" aria-hidden="true"></i>
                <input type="text" placeholder="Username" name="uid">
            </div>
            <div class="input-field">
                <i class="fa fa-unlock-alt" aria-hidden="true"></i>
                <input type="password" placeholder="Password" name="pass">
            </div>
        </div>
        <div class="btn-field">
            <input type="submit" value="Login">
        </div>
    </form>

    <form action="signup" method="post" id="signupForm" class="hidden">
                <div class="input-group">
                	<div class="input-field hidden" id="nameField">
                        <i class="fa fa-user" aria-hidden="true"></i>
                        <input type="text" placeholder="NIC" name="NIC">
                    </div>
                    <div class="input-field hidden" id="nameField">
                        <i class="fa fa-user" aria-hidden="true"></i>
                        <input type="text" placeholder="Name" name="name">
                    </div>
                    <div class="input-field hidden" id="emailField">
                        <i class="fa fa-envelope" aria-hidden="true"></i>
                        <input type="email" placeholder="Email" name="email">
                    </div>
                    <div class="input-field hidden" id="phoneField">
                        <i class="fa fa-phone" aria-hidden="true"></i>
                        <input type="tel" placeholder="Phone" name="phone">
                    </div>
                    <div class="input-field" id="newUsernameField">
                        <i class="fa fa-user" aria-hidden="true"></i>
                        <input type="text" placeholder="New Username" name="uname">
                    </div>
                    <div class="input-field">
                        <i class="fa fa-unlock-alt" aria-hidden="true"></i>
                        <input type="password" placeholder="New Password" name="pws">
                    </div>
                </div>
                <div class="btn-field">
                    <input type="submit" value="Sign Up">
                </div>
            </form>
    
    <form action="log" method="post" class="hidden" id="adminlogin">
			    <div class="input-group">
			        <div class="input-field" id="usernameField">
			            <i class="fa fa-user" aria-hidden="true"></i>
			            <input type="text" placeholder="Admin Username" name="uid">
			        </div>
			        <div class="input-field">
			            <i class="fa fa-unlock-alt" aria-hidden="true"></i>
			            <input type="password" placeholder="Admin Password" name="pass">
			        </div>
			    </div>
			    <div class="btn-field">
			        <input type="submit" value="Login as Admin">
			    </div>
			</form>
    
    <p id="signupText">If you don't have an account <a href="#" id="signupLink">Sign Up</a></p>
    <p id="adminText">If you are an admin <a href="#" id="adminLink">Login as Admin</a></p>
</div>

    </div>

    <script>
    document.addEventListener("DOMContentLoaded", function () {
        var title = document.getElementById("title");
        var signupLink = document.getElementById("signupLink");
        var loginForm = document.getElementById("loginForm");
        var signupForm = document.getElementById("signupForm");
        var adminLink = document.getElementById("adminLink");
        var adminLoginForm = document.getElementById("adminlogin");
        var submitButtonLogin = loginForm.querySelector("input[type=submit]");
        var submitButtonSignup = signupForm.querySelector("input[type=submit]");
        var nameField = document.getElementById("nameField");
        var emailField = document.getElementById("emailField");
        var phoneField = document.getElementById("phoneField");
        var newUsernameField = document.getElementById("newUsernameField");
        var signupText = document.getElementById("signupText"); // Add this line

        signupLink.addEventListener("click", function (event) {
            event.preventDefault();

            if (title.textContent === "Login") {
                console.log("Switching to Sign Up form");
                title.textContent = "Sign Up";
                submitButtonSignup.value = "Sign Up";
                signupLink.textContent = "Log In";
                loginForm.classList.add("hidden");
                signupForm.classList.remove("hidden");
                nameField.classList.remove("hidden");
                emailField.classList.remove("hidden");
                phoneField.classList.remove("hidden");
                newUsernameField.focus();
            } else {
                console.log("Switching to Login form");
                title.textContent = "Login";
                submitButtonLogin.value = "Login";
                signupLink.textContent = "Sign Up";
                loginForm.classList.remove("hidden");
                signupForm.classList.add("hidden");
                nameField.classList.add("hidden");
                emailField.classList.add("hidden");
                phoneField.classList.add("hidden");
            }
        });

        adminLink.addEventListener("click", function (event) {
            event.preventDefault();

            if (title.textContent === "Login") {
                console.log("Switching to Admin Login form");
                title.textContent = "Admin Login";
                adminLink.textContent = "Back to Login";
                loginForm.classList.add("hidden");
                adminLoginForm.classList.remove("hidden");
                signupText.classList.add("hidden"); // Hide the signup text
            } else {
                console.log("Switching to Login form from Admin");
                title.textContent = "Login";
                adminLink.textContent = "Login as Admin";
                loginForm.classList.remove("hidden");
                adminLoginForm.classList.add("hidden");
                signupText.classList.remove("hidden"); // Show the signup text
            }
        });
    });
</script>






</body>
</html>