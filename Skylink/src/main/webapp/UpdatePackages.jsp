<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Update package</title>

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
		String pID = request.getParameter("pID");
		String pkgName = request.getParameter("pkgName");
		String price = request.getParameter("price");
		String description1 = request.getParameter("description1");
		String description2 = request.getParameter("description2");
		String description3 = request.getParameter("description3");
	%>
    <div class="newpkg">
        <form action="upPack" method="post">

			<input type="text" placeholder="package ID" name="pID" value="<%= pID %>" ><br>
            <input type="text" placeholder="Enter package name" name="pkgName" value="<%= pkgName %>" ><br>
            <input type="text" placeholder="Enter Price" name="price" value="<%= price %>" ><br>
            <input type="text" placeholder="Enter description 1" name="description1" value="<%= description1 %>" ><br>
            <input type="text" placeholder="Enter description 2" name="description2" value="<%= description2 %>" ><br>
            <input type="text" placeholder="Enter description 3" name="description3" value="<%= description3 %>" ><br>
    
            <input class="create" type="submit" value="Update package">
    
        </form>
    </div>




</body>
</html>