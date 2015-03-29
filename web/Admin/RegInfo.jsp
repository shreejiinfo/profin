<%-- 
    Document   : RegInfo
    Created on : Mar 15, 2015, 10:12:33 AM
    Author     : Bhargav
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="d" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="css/screen.css" type="text/css" media="screen" title="default" />
    </head>
    <body>
        <%@include file="header.jsp" %>

        <div class="clear"></div>

        <div class="clear"></div>

        <div id="content-outer">
            <div id="content">


                <div id="page-heading">
                    <h1>User Detail</h1>
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
                                    <form id="mainform" name="" method="post" action="">

                                        <d:if test="${rdataList==null}">
                                            <d:redirect url="RegistrationInfoServlet"></d:redirect>
                                        </d:if>

                                        <table border="0" width="100%" cellpadding="0" cellspacing="0" id="product-table">

                                            <tr>
                                                <th class="table-header-check"><a id="toggle-all" ></a> </th>
                                                <th class="table-header-repeat line-left minwidth-1"><a href="">Name</a>	</th>
                                                <th class="table-header-repeat line-left minwidth-1"><a href="">Contact</a></th>
                                                <th class="table-header-repeat line-left"><a href="">Department</a></th>
                                                <th class="table-header-repeat line-left"><a href="">Date Of Joining</a></th>
                                                <th class="table-header-repeat line-left"><a href="">Email</a></th>
                                                <th class="table-header-options line-left"><a href="">Password</a></th>
                                               
                                            </tr>

                                            <d:forEach items="${rdataList}" var="registrationinfodata">
                                                <tr>
                                                    <td><input  type="checkbox"/></td>
                                                    <td>${registrationinfodata.reg_name}</td>
                                                    <td>${registrationinfodata.reg_contact}</td>
                                                    <td>${registrationinfodata.department}</a></td>
                                                    <td>${registrationinfodata.reg_date_of_joining}</td>
                                                    <td>${registrationinfodata.reg_email}</td>
                                                    <td>${registrationinfodata.reg_password}</td>

                                                </tr>
                                            </d:forEach>

                                        </table>
                                        <!--  end product-table................................... --> 
                                    </form>
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
