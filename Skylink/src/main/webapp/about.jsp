<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>About</title>

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

.header .lout{
    color: white;
    font-size: 15px;
    padding-left: 20px;
    font-weight: bold;
}
.header .lout:hover{
    color: #d10a0a;
}

.sub_headerp{
    background: #33e0ec;
    background-image: linear-gradient(to right, rgba(7, 53, 97, 0), rgb(255, 255, 255));
   
}

.sub_headerp img{
  margin-top: 150px;
  height: 80vh;
  padding-left: 20px;
}
.sub_headerp h1{
  font-size: 100px;
  font-family: Arial, Helvetica, sans-serif;
  color: rgb(138, 138, 138);
  padding-right: 100px;
  text-align: center;
}
.sub_headerp h1 span{
    color: rgb(2, 124, 180);
    font-size: 130px;
}
.sub_headerp p{
  font-size: 15px;
  margin-top: 20px;
  text-align: center;
  padding-right: 90px;
}
.sub_headerp i{
    font-size: 100px;
    color: red;
    margin-left: 200px;
    margin-top: 20px;
}

.vm h2{
    font-size: 40px;
    text-align: center;
    color: #666;
    padding: 30px;
    font-family: Arial, Helvetica, sans-serif;
}
.vm .v{
    font-size: 16px;
    text-align: center;
    padding: 20px;
}
.vm p{
    font-size: 15px;
    padding: 20px;
    padding-left: 200px;
    padding-right: 200px;
}
.vm h3{
    font-size: 17px;
    padding-left: 200px;
    color: #666;
}
.vm .con{
    text-align: center;
}

</style>

<script src="https://kit.fontawesome.com/c5b940c231.js" crossorigin="anonymous"></script>

</head>
<body>
    <header class="header">

		<a href="#" class="logo"><span>S</span>ky<span>L</span>ink</a>
	
		<nav class="navbar">
			<a href="home.jsp">home</a>
			<a href="contactUs.jsp">Contact Us</a>
			<a href="SelfHelp.jsp">Self Services</a>
			<a href="packages.jsp">packages</a>
			<a href="profile.jsp" >profile</a>
			<a href="about.jsp"class="active">about</a>
		</nav>
	
        <div>
            <a href="#"><i class="fa-solid fa-user"></i></a>
            <a href="#" class="lout">Logout</a>
        </div>
		
	
	</header>

    <table class="sub_headerp">
        <tr>
          <td>
            <img src="Images/about.png" alt="">
          </td>
          <td>
            <h1><span>S</span>ky<span>L</span>ink</h1>
            <p>Explore SkyLink's voice and data packages for seamless connectivity. Choose from customizable plans tailored to individuals, families, and businesses. Enjoy reliable network coverage and affordable options to stay connected effortlessly.</p>
          </td>
        </tr>
      </table>
    <div class="vm">
        
        <h2>Our Vision</h2>
        <p class="v">Our vision is to be the preferred telecommunications partner for our customers, providing exceptional services and contributing to the advancement of society through technology.</p>
        <h2>Our Mission</h2>
        <p class="v">Our mission at SkyLink is to empower individuals and businesses with innovative telecommunications solutions that enhance connectivity, productivity, and communication.</p>
        
        <h2>Terms and Conditions</h2>
        <p>Welcome to SkyLink! These terms and conditions govern your use of our website and services. By accessing or using our website, you agree to be bound by these terms and conditions. Please read them carefully.</p>

        <h3>1. Website Use</h3>
        <p>1.1. You must be at least 18 years old to use our website and services.</p>
        <p>1.2. You agree to use our website and services only for lawful purposes and in compliance with all applicable laws and regulations.</p>
        <p>1.3. You may not use our website in any way that could damage, disable, overburden, or impair our website or interfere with any other party's use and enjoyment of our website.</p>

        <h3>2. Intellectual Property</h3>
        <p>2.1. All content on this website, including text, graphics, logos, images, audio clips, and software, is the property of SkyLink or its licensors and is protected by copyright laws.</p>
        <p>2.2. You may not modify, reproduce, distribute, display, publish, transmit, or create derivative works of any content on this website without prior written consent from SkyLink.</p>


        <a href="contactUs.jsp"><h2>Contact Us</h2></a>
        <p class="con">If you have any questions or concerns about these terms and conditions, please contact us <a href="contactUs.jsp">Click here</a>.</p>
       
    </div>  
    
        
<section class="footer">

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
</body>
</html>