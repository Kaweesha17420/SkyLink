<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@ page import="com.self.Self" %>
    <%@ page import="com.self.selfDbUtil" %>
	<%@ page import="java.util.List" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Self Services</title>

<style>

@import url('https://fonts.googleapis.com/css2?family=Nunito:wght@200;600;700&display=swap');

:root{
    --main-color:#3867d6;
}

*{
    font-family: 'Nunito', sans-serif;
    margin:0; padding:0;
    box-sizing: border-box;
    outline: none; border:none;
    text-decoration: none;
    text-transform: capitalize;
    transition: .2s linear;
} 

html{
    font-size: 62.5%;
    overflow-x: hidden;
    scroll-padding-top: 7rem;
    scroll-behavior: smooth;
}

html::-webkit-scrollbar{
    width:1rem;
}

html::-webkit-scrollbar-track{
    background: #e8e6e6;
}

html::-webkit-scrollbar-thumb{
    background: var(--main-color);
    border-radius: 5rem;
}

body{
    background: #ffffff;
}

section{
    padding:2rem 9%;
}

.heading{
    text-align: center;
    padding-bottom: 2rem;
    color:#fff;
    text-transform: uppercase;
    font-size: 4rem;
}

.heading span{
    color:var(--main-color);
    text-transform: uppercase;
}

.btn{
    margin-top: 1rem;
    display: inline-block;
    padding:.8rem 3rem;
    font-size: 1.7rem;
    border-radius: .5rem;
    background: #666;
    color:#fff;
    cursor: pointer;
    font-weight: 600;
}

.btn:hover{
    background:var(--main-color);
}

.header{
    position: fixed;
    top:0; left: 0; right: 0;
    z-index: 10000;
    background: #333;
    display: flex;
    align-items: center;
    justify-content: space-between;
    padding:1.5rem 9%;
}

.header .logo{
    font-weight: bolder;
    color:#fff;
    font-size: 2.5rem;
}

.header .logo span{
    color:var(--main-color);
}

.header .navbar a{
    font-size: 1.7rem;
    color:#fff;
    margin-left: 2rem;
}

.header .navbar a:hover{
    color:var(--main-color);
}

.footer{
    position: relative;
    top: 70px;
    background:#333;
}

.footer .box-container{
    display: grid;
    grid-template-columns: repeat(auto-fit, minmax(25rem, 1fr));
    gap:55rem;
}

.footer .box-container .box h3{
    font-size: 2.5rem;
    padding:1rem 0;
    color:#fff;
}

.footer .box-container .box a{
    display: block;
    font-size: 1.5rem;
    padding:1rem 0;
    color:#eee;
}

.footer .box-container .box a i{
    padding-right: .5rem;
    color:var(--main-color);
}

.footer .box-container .box a:hover i{
    padding-right: 1.5rem;
    color:#fff;
}

.footer .credit{
    text-align: center;
    border-top: .1rem solid #222;
    color:#fff;
    padding:2rem;
    padding-top: 2.5rem;
    margin-top: 1rem;
    font-size: 2rem;
}

.footer .credit span{
    color:var(--main-color);
}
.header .navbar .active{
	color: blue;
}

/*...........cover Photo...............*/
.main img{
    position: relative;
    left: 130px;
    top: 106px;
    width: 300px
    
}
.main{
    background: #ffffff;
    height: 100vh;
    background-image: linear-gradient(to right, rgba(3, 10, 17, 0), rgb(23, 141, 238));
    border-radius: 10px;
}
.main table tr td h1{
    font-size: 80px;
    font-weight: bold;
    color: rgba(43, 42, 42, 0.966);
    margin-top: 10px;
    font-family: Arial, Helvetica, sans-serif;
       
}
.main img{
	
	width:90%;
}
.main table tr td h2{
    font-size: 30px;
    color: #3d3d3da2;
    margin-top: 30px;
    position: relative;
    left: 10px;
    text-align: center;
    margin-right:100px;
}

/*Accunt infrmation*/
.option1 img{
    width: 550px;
    height: 550px;
    margin-top: 100px;
    border-top-right-radius: 30px;
    border-bottom-right-radius: 30px;
}

.button_1{ 
    position: relative;
    left: 95px;
    top: 60px;
    width: 190px;
    height: 60px;
    background: hsl(209, 100%, 56%);
    color: white;
    font-weight: bold;
    border-radius: 30px;
    cursor: pointer;
}
.button_1:hover{
    box-shadow: 0 0 20px rgba(0, 0, 0, 0.7);
    -webkit-transform: scale(1.1);
    transform: scale(1.1);
}

.txt1{
    position: relative;
    left: 120px;

}

.txt1 .big1{
    font-size: 50px;
    color: rgb(68, 68, 68);
    position: relative;
    right: 100px;
    text-align: center;
}
.small1{
    font-size: 20px;
    color: rgba(128, 128, 128, 0.623);
    position: relative;
    right: 0px;
    top: 20px;
    
    
}

/*.............Check your balence.............*/
.option2 img{
    position: relative;
    left: 127px;
    width: 550px;
    height: 550px;
    margin-top: 100px;
    border-top-left-radius: 30px;
    border-bottom-left-radius: 30px;
}

.button_2{
    position: relative;
    left: 150px;
    top: 60px;
    width: 190px;
    height: 60px;
    background: hsl(209, 100%, 56%);
    color: white;
    font-weight: bold;
    border-radius: 30px;
    cursor: pointer;
}

.button_2:hover{
    box-shadow: 0 0 20px rgba(0, 0, 0, 0.7);
    -webkit-transform: scale(1.1);
    transform: scale(1.1);
}
.txt2{
    position: relative;
    left: 130px;
    
}
.txt2 .big2{
    font-size: 50px;
    color: rgb(68, 68, 68);
}
.small2{
    font-size: 20px;
    color: rgba(128, 128, 128, 0.623);
    position: relative;
    right: 20px;
    top: 20px;
}

/*..............Managing Package plan.................*/
.option3 img{
    width: 550px;
    height: 550px;
    margin-top: 100px;
    border-top-right-radius: 30px;
    border-bottom-right-radius: 30px;

}

.button_3{
    position: relative;
    left: 160px;
    top: 40px;
    width: 190px;
    height: 60px;
    background: hsl(209, 100%, 56%);
    color: white;
    font-weight: bold;
    border-radius: 30px;
    cursor: pointer;
}

.button_3:hover{
    box-shadow: 0 0 20px rgba(0, 0, 0, 0.7);
    -webkit-transform: scale(1.1);
    transform: scale(1.1);
}

.txt3{
    position: relative;
    left: 60px;
    
}

.txt3 .big3{
    font-size: 50px;
    color: rgb(68, 68, 68);
    text-align: center;
    position: relative;
    right: 20px;
}

.small3{
    font-size: 20px;
    color: rgba(128, 128, 128, 0.623);
    position: relative;
    right: 10px;
    top: 20px;
}

/*.................WhatsApp...............*/
.option4 img {
    position: relative;
    left: 126px;
    width: 550px;
    height: 550px;
    margin-top: 100px;
    border-top-left-radius: 30px;
    border-bottom-left-radius: 30px;
    background-color: #3acf47;
}

.button_4{
    position: relative;
    left: 80px;
    top: 40px;
    width: 190px;
    height: 60px;
    background: hsl(209, 100%, 56%);
    color: white;
    font-weight: bold;
    border-radius: 30px;
    cursor: pointer;
}

.button_4:hover{
    box-shadow: 0 0 20px rgba(0, 0, 0, 0.7);
    -webkit-transform: scale(1.1);
    transform: scale(1.1);
}

.txt4{
    position: relative;
    left: 190px;
}

.txt4 .big4{
    font-size: 50px;
    color: rgb(68, 68, 68);
}

.small4{
    font-size: 30px;
    color: rgba(128, 128, 128, 0.623);
}

/*........Massenger........*/
.option5 img{
    width: 550px;
    height: 550px;
    margin-top: 100px;
    border-top-right-radius: 30px;
    border-bottom-right-radius: 30px;
}

.button_5{
    position: relative;
    left: 120px;
    top: 40px;
    width: 190px;
    height: 60px;
    background: hsl(209, 100%, 56%);
    color: white;
    font-weight: bold;
    border-radius: 30px;
    cursor: pointer;
}

.button_5:hover{
    box-shadow: 0 0 20px rgba(0, 0, 0, 0.7);
    -webkit-transform: scale(1.1);
    transform: scale(1.1);
}

.txt5{
    position: relative;
    left: 100px;
}

.txt5 .big5{
    font-size: 50px;
    color: rgb(68, 68, 68);
}

.small5{
    font-size: 30px;
    color: rgba(128, 128, 128, 0.623);
}

.createpkg .createbtn{
    background: #3867d6;
    height: 8vh;
    width: 300px;
    margin-left: 40%;
    margin-bottom: 50px;
    border-radius: 50px;
    color: white;
    font-weight: bold;
    font-size: 20px;
    box-shadow: 1px 1px 20px 1px rgb(161, 161, 161);
}
.createpkg .createbtn:hover{
    background: #666;
}




/* Style for the buttons container */
.buttons-container {
    margin-top: 20px;
    margin-left: 80px;
    display: none;
}
.ico{
    margin-top: 100px;
    margin-left: 180px; 
    font-size:20px;
}
/* Style for the update and delete buttons */
.update_button,
.delete_button {
    background-color: #4CAF50; 
    border: none;
    color: white;
    padding: 10px 20px;
    text-align: center;
    text-decoration: none;
    display: inline-block;
    font-size: 16px;
    margin-right: 10px; 
    width: 120px;
    border-radius: 20px;
}

.delete_button {
    background-color: #f44336; 
}

.services-new{
	padding-right:100px;
}

.services-new table tr td img{
	position: relative;
	right: 119px;
	background-color: #3acf47;	
}

.services-new table tr txt1 big1{
	position: relative;
	
}


</style>



<script src="https://kit.fontawesome.com/c5b940c231.js" crossorigin="anonymous"></script>
</head>
<body>

    <!--...............header................-->

    <header class="header">

		<a href="#" class="logo"><span>S</span>ky<span>L</span>ink</a>
	
		<nav class="navbar">
			<a href="home.jsp">home</a>
			<a href="contactUs.jsp">Contact Us</a>
			<a href="SelfHelp.jsp" class="active">Self Services</a>
			<a href="packages.jsp">packages</a>
			<a href="profile.jsp" >profile</a>
			<a href="#about">about</a>
		</nav>
	
		<div id="menu-bars" class="fas fa-bars"></div>
	
	</header>

    <!--..........cover photo.............-->
    <section class="main">
        <table>
            <tr>
                <td>
                    <h1>Self-Help Channels</h1>
                    <h2>Find answer to your question<br>your own way</h2>
                </td>
                <td>
                    <img src="Images/young-boy.png">
                </td>
            </tr>
        </table>
    </section>
    <section>
    <div class="heading">
        <h1>Self Services</h1>
    </div>
    <div class="services-new">
        <table>
            <% 
            List<Self> selfList = selfDbUtil.getAllServices();
            for (Self self : selfList) { 
            %>
            <tr>
                <td class="option1">
                    <img src="<%= self.getImagePath() %>">
                </td>
                <td class="txt1">
                    <h1 class="big1"><br><%= self.getTopic() %><br></h1>
                    <h2 class="small1"><%= self.getDescription1() %></h2>
                    <h2 class="small1"><%= self.getDescription2() %></h2>
                    <h2 class="small1"><%= self.getDescription3() %></h2>
                    <button class="button_1">Log Now</button>
                    <div class="ico">
                        <i class="fa-solid fa-ellipsis" onclick="toggleButtons(this)"></i>
                    </div>
                    <!-- Buttons container -->
                    <div class="buttons-container">
                        
                        <!-- Update button -->
                        <a href="updateSelf.jsp?sID=<%= self.getsID() %>&topic=<%= self.getTopic() %>&description1=<%= self.getDescription1() %>&description2=<%= self.getDescription2() %>&description3=<%= self.getDescription3() %>&imagePath=<%= self.getImagePath() %>">
                            <button class="update_button">Update</button>
                        </a>
                        <!-- Delete button -->
                        <form action="deleteSelf" method="post">
                            <input type="hidden" name="sID" value="<%= self.getsID() %>">
                            <button class="delete_button" type="submit">Delete</button>
                        </form>
                    </div>
                </td>
            </tr>
            <% } %>
        </table>
        




    </div>
</section>

    <table >
        <!--......Viewing Account Information.........-->
        <tr>
            <td class="option1">
                <img src="Images/old man.jpg">
            </td>
            <td class="txt1">
                <h1 class="big1"><br>Viewing Account<br> Information</br></h1><h2 class="small1">Basically you need to log in.<br><br>
                    Then you have all the data in your profile<br>
                    If you have a problem, get customer service 
                    <br>representative assistance.</h2>
                <button class="button_1">Log Now</button>
            </td>
        </tr>

        <!--...Check your balence...-->
        <tr>
            <td class="txt2">
                <h1 class="big2">
                    <br>Check your balence</br>
                </h1> 
                <h2 class="small2">   
                    Call 73 7123 456 or 1377 and select SkyLine Mobile<br>
                    Go to the main menu and select option #1. <br><br>You can hear your credit 
                    balance and when it will expire.<br><br>
                    After selecting option #1 and hearing your credit balance details,<br> 
                    select option #1 check your last recharge information <br>to get your details
                </h2>
                <button class="button_2">Dail codes</button>
            </td>
            <td class="option2">
                <img src="Images/young lady.jpg">
            </td>
        </tr>

        <!--..... Activate Package plans....-->
        <tr>
            <td class="option3">
                <img src="Images/boy.jpg"> 
            </td>

            <td class="txt3">
                <h1 class="big3"><br>Managing Package <br>Plans</br>
                </h1><h2 class="small3">
                    Call 73 7679 679 or 1377, and select Package plans<br><br>
                    If the account number is under the same NIC as your <br>registered calling number, 
                    you just have to select the <br>account number when it is requested.<br>           
                    <br>Select "option #2" in the main menu, and then select <br>"option #1""
                    Simply select the duration you want it to be <br>activated for and confirm.
                    <br><br>
                    Or you can activate or deactivate the required package<br> through our website
                </h2>
                <button class="button_3">Go to Packages</button>
            </td> 
        </tr>

        <!--...........WhatsApp...........-->
        <tr>
            <td class="txt4">
                <h1 class="big4">Message us on <br>WhatsApp</br></h1>
                <button class="button_4">Drop Massage</button>
            </td>

            <td class="option4">
                <img src="Images/WhatsApp copy png.png"> 
            </td>
        </tr>

        <!--................Massenger.........-->
        <tr>
            <td class="option5">
                <img src="Images/Masseger.jpg"> 
            </td>

            
            <td class="txt5">
                <h1 class="big5">Chat with us on<br> Massenger</br></h1>
                <button class="button_5">Drop Massage</button>
            </td>
        </tr>
    </table>

	<div class="createpkg">
        
                <a href="CreateService.jsp">
                <input type="button" name="create" value="create Service" class="createbtn">
                </a>
    </div>
    
<section class="footer">   <!--footer-->

    <div class="box-container">
        
        <div class="box">
            <h3>contact info</h3>
            <a href="#"> <i class="fas fa-phone"></i> +94711140913 </a>
            <a href="#"> <i class="fas fa-phone"></i> +94775193445 </a>
            <a href="#"> <i class="fas fa-envelope"></i> Kaweeshanethmina17420@gmail.com </a>
            <a href="#"> <i class="fas fa-envelope"></i> hirunichamathka@gmail.com </a>
            <a href="#"> <i class="fas fa-map-marker-alt"></i> colombo, sri lanka - 400104 </a>
        </div>

        <div class="box">
            <h3>follow us</h3>
            <a href="#"> <i class="fab fa-facebook-f"></i> facebook </a>
            <a href="#"> <i class="fab fa-twitter"></i> twitter </a>
            <a href="#"> <i class="fab fa-instagram"></i> instagram </a>
            <a href="#"> <i class="fab fa-linkedin"></i> linkedin </a>
        </div>

    </div>

    <div class="credit"> created by <span>KDHM Group</span> | all rights reserved </div>

</section>




<script>
    function toggleButtons(icon) {
        // Find the buttons container
        var buttonsContainer = icon.parentElement.nextElementSibling;

        // Toggle the display style of the buttons container
        if (buttonsContainer.style.display === "none" || buttonsContainer.style.display === "") {
            buttonsContainer.style.display = "flex";
        } else {
            buttonsContainer.style.display = "none";
        }
    }
</script>


</body>
</html>