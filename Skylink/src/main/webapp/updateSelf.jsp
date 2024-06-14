<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Update Service</title>

    <style>

.newpkg{
    background: rgb(255, 255, 255);
    padding: 50px;
    margin-top: 100px;
    margin-left: 30%;
    margin-right: 30%;
    box-shadow: 1px 1px 20px 1px rgb(216, 216, 216);
    border-radius: 20px;
}
.newpkg input{
    padding: 10px;
    margin-top: 8px;
    margin-left:15% ;
    width: 70%;
}
.newpkg .create{
    background: rgb(2, 122, 32);
    color: white;
    font-size: 15px;
    border-radius: 10px;
    width: 75%;
    margin-top: 10%;
    border: none;
}

.newpkg .create:hover{
    background: rgb(104, 243, 173);
}


    </style>
</head>
<body>
    <%
		String sID = request.getParameter("sID");
		String topic = request.getParameter("topic");
		String description1 = request.getParameter("description1");
		String description2 = request.getParameter("description2");
		String description3 = request.getParameter("description3");
		String imagePath = request.getParameter("imagePath");
	%>
    <div class="newpkg">
        <form action="updateS" method="post">

			<input type="text" placeholder="package ID" name="sID" value="<%= sID %>" ><br>
			<input type="text" placeholder="Enter package name" name="topic" value="<%= topic %>" ><br>
			<input type="text" placeholder="Enter description 1" name="description1" value="<%= description1 %>" ><br>
			<input type="text" placeholder="Enter description 2" name="description2" value="<%= description2 %>" ><br>
			<input type="text" placeholder="Enter description 3" name="description3" value="<%= description3 %>" ><br>
			<input type="text" placeholder="Enter Image Path" name="imagePath" value="<%= imagePath %>" ><br>

    		
            <input class="create" type="submit" value="Update service">
    
        </form>
    </div>




</body>
</html>