<%-- 
    Document   : index
    Created on : Sep 28, 2014, 7:01:44 PM
    Author     : Administrator
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="uk.ac.dundee.computing.aec.instagrim.stores.*" %>
<!DOCTYPE html>
<html>
    <head>
        <style>
            form {text-align:right;}
        </style>
        <title>Instagrim</title>
        <link rel="stylesheet" type="text/css" href="Styles.css" />
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    </head>
    <body>
        <header>
            <% 
                LoggedIn lg = (LoggedIn) session.getAttribute("LoggedIn");
            %>
            <ul>

                <li class="footer"><a href="/Instagrim">Home</a></li>
                    <%
                        
                        
                        if (lg != null) {
                            String UserName = lg.getUsername();
                            if (lg.getlogedin()) {
                    %>
                <li><a href="/Instagrim/Profile/<%=lg.getUsername()%>">Profile</a></li>
                <li><a href="/Instagrim/Images/<%=lg.getUsername()%>">Images</a></li> 
                <li><a href="upload.jsp">Upload</a></li>
                <%}
                            }else{
                                %>
                 <li><a href="/Instagrim/Register">Register</a></li>
                 <li><a href="/Instagrim/Login">Login</a></li>
                 
                
                <%
                                        
                            
                    }%>
               
               <li><a href="/Instagrim/Images/majed">Sample Images</a></li>
               <li><a href="/Instagrim/Profiles">Profile pages</a></li>
               <%if (lg != null) {
                   if (lg.getlogedin()) {
                    %> 
               <li> <a href="/Instagrim/Logout">Logout</a></li>
               <%
                   }
               }
               %>
            </ul>
            
         
              
            
        </header>
        
             <h1>InstaGrim ! </h1>
            <h2>Your world in Black and White</h2>
        <footer>

                &COPY; Andy C
                <%if (lg != null) {
                    String UserName = lg.getUsername();
                    if (lg.getlogedin()) {
                %>
                <%-- <form class = "logout" method="POST"  action="Logout">
                <input type="submit" value="Logout"> 
            </form> --%>
                <%} } %>
        </footer>
    </body>
</html>
