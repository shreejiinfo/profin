<%-- 
    Document   : vendor
    Created on : 24 Feb, 2015, 9:48:20 PM
    Author     : Acer
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>


<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Vendor form</title>
    </head>
    <body <%@include file="header.jsp" %>
        <form method="post" action="RegistrationServlet" name="f1"  class="register">
             
           
         <table
                <tr align="center"> 
                    <th colspan="2" style="color: #abda0f; font-size: 25px;">Vendor</th>
                </tr>
                <tr><td>&nbsp;</td></tr>
                <tr><td>
                        
                            <table>
                                <tr>
                                    <td id="fnts">Vendor Name</td>
                                    <td><input type="text" name="name" id="t1txtbx" required="required"/></td>
                                </tr>
                                 <tr><td>&nbsp;</td></tr>
                                 <tr>
                                    <td id="fnts">Company Name</td>
                                    <td><input type="text" name="name" id="t1txtbx" required="required"/></td>
                                </tr>
                                 <tr><td>&nbsp;</td></tr>
                                   <tr>
                                    <td id="fnts">Address</td>
                                    <td><input type="text" name="address" id="t1txtbx" required="required"/></td>
                                </tr>
                                 
                                <tr><td>&nbsp;</td></tr>
                                <tr>
                                    <td id="fnts">Contact</td>
                                    <td><input type="text" name="contact" id="t1txtbx" required="required"/></td>
                                </tr>
                                <tr><td>&nbsp;</td></tr>
                                <tr>
                                    <td id="fnts">Street</td>
                                    <td><input type="text" name="street" id="t1txtbx" required="required"/></td>
                                </tr>
                                <tr><td>&nbsp;</td></tr>
                                <tr>
                                    <td id="fnts">City</td>
                                    <td><select id="t1txtbx" name="city">
                                            <option>---Select---</option>
                                            <d:forEach items="${citydataList}" var="citydata">
                                                <option value="${citydata.city_id}">${citydata.city_name}</option>
                                            </d:forEach>
                                        </select>
                                    </td>
                                </tr>
                                <tr><td>&nbsp;</td></tr>
                                <tr>
                                    <td id="fnts">State</td>
                                    <td>
                                         <select id="t1txtbx" name="state">
                                            <option>---Select---</option>
                                            <d:forEach items="${sdataList}" var="sdata">
                                                <option value="${sdata.s_id}">${sdata.s_name}</option>
                                            </d:forEach>
                                        </select>
                                    </td>
                                </tr>
                                <tr><td>&nbsp;</td></tr>
                                <tr>
                                    <td id="fnts">Country</td>
                                    <td>
                                        <select id="t1txtbx" name="country">
                                            <option>---Select---</option>
                                            <d:forEach items="${cdataList}" var="cdata">
                                                <option value="${cdata.c_id}">${cdata.c_name}</option>
                                            </d:forEach>
                                        </select>
                                    </td>
                                </tr>
                                <tr><td>&nbsp;</td></tr>
                                  <tr>
                                    <td id="fnts">Pin code</td>
                                    <td><input type="text" name="pin code" id="t1txtbx" required="required"/></td>
                                </tr>
                                <tr><td>&nbsp;</td></tr>
                                <tr>
                                    <td id="fnts">Date</td>
                                    <td><input type="text" name="Date" id="t1txtbx" required="required"/></td>
                                </tr>
                                 <tr><td>&nbsp;</td></tr>
                                 <tr>
                                    <td id="fnts">Email</td>
                                    <td><input type="email" name="email" id="t4txtbx" required="required"/></td>
                                </tr>
                               
                                <tr><td>&nbsp;</td></tr>
                                <tr>
                                    <td id="fnts">Type of business</td>
                                    <td><input type="text" name="pin code" id="t1txtbx" required="required"/></td>
                                </tr>
                                <tr><td>&nbsp;</td></tr>
                                <tr>
                                    <td id="fnts">Web site</td>
                                    <td><input type="text" name="website" id="t1txtbx" required="required"/></td>
                                </tr>
                               
                                
                            </table>
                        
                    </td>
                               
                               
                          
                    </td></tr></table>
            <div><button class="button" >Register &raquo;</button></div>

        </form>
           </body>
</html>

        
       
  

