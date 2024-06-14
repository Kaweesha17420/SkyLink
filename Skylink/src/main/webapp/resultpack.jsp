<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>packages</title>
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

.pkg{
    margin-left: 38%;
    margin-top: 15%;
    background: #ffffff;
    margin-bottom: 12%;
    padding-bottom: 20px;
    padding-left: 25px;
    margin-right: 38%;
    border-radius: 20px;
    box-shadow: 1px 1px 20px 1px rgb(201, 200, 200);
}
.pkg table td .btn1{
    background: #2598f7;
    width: 200px;
    height: 50px;
    color: white;
    font-size: 16px;
    font-weight: bold;
    border-radius: 10px;
    border: 1px solid gray;
}
.pkg table{
    text-align: center;
    padding-top: 60px;
}
.pkg table td{
    padding-left: 50px;
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
    padding-left: 45px;
    font-size: 15px;
}
.pkg h1{
    font-size: 30px;
    color: #666;
    text-align: center;
    margin-top: 50px;
}
.pkg table .btn2{
    background: #f72525;
    height: 30px;
    width: 200px;
    color: #fff;
    font-weight: bold;
    border-radius: 20px;
    margin-top: 30px;
    margin-bottom: 20px;
}

.pkg .btn{
    display: flex;
    padding: 0;
    background: #ffffff;
    
}
.pkg .upbtn{
    background-image: linear-gradient(to left, rgb(2, 142, 16), rgb(55, 199, 3));
    width: 150px;
    height: 30px;
    border-radius: 20px;
    color: white;
    font-weight: bold;

}
.pkg .upbtn:hover{
    background: #666;
}
.pkg .delbtn{
    background-image: linear-gradient(to left, rgb(175, 10, 10), rgb(253, 15, 15));
    width: 150px;
    height: 30px;
    border-radius: 20px;
    color: white;
    font-weight: bold;
    
}
.pkg .delbtn:hover{
    background: #666;
}
</style>


</head>
<body>
    <header class="header">

		<a href="#" class="logo"><span>S</span>ky<span>L</span>ink</a>
	
		<nav class="navbar">
			<a href="home.jsp">home</a>
			<a href="contactUs.jsp">Contact Us</a>
			<a href="#gallery">FAQ</a>
			<a href="#price">Self Services</a>
			<a href="#review">Feedback</a>
			<a href="packages.jsp" class="active">packages</a>
			<a href="profile.jsp" >profile</a>
			<a href="about.html">about</a>
		</nav>
	
		<div id="menu-bars" class="fas fa-bars"></div>
	
	</header>
    
        <div class="pkg">
            <table>
                <c:forEach var= "pack" items="${packDetails}" >
                
                <c:set var="pID" value="${pack.pID}"/>
                <c:set var="pkgName" value="${pack.pkgName}"/>
                <c:set var="price" value="${pack.price}"/>
                <c:set var="description1" value="${pack.description1}"/>
                <c:set var="description2" value="${pack.description2}"/>
                <c:set var="description3" value="${pack.description3}"/>
                
                <tr>
                    <td>
                        <button class="btn1">${pack.pkgName}</button>
                        <p class="price">${pack.price}</p>
                        <p>Per Month</p>
                        <ul>
                            <li>${description1}</li>
                            <li>${description2}</li>
                            <li>${description3}</li>
                        </ul>
                        <button class="btn2">Activate</button><br>
                        
                    </td>
                </tr>
            
                </c:forEach>
                </table>
                
     
                <div class="btn">
                    <c:url value="UpdatePackages.jsp" var="packupdate">
                    <c:param name="pID" value="${pID}"/>
                    <c:param name="pkgName" value="${pkgName}"/>
                    <c:param name="price" value="${price}"/>
                    <c:param name="description1" value="${description1}"/>
                    <c:param name="description2" value="${description2}"/>
                    <c:param name="description3" value="${description3}"/>
                </c:url>
                
                <a href="${packupdate}">
                <input type="button" name="update" value="Update Package Data" class="upbtn">
                </a>
                
                
                <c:url value="DeletePackages.jsp" var="packdelete">
                    <c:param name="pID" value="${pID}"/>
                    <c:param name="pkgName" value="${pkgName}"/>
                    <c:param name="price" value="${price}"/>
                    <c:param name="description1" value="${description1}"/>
                    <c:param name="description2" value="${description2}"/>
                    <c:param name="description3" value="${description3}"/>
                </c:url>
                <a href="${packdelete}">
                <input type="button" name="delete" value="Delete Package" class="delbtn">
                </a>
                </div>
                
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

