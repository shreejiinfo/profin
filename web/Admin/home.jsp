<%-- 
    Document   : home
    Created on : 20 Feb, 2015, 2:48:15 PM
    Author     : VIKAS
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="d" %>
<d:if test="${id==null}">
    <d:redirect url="index.jsp"></d:redirect> 
</d:if>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Home Page</title>
<<<<<<< HEAD
        <link rel="stylesheet" href="${pageContext.request.contextPath}/css/screen.css" type="text/css" media="screen" title="default" />
<script>
    function log(){
        f1.action="LogoutServlet";
        f1.submit();
        
    }
</script>
=======
        <link rel="stylesheet" href="css/screen.css" type="text/css" media="screen" title="default" />
      
>>>>>>> cf0a7f4e1074a151048f6d808417179c59593e64
    </head>
    <body> 
        <%@include file="header.jsp" %>
        
 <% int id=Integer.parseInt(session.getAttribute("id").toString());
        %>
        <div class="clear"></div>

        <div class="clear"></div>

        <div id="content-outer">
            <div id="content">


                <div id="page-heading">
                    <h1>Welcome Admin....!!!</h1>
                </div>               
                <table border="0" width="100%" cellpadding="0" cellspacing="0" id="content-table">
                    <tr>
                        <th rowspan="3" class="sized"><img src="${pageContext.request.contextPath}/Admin/images/shared/side_shadowleft.jpg" width="20" height="300" alt="" /></th>
                        <th class="topleft"></th>
                        <td id="tbl-border-top">&nbsp;</td>
                        <th class="topright"></th>
                        <th rowspan="3" class="sized"><img src="${pageContext.request.contextPath}/Admin/images/shared/side_shadowright.jpg" width="20" height="300" alt="" /></th>
                    </tr>
                    <tr>
                        <td id="tbl-border-left"></td>
                        <td>
                            <!--  start content-table-inner ...................................................................... START -->
                            <div id="content-table-inner">

                                <!--  start table-content  -->
                                <div id="table-content">

                                </div>
                                <!--  end content-table  -->

                                <div class="clear"></div>

                            </div>
                            <!--  end content-table-inner ............................................END  -->
                        </td>
                        <td id="tbl-border-right"></td>
                    </tr>
                    <tr>
                        <th class="sized bottomleft"></th>
                        <td id="tbl-border-bottom">&nbsp;</td>
                        <th class="sized bottomright"></th>
                    </tr>
                </table>
                <%@include file="footer.jsp" %>
                </body>
                </html>
