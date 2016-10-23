<%-- 
    Document   : register.jsp
    Created on : Sep 28, 2014, 6:29:51 PM
    Author     : Aleksandrs Tarasovs
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
                <li><a href="/Instagrim/Profiles">Profile pages</a></li>
                
                <li class="instagrim">InstaGrim</li>
            </ul>
            
         
              
            
        </header>

       <div class="center">
        <article>
            <h3>Register as user</h3>
            
            <form method="POST"  action="Register">
                <div class="field">
                <label for="f">First name</label>
                <input type="text" name="first_name" id="f" required><br>
                <label for="l">Last Name</label>
                <input type="text" name="last_name" id="l" required><br>
                <label for="u">User Name</label>
                <input type="text" name="username" id="u" required><br>
                <label for="e">Email</label>
                <input type="email" name="emailAddress" id="e" required><br>
                <label for="p">Password</label>
                <input type="password" name="password" id="p" required=""><br>
                <input type="submit" value="Register"> 
                
                </div>
                   
            </form>

        </article>
       </div>
        <footer>
                &COPY; Aleksandrs Tarasovs
        </footer>
    </body>
</html>
