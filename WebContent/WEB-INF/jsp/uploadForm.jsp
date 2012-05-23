<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
    <head>
        <META http-equiv="Content-Type" content="text/html;charset=UTF-8">
        <title>Upload Example</title>
    </head>
    <body>
   <html>
    <head>
        <META http-equiv="Content-Type" content="text/html;charset=UTF-8">
        <title>Upload Example</title>
    </head>
    <body>
        <form:form modelAttribute="uploadItem" method="post" enctype="multipart/form-data">
            <fieldset>
                <legend>Upload Fields</legend>
 
                <p>
                    <form:label path="name">Name</form:label><br/>
                    <form:input path="name"/>
                </p>
 
                <p>
                    <form:label path="fileData">File</form:label><br/>
                    <input id="fileData" name="fileData" type="file" value=""/>
                    
                </p>
 
                <p>
                    <input type="submit" />
                </p>
 
            </fieldset>
        </form:form>
    </body>
</html>
    </body>
</html>