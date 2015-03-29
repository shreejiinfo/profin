<%-- 
    Document   : cust_registration
    Created on : Feb 15, 2015, 10:39:02 PM
    Author     : home
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="d"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registration Form</title>
        <link rel="stylesheet" type="text/css" href="css/default1.css"/>
    </head>
    <body>
        
        <%@include file="header.jsp" %>
        <form method="post" action="Cust_registrationServlet" name="f1"  class="register">
            <d:if test="${cdataList==null && sdataList==null && citydataList==null}">
                <d:redirect url="LoadDataServlet"></d:redirect>
            </d:if>

            <table align="center">
                <tr> 
                    <th colspan="2" style="color: #abda0f; font-size: 25px; padding-left: 230px; ">Registration</th>
                </tr>
                <tr><td>&nbsp;</td></tr>
                <tr><td>
                        <fieldset class="row1">
                            <legend>Personal Details</legend>
                            <table>
                                <tr>
                                    <td id="fnts">First Name</td>
                                    <td><input type="text" name="firstname" id="t1txtbx" required="required"/></td>
                                </tr>
                                <tr><td>&nbsp;</td></tr>
                                <tr>
                                    <td id="fnts">Last Name</td>
                                    <td><input type="text" name="lastname" id="t1txtbx" required="required"/></td>
                                </tr>
                                <tr><td>&nbsp;</td></tr>
                                
                                <tr>
                                    <td id="fnts">Contact</td>
                                    <td><input type="text" name="contact" id="t1txtbx" required="required"/></td>
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
                                    <td><select id="t1txtbx" name="state">
                                            <option>---Select---</option>
                                            <d:forEach items="${sdataList}" var="sdata">
                                                <option value="${sdata.s_id}">${sdata.s_name}</option>
                                            </d:forEach>
                                        </select></td>
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
                            </table>
                        </fieldset>
                    </td>
                   </tr>
                <tr><td>
                        <fieldset class="row2">
                            <legend>Further Information</legend>

                            <table>
                                <tr>
                                    <td id="fnts">Gender</td>
                                    <td><input type="radio" name="gender" value="Male" style="margin: 0px 0px 0px 42px" required="required"/>Male<br>
                                        <input type="radio" name="gender" value="Female" style="margin: 0px 0px 0px 42px" required="required"/>Female
                                    </td>
                                </tr>
                                <tr><td>&nbsp;</td></tr>
                                <tr>
                                    <td id="fnts">Birth Date</td>
                                    <td><input type="date" name="birthdate" id="t3txtbx" required="required" placeholder="1/11/1111"/></td>
                                </tr>
                                <tr><td>&nbsp;</td></tr>
                                
                                <tr>
                                    <td id="fnts">Email</td>
                                    <td><input type="email" name="email" id="t3txtbx" required="required" /></td>
                                </tr>
                                <tr><td>&nbsp;</td></tr>
                                <tr>
                                    <td id="fnts">Re-enter Email</td>
                                    <td><input type="email" name="re_enter_email" id="t3txtbx" required="required" /></td>
                                </tr>
                                <tr><td>&nbsp;</td></tr>
                                <tr>
                                    <td id="fnts">Password</td>
                                    <td><input type="password" name="password" id="t3txtbx" required="required" /></td>
                                </tr>
                                <tr><td>&nbsp;</td></tr>
                                <tr>
                                    <td id="fnts">Re-enter Password</td>
                                    <td><input type="password" name="re_enter_password" id="t3txtbx" required="required" /></td>
                                </tr>
                                <tr><td>&nbsp;</td></tr>
                            </table>
                        </fieldset>
                    </td>
                    </tr></table>
            <div><input type="submit" class="button" value="Register" ></div>

        </form>

        
    </body>
</html>
