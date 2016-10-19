<%-- 
    Document   : Profile
    Created on : Oct 18, 2016, 10:34:10 PM
    Author     : Aleksandr
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="uk.ac.dundee.computing.aec.instagrim.stores.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <% ProfilePage profilePage = (ProfilePage) request.getAttribute("ProfilePage");
           LoggedIn lg = (LoggedIn) session.getAttribute("LoggedIn"); %>
        <h1>Hello World!</h1>
        <% if (profilePage == null){ %>
                <h2>User profile not found</h2>
            <% }
            else { %>
                <h2><%=profilePage.getUsername() %>'s Profile</h2>
                <% } %>
    </body>
</html>
