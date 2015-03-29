<%-- 
    Document   : PrinterInfo
    Created on : Mar 11, 2015, 8:31:23 PM
    Author     : home
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="d" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <title>Printer Information</title>
        <link rel="stylesheet" href="css/screen.css" type="text/css" media="screen" title="default" />

    </head>
    <body> 
        <%@include file="header.jsp" %>

        <div class="clear"></div>

        <div class="clear"></div>

        <div id="content-outer">
            <div id="content">


                <div id="page-heading">
                    <h1>Assets Details - Printer</h1>
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
                                        <d:if test="${pdataList==null}">
                                            <d:redirect url="${pageContext.request.contextPath}/PrinterInfoServlet"></d:redirect>
                                        </d:if>

                                        <table border="0" width="100%" cellpadding="0" cellspacing="0" id="product-table">

                                            <tr>
                                                <th class="table-header-check"><a id="toggle-all" ></a> </th>
                                                <th class="table-header-repeat line-left minwidth-1"><a href="">Model number</a>	</th>
                                                <th class="table-header-repeat line-left minwidth-1"><a href="">Brand</a></th>
                                                <th class="table-header-repeat line-left"><a href="">Price</a></th>
                                                <th class="table-header-repeat line-left"><a href="">Purchase_date</a></th>
                                                <th class="table-header-repeat line-left"><a href="">Vendor_name</a></th>
                                                <th class="table-header-options line-left"><a href="">Image</a></th>
                                            </tr>

                                            <d:forEach items="${pdataList}" var="printerdata">
                                                <tr>
                                                    <td><input  type="checkbox"/></td>
                                                    <td>${printerdata.model_number}</td>
                                                    <td>${printerdata.printer_brand}</td>
                                                    <td>${printerdata.printer_price}</td>
                                                    <td>${printerdata.purchase_date}</td>
                                                    <td>${printerdata.vendor_name}</td>
                                                    <td>${printerdata.printer_picture}</td>
                                                </tr>
                                            </d:forEach>


                                        </table>
                                        <!--  end product-table................................... --> 
                                    </form>
                                </div>
                                <!--  end content-table  -->

                                <!--  start actions-box ............................................... -->
                                <div id="actions-box">
                                    <a href="" class="action-slider"></a>
                                    <div id="actions-box-slider">
                                        <a href="" class="action-edit">Edit</a>
                                        <a href="" class="action-delete">Delete</a>
                                    </div>
                                    <div class="clear"></div>
                                </div>
                                <!-- end actions-box........... -->
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
