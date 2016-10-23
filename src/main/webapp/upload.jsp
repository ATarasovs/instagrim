<%-- 
    Document   : upload
    Created on : Sep 22, 2014, 6:31:50 PM
    Author     : Aleksandrs Tarasovs
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="uk.ac.dundee.computing.aec.instagrim.stores.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Instagrim</title>
        <link rel="stylesheet" type="text/css" href="Styles.css" />
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
               <li class="instagrim">InstaGrim</li>
            </ul>
       </header>
               <div class="img">
        <article>
            <h2>Upload photos to your image gallery</h2>
            <form method="POST" enctype="multipart/form-data" action="Image">
                File to upload: <input type="file" name="upfile"><br/>

                <br/>
                <input type="submit" value="Press"> to upload the file!
            </form>

        </article>
               </div>
        <footer>
                
                &COPY; Aleksandrs Tarasovs
        </footer>
    </body>
</html>
