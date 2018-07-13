<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<html>
    <head>
        <title>TODO supply a title</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
    </head>
    <body>
        <!--h1>Entry Form</h1-->
        <div></div>
        <form name="Name Input Form" action="response.jsp">
            Search Item:<input type="text" name="name" value="" size="30" />
            <input type="submit" value="OK" name="OK" /></form>
    
    <jsp:useBean id="mybean" scope="session" class="org.mypackage.hello2.NameHandler" />
    <jsp:setProperty name="mybean" property="name" />
    <h1>Hello, <jsp:getProperty name="mybean" property="name" />!</h1>
    
    </body>
</html>
