<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<%@ page isELIgnored="false" %>
<html>
<head>
<title>Upload File Request Page</title>
</head>
<body>
 
    <form action="uploadFile" method="POST" enctype="multipart/form-data">
        File to upload: <input type="file" name="file"><br /> 
        Name: <input type="text" name="uname"><br /> <br /> 
        <input type="submit" value="Upload"> Press here to upload the file!
    </form>
     
</body>
</html>