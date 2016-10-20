<%-- 
    Document   : login.jsp
    Created on : Sep 28, 2014, 12:04:14 PM
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
        
        <nav>
            <ul>
                <li class="footer"><a href="/Instagrim">Home</a></li>
                 <li><a href="/Instagrim/Register">Register</a></li>
                 <li><a href="/Instagrim/Login">Login</a></li>
                <li><a href="/Instagrim/Images/majed">Sample Images</a></li>
            </ul>
        </nav>
        <header>
        <h1>InstaGrim ! </h1>
        <h2>Your world in Black and White</h2>
        </header>
       
        <article>
            <h3>Login</h3>
            <form method="POST"  action="Login">
                <div class="field">
                <label for="u">User Name</label>
                <input type="text" name="username"> <br>
                <label for="p">Password</label>
                <input type="password" name="password"><br>
                <input type="submit" value="Login"> 
                </div>
                
            </form>

        </article>
        <footer>
        </footer>
    </body>
</html>
