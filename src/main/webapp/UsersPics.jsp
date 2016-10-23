<%-- 
    Document   : UsersPics
    Created on : Sep 24, 2014, 2:52:48 PM
    Author     : Aleksandrs Tarasovs
--%>

<%@page import="java.util.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="uk.ac.dundee.computing.aec.instagrim.stores.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Instagrim</title>
        <link rel="stylesheet" type="text/css" href="/Instagrim/Styles.css" />
    </head>
    <body>
        
        <header>
            
            <ul>

                <li class="footer"><a href="/Instagrim">Home</a></li>
                
                <% 
                LoggedIn lg = (LoggedIn) session.getAttribute("LoggedIn");
            %>
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
        <div class="demo">
        
       
        <div class="img">
        <article>
            <h1>Your Pics</h1>
            
            
        <%
            java.util.LinkedList<Pic> lsPics = (java.util.LinkedList<Pic>) request.getAttribute("Pics");
            if (lsPics == null) {
        %>
        <p>No Pictures found</p>
        <%
        } else {
            Iterator<Pic> iterator;
            iterator = lsPics.iterator();
            while (iterator.hasNext()) {
                Pic p = (Pic) iterator.next();

        %>
        
        <a href="/Instagrim/Image/<%=p.getSUUID()%>" ><img height="200" width="200" src="/Instagrim/Thumb/<%=p.getSUUID()%>"></a><%


   
                


            }
            }
        %>
       
        </article>
        </div>
        </div>
        <footer>
            &COPY; Aleksandrs Tarasovs
        </footer>
    </body>
</html>
