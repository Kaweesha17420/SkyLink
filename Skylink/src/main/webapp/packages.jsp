<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="com.pkg.packagesDbUtil" %>
<%@ page import="java.util.List" %>
<%@ page import="com.pkg.Pack" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Packages</title>

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
.header i{
    color: white;
    font-size: 20px;
}
.sub_headerp{
    background: #fbe375;
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
.pkg td .btn1{
    background: #2598f7;
    width: 200px;
    height: 50px;
    color: white;
    font-size: 16px;
    font-weight: bold;
    border-radius: 10px;
}
.pkg {
    text-align: center;
    padding-left: 80px;
    padding-top: 40px;
}
.pkg td{
    padding-left: 100px;
}
.pkg .price{
    font-size: 26px;
    padding-top: 30px;
}
.pkg ul{
    padding-top: 20px;
}
.pkg ul li{
    text-align: left;
    padding-left: 40px;
    font-size: 15px;
}
.pkg h1{
    font-size: 30px;
    color: #666;
    text-align: center;
    margin-top: 50px;
}
.pkg .btn2{
    background: #f72525;
    height: 30px;
    width: 70px;
    color: #fff;
    font-weight: bold;
    border-radius: 20px;
    margin-top: 30px;
    margin-bottom: 80px;
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

.sub_headerp .inp{
    padding: 20px;
    border-radius: 20px;
    text-align: center;
    width: 300px;
    height: 30px;
    box-shadow: 0px 2px 20px rgb(194, 194, 194);
}
.sub_headerp .search{
    border: 1px solid rgb(255, 255, 255);
    border-radius: 20px;
    width: 100px;
    height: 40px;
    background-image: linear-gradient(to left, rgb(253, 109, 109), rgb(255, 0, 0));
    font-weight: 700;
    color:#fff ;
    box-shadow: 0px 2px 20px rgb(122, 122, 122);
    margin-left: 10px;
}
.sub_headerp .search:hover{
    background-color: #f44336;
    box-shadow: 0px 2px 20px rgb(206, 14, 14);
    transition: .3s;
}
.sbox{
    margin-top: 60px;
    margin-left: 80px;
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
.header i{
    color: white;
    font-size: 20px;
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



</style>

<script src="https://kit.fontawesome.com/c5b940c231.js" crossorigin="anonymous"></script>


<link
  rel="stylesheet"
  href="https://cdn.jsdelivr.net/npm/swiper@11/swiper-bundle.min.css"
/>

<script src="https://cdn.jsdelivr.net/npm/swiper@11/swiper-bundle.min.js"></script>
</head>
<body>
    <header class="header">

		<a href="#" class="logo"><span>S</span>ky<span>L</span>ink</a>
	
		<nav class="navbar">
			<a href="home.jsp">home</a>
			<a href="contactUs.jsp">Contact Us</a>
			<a href="SelfHelp.jsp">Self Services</a>
			<a href="packages.jsp" class="active">packages</a>
			<a href="profile.jsp" >profile</a>
			<a href="about.jsp">about</a>
		</nav>
	
		<div>
            <a href="profile.jsp"><i class="fa-solid fa-user"></i></a>
            <a href="login.jsp" class="lout">Logout</a>
        </div>
	
	</header>

    <table class="sub_headerp">
      <tr>
        <td>
          <img src="Images/girl.png" alt="">
        </td>
        <td>
          <h1>World Bigest Deals For You</h1>
          <p>Explore SkyLink's voice and data packages for seamless connectivity. Choose from customizable plans tailored to individuals, families, and businesses. Enjoy reliable network coverage and affordable options to stay connected effortlessly.</p>
        
          <div class="sbox">
            <form action="go" method="post" >
            	<input class="inp" type="text" placeholder="Search for package" name="sch">
            	<input class="search" type="submit" value="search">
            </form>
          </div>
        
        </td>
      </tr>
    </table>
    
    
    
    <%
    // Retrieve all packages from the database
    List<Pack> packages = packagesDbUtil.getAllPackages();
	%>
		
		<table class="pkg">
		    <% int rowCount = (int) Math.ceil(packages.size() / 4.0); %>
		    <% for (int i = 0; i < rowCount; i++) { %>
		        <tr>
		            <% for (int j = i * 4; j < Math.min((i + 1) * 4, packages.size()); j++) { %>
		                <td>
		                    <div class="package-card">
		                        <button class="btn1"><%= packages.get(j).getPkgName() %></button>
		                        <p class="price"><%= packages.get(j).getPrice() %></p>
		                        <p class="subscription">Per Month</p>
		                        <ul>
		                            <li><%= packages.get(j).getDescription1() %></li>
		                            <li><%= packages.get(j).getDescription2() %></li>
		                            <li><%= packages.get(j).getDescription3() %></li>
		                        </ul>
		                        <button class="btn2">Activate</button>
		                    </div>
		                </td>
		            <% } %>
		            <% for (int k = Math.min((i + 1) * 4, packages.size()); k < (i + 1) * 4; k++) { %>
		                <td></td> <!-- Empty cell to fill the row -->
		            <% } %>
		        </tr>
		    <% } %>
		</table>

    
    

    <div class="createpkg">
        
                <a href="InsertPackages.jsp">
                <input type="button" name="create" value="create Package" class="createbtn">
                </a>
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