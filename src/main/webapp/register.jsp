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
                 <li><a href="/Instagrim/Register">Register</a></li>
                 <li><a href="/Instagrim/Login">Login</a></li>
                <li><a href="/Instagrim/Images/majed">Sample Images</a></li>
                
               
            </ul>
            
         
              
            
        </header>
        <h1>InstaGrim ! </h1>
        <h2>Your world in Black and White</h2>
       
        <article>
            <h3>Register as user</h3>
            
            <form method="POST"  action="Register">
                <div class="field">
                <label for="f">First name</label>
                <input type="text" name="first_name" id="f"><br>
                <label for="l">Last Name</label>
                <input type="text" name="last_name" id="l"><br>
                <label for="u">User Name</label>
                <input type="text" name="username" id="u"><br>
                <label for="e">Email</label>
                <input type="email" name="emailAddress" id="e"><br>
                <label for="p">Password</label>
                <input type="password" name="password" id="p"><br>
                <input type="submit" value="Register"> 
                
                </div>
                   
            </form>

        </article>
        <footer>
                &COPY; Andy C
        </footer>
    </body>
</html>
