<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    
    

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Profile</title>

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

.sub-headerU{
    height: 50vh;
    width: 100%;
    background-color: #464545;
    background-position: center;
    background-size: cover;
    text-align: center;
    color: #fff;
    background-image: linear-gradient(to bottom, rgb(1, 121, 168), rgb(255, 255, 255));
   
}
.sub-headerU img{
    margin-top: 100px;
    border-radius: 50px;
    border:2px solid  #fc9594;
}
.status .sec2{
    background: #ffffff;
    height: 30vh;
    width: 50%;
    margin-left: 25%;
    box-shadow: 1px 1px 20px 1px rgb(207, 207, 207);
    border-radius: 20px;
    padding: 40px;
}
.status .sec1{
    background: #ffffff;
    height: 12vh;
    width: 50%;
    margin-left: 25%;
    box-shadow: 1px 1px 20px 1px rgb(207, 207, 207);
    border-radius: 20px;
    padding: 20px;
}
.status .ac{
    font-size: 27px;
    font-weight: 600;
    margin-left: 315px;
    padding: 40px;
}
.status .sec1 i{
    font-size: 30px;
    color: #016bff;
}
.status .sec1 table td .sky{
    font-size: 20px;
    font-weight: bold;
}
.status .sec1 table td{
    padding-left: 20px;
}
.status .sec1 table td .sky{
    padding-left: 20px;
}
.status .sec1 table .dot i{
    color: #59ff00;
    font-size: 10px;
    padding-left: 20px;
}
.status .sec1 table td .con{
    font-size: 15px;
    color: #666;
}
.status .sec2 .pkg{
    background: #016bff;
    height: 13vh;
    border-radius: 15px;
    width: 80%;
    margin-left: 50px;
    margin-top: 10px;
}
.status .sec2 .pkg .pre{
    padding-top: 20px;
    padding-left: 20px;
    color: white;
    font-size: 13px;
    font-weight: 600;
}
.status .sec2 .pkg .price{

    color: white;
    font-size: 20px;
    font-weight: 600;
    padding-left: 20px;
}
.status .sec2 .pkg .year{
    color: white;
    padding-left: 20px;
}
.status .sec2 .pkg table td i{
    font-size: 20px;
    color: white;
    padding-left: 250px;
}
.status .tr .btn1{
    background: #ffffff;
    height: 30px;
    color: rgb(255, 25, 25);
    width: 150px;
    border-radius: 20px;
    margin-left: 90px;
    border: 2px solid rgb(179, 179, 179);
    font-weight: bold;
}
.status .tr .btn2{
    background-image: linear-gradient(to left, rgb(253, 109, 109), rgb(255, 0, 0));
    height: 30px;
    color: white;
    width: 90px;
    border-radius: 20px;
    margin-left: 50px;
    font-weight: bold;
}
.status .tr{
    padding-left: 20px;
    margin-top: 20px;
}
.status .info{
    background: #ffffff;
    height: auto;
    width: 50%;
    margin-left: 25%;
    box-shadow: 1px 1px 20px 1px rgb(207, 207, 207);
    border-radius: 20px;
    padding: 40px;
}
.status .info table tr td{
    font-size: 15px;
    padding: 5px;
    padding-left: 20px;
}
.status .info .upbtn{
    background-image: linear-gradient(to left, rgb(2, 142, 16), rgb(55, 199, 3));
    width: 150px;
    height: 30px;
    border-radius: 20px;
    color: white;
    font-weight: bold;
    margin: 20px;
    margin-left: 95px;
}
.status .info .upbtn:hover{
    background: #666;
}
.status .info .delbtn{
    background-image: linear-gradient(to left, rgb(175, 10, 10), rgb(253, 15, 15));
    width: 150px;
    height: 30px;
    border-radius: 20px;
    color: white;
    font-weight: bold;
}
.status .info .delbtn:hover{
    background: #666;
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
			<a href="packages.jsp" >packages</a>
			<a href="profile.jsp" class="active">profile</a>
			<a href="about.jsp">about</a>
		</nav>
	
		<div>
            <a href="profile.jsp" class="user"><i class="fa-solid fa-user"></i></a>
            <a href="login.jsp" class="lout">Logout</a>
        </div>
	
	</header>

    <section class="sub-headerU">

        
        <img src="Images/profile1.jpg" height="100px" width="100px" class="headimg">
        
        
        
        <c:forEach var="cus" items="${sessionScope.cusDetails}">
   			 <h3>${cus.name}</h3>
		</c:forEach>
		<c:forEach var="cus" items="${sessionScope.adminDetails}">
        <h3>${cus.name}</h3>
    	</c:forEach>
		

        <!-- 5 star rating -->
        <span class="fa fa-star checked"></span>
        <span class="fa fa-star checked"></span>
        <span class="fa fa-star checked"></span>
        <span class="fa fa-star"></span>
        <span class="fa fa-star"></span>

    </section>

    <section class="status">
        <div class="sec1"> 
            
            <table>
                <tr>
                    <td>
                        <i class="fa-solid fa-chart-simple"></i>
                    </td>
                    <td class="dot">
                        <p class="sky">SkyLink 5G</p>
                        <p class="con"><i class="fa-solid fa-circle-dot"></i> Connected</p>
                    </td>
                </tr>
            </table>
        </div>
        <p class="ac">Account Summary</p>
        <div class="sec2">
            <div class="pkg">
                <table>
                    <tr>
                        <td>
                            <p class="pre">Prepaid balance</p>  
                            <p class="price">Rs.100.00</p>
                            <p class="year">Valid till 2/2/2025</p>
                        </td>
                        <td>
                            <i class="fa-solid fa-wallet"></i>
                        </td>
                    </tr>
                </table>
            </div>
            <div class="tr">
                <button class="btn1">Transaction</button>
                <button class="btn2">Reload</button>
            </div>
        </div>

        <p class="ac">Account Information</p>
            
        <div class="info">
            <table>
                <c:forEach var="cus" items="${cusDetails}">
                
                <c:set var="id" value="${cus.id}"/>
                <c:set var="NIC" value="${cus.NIC}"/>
                <c:set var="name" value="${cus.name}"/>
                <c:set var="email" value="${cus.email}"/>
                <c:set var="phone" value="${cus.phone}"/>
                <c:set var="username" value="${cus.username}"/>
                <c:set var="password" value="${cus.password}"/>
                
                <tr>
                    <td>Customer ID</td>
                    <td>${cus.id}</td>
                </tr>
                <tr>
                    <td>Customer NIC</td>
                    <td>${cus.NIC}</td>
                </tr>
                <tr>
                    <td>Customer Name</td>
                    <td>${cus.name}</td>
                </tr>
                <tr>
                    <td>Customer Email</td>
                    <td>${cus.email}</td>
                </tr>
                <tr>
                    <td>Customer Phone</td>
                    <td>${cus.phone}</td>
                </tr>
                <tr>
                    <td>Customer User Name</td>
                    <td>${cus.username}</td>
                </tr>
            
                </c:forEach>
                
                
                
                <c:forEach var="cus" items="${sessionScope.adminDetails}">
                <tr>
                    <td>Admin ID</td>
                    <td>${cus.adminID}</td>
                </tr>
                <tr>
                    <td>Admin Username</td>
                    <td>${cus.username}</td>
                </tr>
                <tr>
                    <td>Name</td>
                    <td>${cus.name}</td>
                </tr>
                <tr>
                    <td>Email</td>
                    <td>${cus.email}</td>
                </tr>
                <tr>
                    <td>Password</td>
                    <td>${cus.password}</td>
                </tr>
            </c:forEach>
                </table>

                <c:url value="updatecustomer.jsp" var="cusupdate">
                    <c:param name="id" value="${id}"/>
                    <c:param name="name" value="${name}"/>
                    <c:param name="email" value="${email}"/>
                    <c:param name="phone" value="${phone}"/>
                    <c:param name="uname" value="${username}"/>
                    <c:param name="pass" value="${password}"/>
                </c:url>
                <c:url value="updateadmin.jsp" var="adminUpdateUrl">
				    <c:param name="adminID" value="${adminID}"/>
				    <c:param name="adminUsername" value="${username}"/>
				    <c:param name="name" value="${name}"/>
				    <c:param name="email" value="${email}"/>
				    <c:param name="password" value="${password}"/>
				</c:url>

                
                <c:if test="${empty sessionScope.adminDetails}">
                <a href="${cusupdate}">
                <input type="button" name="update" value="Update My Data" class="upbtn">
                </a>
                </c:if>
                <c:if test="${empty sessionScope.cusDetails}">
                <a href="${adminUpdateUrl}">
				    <input type="button" name="update" value="Update My Data" class="upbtn">
				</a>

                </c:if>
                
                <c:url value="deletecustomer.jsp" var="cusdelete">
                    <c:param name="id" value="${id}" />
                    <c:param name="name" value="${name}" />
                    <c:param name="email" value="${email}" />
                    <c:param name="uname" value="${username}" />
                    <c:param name="pass" value="${password}" />
                </c:url>
                
				<c:url value="deleteadmin.jsp" var="adminDeleteUrl">
				    <c:param name="adminID" value="${adminID}"/>
				    <c:param name="adminUsername" value="${adminUsername}"/>
				    <c:param name="name" value="${name}"/>
				    <c:param name="email" value="${email}"/>
				    <c:param name="password" value="${password}"/>
				</c:url>
                
                <c:if test="${empty sessionScope.adminDetails}">
                <a href="${cusdelete}">
                <input type="button" name="delete" value="Delete My Account" class="delbtn">
                </a>
                </c:if>
                <c:if test="${empty sessionScope.cusDetails}">
                <a href="${adminDeleteUrl}">
				    <input type="button" name="delete" value="Delete My Account" class="delbtn">
				</a>
				</c:if>
        </div>
    </section>
  	
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