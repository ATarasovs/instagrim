<%-- 
    Document   : Profiles
    Created on : Oct 20, 2016, 4:01:19 PM
    Author     : Aleksandr
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.LinkedList"%>
<%@page import="uk.ac.dundee.computing.aec.instagrim.stores.*" %>
<!DOCTYPE html>
<html>
    <head>
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
                <li><li><a href="/Instagrim/upload.jsp">Upload</a></li>
                <%}
                            }else{
                                %>
                 <li><a href="/Instagrim/Register">Register</a></li>
                 <li><a href="/Instagrim/Login">Login</a></li>
                <%
                                        
                            
                    }%>
                <li><a href="/Instagrim/Images/majed">Sample Images</a></li>
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
       <div class="demo">
       
       <%
           LinkedList<ProfilePage> profilePages = (LinkedList<ProfilePage>) request.getAttribute("ProfilePages");
           if (profilePages == null) { %>
                <p>Null</p>
           <%}
           else{
                Iterator<ProfilePage> iterator;
                iterator = profilePages.iterator();%>
                
                <table>
                    <%while (iterator.hasNext()){
                    ProfilePage profilePage = (ProfilePage) iterator.next();
                    %>
                    <tr>
                        <td width = "200">
                        <a href="/Instagrim/Images/<%=profilePage.getUsername()%>">
                        <img height="130" width="130" src="http://simpleicon.com/wp-content/uploads/account.png">
                        </a>
                        </td>
                        <td>
                            
                                <td>
                        <h3><%=profilePage.getUsername() %></h3>
                        Name: <%=profilePage.getFirstname() %><br>
                        Surname: <%=profilePage.getLastname() %>
                        
                    </td>
                            </tr>
                    <%}%>
                    
                </table>
           <%}%>
       </div>
           <footer>
          &COPY; Andy C
                <%if (lg != null) {
                    String UserName = lg.getUsername();
                    if (lg.getlogedin()) {
                %>
                <form class = "logout" method="POST"  action="Logout">
                <input type="submit" value="Logout"> 
            </form> 
                <%} } %>
        </footer>
    </body>
</html>
