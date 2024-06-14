<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>create new package</title>

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
    background: rgb(19, 113, 255);
    color: white;
    font-size: 15px;
    border-radius: 10px;
    width: 75%;
    margin-top: 10%;
    border: none;
}

.newpkg .create:hover{
    background: rgb(108, 189, 255);
}


    </style>
</head>
<body>
    
    <div class="newpkg">
        <form action="createS" method="post">

            <input type="text" placeholder="Enter topic" name="topic"><br>
            <input type="text" placeholder="Enter description 1" name="description1"><br>
            <input type="text" placeholder="Enter description 2" name="description2"><br>
            <input type="text" placeholder="Enter description 3" name="description3"><br>
            <input type="text" placeholder="Enter Image Path" name="imagePath"><br>
    
            <input class="create" type="submit" value="create new Service">
    
        </form>
    </div>




</body>
</html>