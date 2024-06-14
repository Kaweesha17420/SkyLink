<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Home</title>

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



.first{
    width: 100%;
    height: 100vh;
    background-size: cover;
    background-image: linear-gradient(to bottom, rgba(7, 53, 97, 0), rgb(0, 8, 18)),url(Images/1.jpg);
   
}

.first h1{
    margin-top: 10px;
    text-align: right;
    padding-right: 100px;
    font-weight: 200;
    font-size: 60px;
    color: #fff;
    font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
    }
.first p{
    color: white;
    font-size: 15px;
    margin-top: 20px;
    margin-left: 700px;
    text-align: center;
}
.first h2{
    margin-top: 250px;
    font-size: 80px;
    color: #ffffff;
    text-align: right;
    margin-right: 251px;
}
.first h2 span{
    color: #3867d6;
    font-size: 90px;
}
.first button {
    background: rgb(247, 10, 66);
    width: 180px;
    height: 40px;
    font-size: 16px;
    color: white;
    font-weight: 600;
    border-radius: 40px;
    margin-left: 965px;
    margin-top: 40px;
    
}
.first button:hover{
    background: rgb(240, 116, 116);
}



.middle h1{
    font-size: 60px;
    font-family: 'Trebuchet MS', 'Lucida Sans Unicode', 'Lucida Grande', 'Lucida Sans', Arial, sans-serif;
    color: #333;
    text-align: center;
    padding-top: 80px;
}
.middle .mid{
    padding-top: 80px;
    font-size: 30px;
    width: fit-content;
    color: #333;
    margin-left: 140px;
    padding-bottom: 100px;
}
.middle .mid tr td{
    min-width: 400px;
}
.middle table td{
    
    text-align: center;
}
.middle .mid i{
    font-size: 70px;
    
}
.middle .mid .ab{
    color: #3867d6;
}
.middle .mid .cd{
    color: #ff5106;
}
.middle .mid .ef{
    color: #10a303;
}
.middle p{
    font-size: 20px;
    padding-left: 560px;
    padding-top: 40px;  
}
.middle p.h{
    padding-left: 630px;
    font-size: 30px;
    font-weight: 600;
}



.middle .mid2{
    padding-top: 80px;
    font-size: 30px;
    width: fit-content;
    color: #333;
    margin-left: 140px;
    padding-bottom: 100px;
}
.middle .mid2 tr td{
    min-width: 300px;
}

.middle .mid2 i{
    font-size: 100px;
    
}
.header i{
    color: white;
    font-size: 20px;
}
.im img{
    width: 100%;
    padding: 40px;
}

.sub_headerp{
    background: #fbe375;
    margin-left:100px ;
    margin-right: 100px;
    margin-bottom: 100px;
    border-radius: 20px;
    background-image: linear-gradient(to right, rgba(7, 53, 97, 0), rgb(255, 255, 255));
   
}

.sub_headerp img{
  margin-top: 150px;
  height: 80vh;
    
}
.sub_headerp h1{
  font-size: 80px;
  font-family: Arial, Helvetica, sans-serif;
  color: rgb(255, 0, 0);
  padding-right: 100px;
  text-align: center;
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
.sub_headerp button{
    height: 40px;
    width: 150px;
    border-radius: 20px;
    background: #d10a0a;
    font-size: 15px;
    color: #fff;
    font-weight: bold;
    margin-left: 120px;
    margin-top: 40px;
}
.sub_headerp button:hover{
    background: #ea4f4f;
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







</style>

<script src="https://kit.fontawesome.com/c5b940c231.js" crossorigin="anonymous"></script>

</head>
<body>
    <header class="header">

		<a href="#" class="logo"><span>S</span>ky<span>L</span>ink</a>
	
		<nav class="navbar">
			<a href="home.jsp"class="active">home</a>
			<a href="contactUs.jsp">Contact Us</a>
			<a href="SelfHelp.jsp">Self Services</a>
			<a href="packages.jsp">packages</a>
			<a href="profile.jsp" >profile</a>
			<a href="about.jsp">about</a>
		</nav>
	
        <div>
            <a href="profile.jsp"><i class="fa-solid fa-user"></i></a>
            <a href="login.jsp" class="lout">Logout</a>
        </div>
		
	
	</header>

    <div class="first">
        <img src="" alt="">
        <h2><span>S</span>ky<span>L</span>ink</h2>
        <h1>For The New Generation</h1>
        <p>Welcome to SkyLink, where we redefine the future of simulations, blending innovation and excitement <br> to create cutting-edge experiences.
             Soar beyond boundaries with us as we pioneer the next generation<br> of immersive adventures,
              captivating the imaginations of the future. Embark on a thrilling journey<br> where the sky is not the limit but the beginning 
              of limitless possibilities.<br> SkyLink: Elevate Your Experience.</p>
        <button class="self"><a href="SelfHelp.jsp">Self Help Services</a></button>
    </div>
    <div class="middle">
        <h1>Contact Us</h1>
        <p>use below methods to contact with us</p>
        <table class="mid">
            <tr>
                <td class="a">
                    <a href="contactUs.jsp" class="ab"><i class="fa-solid fa-comments" ></i></a>
                </td>
                <td class="b">
                    <a href="contactUs.jsp"class="cd"><i class="fa-solid fa-envelope"></i></a>
                </td>
                <td class="c">
                    <a href="contactUs.jsp" class="ef"><i class="fa-solid fa-location-dot"></i></a>
                </td>
            </tr>
            <tr>
                <td>
                    Chat with Us
                </td>
                <td>
                    Email to Us
                </td>
                <td>
                    Find Us
                </td>
            </tr>
        </table>

        <p class="h">Hotline numbers</p>

        <table class="mid2">
            <tr>
                <td>
                    <i class="fa-solid fa-tty"></i>
                </td>
                <td>
                    <i class="fa-solid fa-tty"></i>
                </td>
                <td>
                    <i class="fa-solid fa-tty"></i>
                </td>
                <td>
                    <i class="fa-solid fa-tty"></i>
                </td>
            </tr>
            <tr>
                <td>
                    224
                </td>
                <td>
                    225
                </td>
                <td>
                    226
                </td>
                <td>
                    227
                </td>
            </tr>
        </table>


    </div>

    <table class="sub_headerp">
        <tr>
          <td>
            <img src="Images/girl.png" alt="">
          </td>
          <td>
            <h1>World Bigest Deals For You</h1>
            <p>Explore SkyLink's voice and data packages for seamless connectivity. Choose from customizable plans tailored to individuals, families, and businesses. Enjoy reliable network coverage and affordable options to stay connected effortlessly.</p>
          
            <a href="packages.jsp"><button>Click Here</button></a>
        </td>
        </tr>
      </table>

    	
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