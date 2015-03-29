<%-- 
    Document   : Asset
    Created on : Feb 18, 2015, 1:10:46 PM
    Author     : home
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Asset Information</title>
        <link rel="stylesheet" type="text/css" href="css/default1.css"/>

    </head>
    <body>
        <%@include file="header.jsp" %>
        <form method="post" action="" name="f1"  class="register">

            <table align="center">
                <tr> 
                    <th colspan="2" style="color: #abda0f; font-size: 25px; padding-left: 230px; ">Assets Information</th>
                </tr>
                <tr><td>&nbsp;</td></tr>
                <tr><td>
                        <fieldset class="row1">
                           
                            <table>
                                <tr>
                                    <td id="fnts">Asset Name</td>
                                    <td><input type="text" name="firstname" id="t1txtbx" required="required"/></td>
                                </tr>
                                <tr><td>&nbsp;</td></tr>
                                <tr>
                                    <td id="fnts">Asset Brand</td>
                                    <td><input type="text" name="lastname" id="t1txtbx" required="required"/></td>
                                </tr>
                                <tr><td>&nbsp;</td></tr>
                                
                                <tr>
                                    <td id="fnts">Asset Type</td>
                                    <td><input type="text" name="contact" id="t1txtbx" required="required"/></td>
                                </tr>
                                <tr><td>&nbsp;</td></tr>
                                
                                <tr>
                                    <td id="fnts">Asset Color</td>
                                    <td><input type="text" name="city" id="t1txtbx" required="required"/></td>
                                </tr>
                                <tr><td>&nbsp;</td></tr>
                                <tr>
                                    <td id="fnts">Asset Size</td>
                                    <td><input type="text" name="state" id="t1txtbx" required="required"/></td>
                                </tr>
                                <tr><td>&nbsp;</td></tr>
                                <tr>
                                    <td id="fnts">Country</td>
                                    <td>
                                        <select id="t1txtbx" name="country">
                                            <option></option>
                                            <option value="India">India
                                            <option value="u.s.">United States
                                            <option value="3">Australia
                                            <option value="4">Canada
                                            <option value="5">China
                                            <option value="6">German
                                            <option value="7">Japan
                                            <option value="8">Pakistan
                                            <option value="9">Russia
                                            <option value="10">Africa
                                            </option>
                                        </select>
                                    </td>
                                </tr>
                            </table>
                        </fieldset>
                    </td>
                   </tr>
                            </table>
                        </fieldset>
                    </td>
                    </tr></table>
            <div><input type="submit" class="button" value="Register" ></div>

        </form>

        
        
    </body>
</html>
