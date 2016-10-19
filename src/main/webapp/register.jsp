<%-- 
    Document   : register.jsp
    Created on : Sep 28, 2014, 6:29:51 PM
    Author     : Administrator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Instagrim</title>
        <link rel="stylesheet" type="text/css" href="Styles.css" />
    </head>
    <body>
        <header>
            <ul>

                <li class="footer"><a href="/Instagrim">Home</a></li>
                 <li><a href="register.jsp">Register</a></li>
                <li><a href="login.jsp">Login</a></li>
                <li><a href="/Instagrim/Images/majed">Sample Images</a></li>
                
               
            </ul>
            
         
              
            
        </header>
        <h1>InstaGrim ! </h1>
        <h2>Your world in Black and White</h2>
       
        <article>
            <h3>Register as user</h3>
            <form method="POST"  action="Register">
                First Name <input type="text" name="first_name"><br>
                    Last Name <input type="text" name="last_name"><br>
                    User Name <input type="text" name="username"><br>
                    Email <input type="email" name="emailAddress"><br>
                    Password <input type="password" name="password"><br>
                    
                <br/>
                <input type="submit" value="Register"> 
            </form>

        </article>
        <footer>
                &COPY; Andy C
        </footer>
    </body>
</html>
