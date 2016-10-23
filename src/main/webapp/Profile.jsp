<%-- 
    Document   : index
    Created on : Sep 28, 2014, 7:01:44 PM
    Author     : Aleksandrs Tarasovs
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
        <link rel="stylesheet" type="text/css" href="/Instagrim/Styles.css" />
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    </head>
    <body>
       <header>
            <% 
                LoggedIn lg = (LoggedIn) session.getAttribute("LoggedIn");
            %>
            <ul>
                <li class="footer"><a href="/Instagrim">Home</a></li>
                <%if (lg != null) {
                    String UserName = lg.getUsername();
                    if (lg.getlogedin()) { %>
                        <li><a href="/Instagrim/Profile/<%=lg.getUsername()%>">Profile</a></li>
                        <li><a href="/Instagrim/Images/<%=lg.getUsername()%>">Images</a></li> 
                        <li><a href="/Instagrim/upload.jsp">Upload</a></li>
                    <%} }else{ %>
                        <li><a href="/Instagrim/Register">Register</a></li>
                        <li><a href="/Instagrim/Login">Login</a></li>
                    <% }%>
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
            <% ProfilePage profilePage = (ProfilePage) request.getAttribute("ProfilePage");%>
            <h2>My profile</h2>
            <br>
            <table>
                <tr>
                    <td width = "300">
                    <%if (profilePage.getUserPicture() == null) {%>
                    <a href="http://simpleicon.com/wp-content/uploads/account.png">
                        <img height="200" width="200" src="http://simpleicon.com/wp-content/uploads/account.png">
                    </a>
                    
                    <%}
                    else { %>
                    <a href="/Instagrim/Image/<%=profilePage.getUserPicture()%>">
                        <img height="200" width="200" src="/Instagrim/Thumb/<%=profilePage.getUserPicture()%>">
                    </a>
                      <% } %>
                    </td>
                    <td>
                        <h3>Name: <%=profilePage.getFirstname() %></h3>
                        <h3>Surname: <%=profilePage.getLastname() %></h3>
                        <h3>Email: <%=profilePage.getEmail() %></h3>
                    </td>
                <tr>
            </table>

            <article>
            <h3>Upload profile picture</h3>
            <div class="field">
            <form method="POST" enctype="multipart/form-data" action="Profile">
                File to upload: <input type="file" name="upfile"><br/>
                <div class="press">
                <br/>
                <input type="submit" value="Press"> to upload the file!
                            </div>

            </form>

        </article>
             
           
                    
                    
               </div>      
            
        <footer>
            &COPY; Aleksandrs Tarasovs
                
        </footer>
    </body>
</html>