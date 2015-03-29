<%-- 
    Document   : disp
    Created on : 29 Jan, 2015, 4:10:46 PM
    Author     : Acer
--%>

<%@page import="bean.insertBean"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form>
            <table border="1" align="center">
                <% List<insertBean> userlist = (List<insertBean>) request.getAttribute("user");

                    if (userlist == null) {
                        RequestDispatcher rd = request.getRequestDispatcher("vendordispservlet");
                        rd.forward(request, response);
                    }
                %>

                <tr>
                    <td>Id</td>
                    <td>Name</td>
                    <td>City</td>
                </tr>

                <% for (int i = 0; i < userlist.size(); i++) { 
                    insertBean ibean=userlist.get(i);
                %>
                
                <tr>
                    <td><%= ibean.getId()%></td>
                    <td><%= ibean.getName()%></td>
                    <td><%= ibean.getCity() %></td>
                </tr>
                
                <%}%>
            </table>
        </form>
    </body>
</html>
