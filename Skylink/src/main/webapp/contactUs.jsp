<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.util.List" %>
<%@ page import="com.chat.Chat" %>
<%@ page import="com.chat.chatDbUtil" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>ContactUs</title>

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
.sub_header{
    background: #fe6a1b;
    background-image: linear-gradient(to right, rgba(7, 53, 97, 0), rgb(255, 255, 255));
   
}
.sub_header img{
  margin-top: 150px;
  height: 80vh;
    
}
.sub_header h1{
  font-size: 80px;
  font-family: Arial, Helvetica, sans-serif;
  color: red;
  padding-left: 100px;
}
.sub_header p{
  font-size: 15px;
  margin-top: 20px;
  text-align: center;
  padding-right: 90px;
}
.sub_header i{
    font-size: 100px;
    color: red;
    margin-left: 200px;
    margin-top: 20px;
}
.cus p{
    font-size: 40px;
    font-weight: bold;
    font-family: Cambria, Cochin, Georgia, Times, 'Times New Roman', serif;
    color: rgb(231, 4, 118);
    text-align: center;
    padding: 20px;
}
.cus p span{
    color: rgb(238, 40, 96);
}
.cus label{
    font-size: 15px;
    font-weight: 550;
}
.cus textarea{
    background: #fefefe;
    width: 700px;
    height: 100px;
    border-radius: 10px;
    padding: 20px;
    font-size: 15px;
    box-shadow: 1px 1px 20px 1px rgb(196, 196, 196);
}
.cus .chat{
    padding-left: 400px;
}
.cus .chat input{
    background: #3867d6;
    width: 80px;
    height: 30px;
    border-radius: 10px;
    color: #ffffff;
    font-weight: bold;
    margin-top: 10px;
    margin-right: 450px;
    margin-bottom: 20px;
}

.social p{
    font-size: 40px; 
    margin-bottom: 40px;
    margin-top: 100px;
    font-weight: 550;   
}
.social span i{
    color: green;
}
.social .a{
    color: purple;
}
.social i{
    font-size: 70px;
    color: #3867d6;
    padding: 20px;
}
.social{
    text-align: center;
    
}
.tel .mid2{
    padding-top: 50px;
    font-size: 30px;
    width: fit-content;
    color: #333;
    margin-left: 140px;
    padding-bottom: 100px;
    text-align: center;
}
.tel .mid2 tr td{
    min-width: 300px;
}

.tel .mid2 i{
    font-size: 100px;
    color: rgb(251, 48, 102);
}
.tel p{
    font-size: 50px;
    text-align: center;
    padding-top: 60px;
    font-weight: 550;  
    
}
.locate p{
    font-size: 50px;
    text-align: center;
    font-weight: 550;  
}
.locate iframe{
    width: 100%;
    padding: 50px;
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
.chatMessages {
    
    background: #fefefe;
    width: 700px;
    height: auto;
    border-radius: 10px;
    padding: 20px;
    font-size: 15px;
    box-shadow: 1px 1px 20px 1px rgb(196, 196, 196);
    margin-left: 400px;

}
.pfy{
    text-align: center;
    font-family: Arial, Helvetica, sans-serif;
    font-size: 40px;
    padding: 40px;
    color: #333;
}
.ellipsis-container{
    display: flex;
    justify-content: space-between;
    position: relative;
    padding-inline: 29px;
}
.buttons{
    display: none;
    
    padding-inline:20px;
}
.buttons .upbtn{
    color: white;
    background: green;
    height: 30px;
    width:60px;
    border-radius: 20px;
    font-weight: bold;
    
}
.buttons .delbtn{
    color: white;
    background: rgb(255, 38, 10);
    height: 30px;
    width:60px;
    border-radius: 20px;
    font-weight: bold;
    margin-left: 20px;
}
.buttons.show {
    display: flex; /* Show the buttons when the 'show' class is present */
}
.chatMessages table td{
    padding: 15px;
    padding-left: 30px;
}
.dtable {
        width: 100%;
        border-collapse: collapse;
    }

    .dtable th, .dtable td {
        padding: 10px;
        border-bottom: 1px solid #ddd;
    }

    .dtable th {
        background-color: #f2f2f2;
        color: #333;
        font-weight: bold;
    }

    .dtable td {
        background-color: #fff;
    }

    /* Alternate row background color */
    .dtable tr:nth-child(even) td {
        background-color: #f9f9f9;
    }
</style>

<script src="https://kit.fontawesome.com/c5b940c231.js" crossorigin="anonymous"></script>


</head>
<body>
    <header class="header">

		<a href="#" class="logo"><span>S</span>ky<span>L</span>ink</a>
	
		<nav class="navbar">
			<a href="home.jsp">home</a>
			<a href="contactUs.jsp"class="active">Contact Us</a>
			<a href="SelfHelp.jsp">Self Services</a>
			<a href="packages.jsp" >packages</a>
			<a href="profile.jsp" >profile</a>
			<a href="about.jsp">about</a>
		</nav>
	
		<div>
            <a href="#"><i class="fa-solid fa-user"></i></a>
            <a href="#" class="lout">Logout</a>
        </div>
	
	</header>

    <table class="sub_header">
      <tr>
        <td>
          <img src="Images/2.png" alt="">
        </td>
        <td>
          <h1>Dial 224</h1>
          <p>Welcome to SkyLink  your premier destination for seamless connectivity and outstanding service. With a commitment to exceptional customer care, our user-friendly "Contact Us" page is ready for your inquiries, while our hotline number 224 ensures immediate assistance. At SkyLink, we prioritize your experience, striving to keep you connected and satisfied. Choose SkyLink, where connectivity meets unparalleled customer service.</p>
          <i class="fa-solid fa-tty"></i>
        </td>
      </tr>
    </table>


    <div class="cus">
        <p>Chat With Us <span><i class="fa-solid fa-comments" ></i></span></p>

 
        <form action="send" id="chatForm" method="post" class="chat">
            <label for="message">Enter your Problem :</label><br>
            <textarea id="chat" name="chat" cols="30" rows="5" placeholder="Enter your text here"></textarea><br>
            <input type="submit" value="Send">
        </form>
    </div>
    
    <div id="chatMessages" class="chatMessages">
        <% 
		    // Retrieve all chats from the database
		    List<Chat> chats = chatDbUtil.getAllChats();
		%>
		
		<!-- Display the chats in a table -->
		<table border="1" class="dtable">
        <thead>
            <tr>
                <th>Chat ID</th>
                <th>Description</th>
                <th>Actions</th> <!-- Added column for actions -->
            </tr>
        </thead>
		<tbody>
		    <% for (Chat chat : chats) { %>
		        <tr>
		            <td><%= chat.getChatId() %></td>
		            <td><%= chat.getDescription() %></td>
		            <td>
		                <!-- Ellipsis icon to toggle buttons -->
		                <div class="ellipsis-container">
		                    <i class="fa-solid fa-ellipsis" onclick="toggleButtons(this)"></i>
		                    <div class="buttons">
		                        <!-- Update button -->
		                        <a href="updateChat.jsp?chatId=<%= chat.getChatId() %>&description=<%= chat.getDescription() %>">
		                            <input type="button" name="update" value="Update" class="upbtn">
		                        </a>
		                        
		                        <!-- Delete button -->
		                        <form action="deleteC" method="post">
		                            <input type="hidden" name="chatId" value="<%= chat.getChatId() %>">
		                            <button class="delbtn" type="submit">Delete</button>
		                        </form>
		                    </div>
		                </div>
		            </td>
		        </tr>
		    <% } %>
		</tbody>

    </table>



    </div>


    <div class="social">
        
        <p>Stay With Us On Social Media</p>
        <span><i class="fa-brands fa-whatsapp"></i></span>
        <i class="fa-brands fa-facebook"></i>
        <i class="fa-brands fa-facebook-messenger"></i>
    </div>

    <div class="tel">
        <p>Quick Assistant</p>
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

    <div class="locate">
        <p>Find Us <i class="fa-solid fa-location-dot"></i></p>
        <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3960.796754353952!2d79.9705924748883!3d6.914887118491647!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3ae256db1043cc37%3A0x5f43c37d11c72aa!2sSLIIT%20Main%20Building%2C%20Malabe!5e0!3m2!1sen!2slk!4v1710323682784!5m2!1sen!2slk" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>

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


        
<script>
    function toggleButtons(icon) {
        // Find the closest buttons container
        var buttonsContainer = icon.closest('.ellipsis-container').querySelector('.buttons');
        
        // Toggle visibility of buttons container
        buttonsContainer.classList.toggle('show');
    }
</script>

</body>
</html>