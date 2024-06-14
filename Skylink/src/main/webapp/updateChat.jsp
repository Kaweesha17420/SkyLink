<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Update package</title>

    <style>

.upchat{
    background: rgb(255, 255, 255);
    padding: 50px;
    margin-top: 100px;
    margin-left: 30%;
    margin-right: 30%;
    box-shadow: 1px 1px 20px 1px rgb(216, 216, 216);
    border-radius: 20px;
}
.upchat input{
    padding: 10px;
    margin-top: 8px;
    margin-left:15% ;
    width: 70%;
}
.upchat .update{
    background: rgb(2, 122, 32);
    color: white;
    font-size: 15px;
    border-radius: 10px;
    width: 75%;
    margin-top: 10%;
    border: none;
}

.upchat .update:hover{
    background: rgb(104, 243, 173);
}


    </style>
</head>
<body>
    <%
		String chatId = request.getParameter("chatId");
		String description = request.getParameter("description");
		
	%>
    <div class="upchat">
        <form action="updateU" method="post">

			<input type="text" placeholder="chat ID" name="chatId" value="<%= chatId %>" ><br>
            <input type="text" placeholder="Description" name="description" value="<%= description %>" ><br>
            
    
            <input class="update" type="submit" value="Update Chat"class="create">
    
        </form>
    </div>




</body>
</html>