<%-- 
    Document   : registration1
    Created on : Jan 31, 2015, 11:54:02 AM
    Author     : Bhargav
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="d" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registration Form</title>
        <link rel="stylesheet" type="text/css" href="css/default.css"/>
        <script type='text/javascript' src='/keyasset/dwr/engine.js'></script>
        <script type='text/javascript' src='/keyasset/dwr/interface/EvaluationAjax.js'></script>
        <script type='text/javascript' src='/keyasset/dwr/util.js'></script>

        <script>
            var LoadCountry=function(data){
                dwr.util.removeAllOptions('Counrty');
                dwr.util.addOptions('Country',data,'c_id','c_name');
                //alert();
        }
            var loadstate=function(data)
            {
//                alert(data);
                dwr.util.removeAllOptions('state1');
                dwr.util.addOptions('state1',data,'s_id','s_name');
            }
            var loadcity=function(data)
            {
//                alert(data);
                dwr.util.removeAllOptions('city1');
                dwr.util.addOptions('city1',data,'city_id','city_name');
            }
        </script>
    </head>
    <body onload="EvaluationAjax.countryShow(LoadCountry)">
        <%@include file="header.jsp" %>
        <form method="post" action="RegistrationServlet" name="f1"  class="register">
            
            
            <table>
                <tr align="center"> 
                    <th colspan="2" style="color: #abda0f; font-size: 25px;">Registration</th>
                </tr>
                <tr><td>&nbsp;</td></tr>
                <tr><td>
                        <fieldset class="row1">
                            <legend>Personal Details</legend>
                            <table>
                                <tr>
                                    <td id="fnts">Name</td>
                                    <td><input type="text" name="name" id="t1txtbx" required="required"/></td>
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
                                    <td id="fnts">Country</td>
                                    <td>
                                        <select id="country" id="t3txtbx" name="country" onchange="EvaluationAjax.stateShow(this.value,loadstate)">
                                            <option value="-1">---Country---</option>
                                        </select>
                                    </td>
                                </tr>
                                <tr><td>&nbsp;</td></tr>
                                <tr>
                                    <td id="fnts">State</td>
                                    <td>
                                         <select id="state1" id="t3txtbx" name="state" onchange="EvaluationAjax.cityShow(this.value,loadcity)">
                                            <option value="-1">---State---</option>
                                        </select>
                                    </td>
                                </tr>
                                <tr><td>&nbsp;</td></tr>
                                
                                <tr>
                                    <td id="fnts">City</td>
                                    <td><select id="city1" id="t3txtbx" name="city">
                                            <option>---City---</option>
                                        </select>
                                    </td>
                                </tr>
                            </table>
                        </fieldset>
                    </td>
                    <td>
                        <fieldset class="row2">
                            <legend>Employee Details</legend>
                            <table>
                                <tr>
                                    <td id="fnts">Department</td>
                                    <td><select id="t3txtbx" name="department">
                                            <option value="">---Select---</option>
                                            <option value="1">Operational Staff </option>
                                            <option value="2">Purchase Staff </option>
                                            <option value="3">Vendor </option>
                                        </select></td>
                                </tr>
                                <tr><td>&nbsp;</td></tr>
                   
                                <tr>
                                    <td id="fnts">Designation</td>
                                    <td><input type="text" name="designation" id="t2txtbx" required="required"/></td>
                                </tr>
                                <tr><td>&nbsp;</td></tr>
                                <tr>
                                    <td id="fnts">Qualification</td>
                                    <td><input type="text" name="qualification" id="t2txtbx" required="required"/></td>
                                </tr>
                                <tr><td>&nbsp;</td></tr>
                                <tr>
                                    <td id="fnts">Date Of Joining</td>
                                    <td><input type="text" name="joining" id="t2txtbx" required="required"/></td>
                                </tr>
                                <tr><td>&nbsp;</td></tr>
                                <tr>
                                    <td id="fnts">Blood Group</td>
                                    <td><input type="text" name="blood_group" id="t2txtbx" required="required"/></td>
                                </tr>
                                <tr>
                                    <td id="fnts"></td>
                                    <td></td>
                                </tr>
                                <tr><td>&nbsp;</td></tr>
                                <tr>
                                    <td id="fnts"></td>
                                    <td></td>
                                </tr>
                                <tr><td>&nbsp;</td></tr>

                            </table>
                        </fieldset>
                    </td></tr>
                <tr><td>
                        <fieldset class="row3">
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
                                    <td id="fnts">Nationality</td>
                                    <td><select id="t3txtbx" name="nationality" >
                                            <option value="0">
                                            </option>
                                            <option value="1">Indian
                                            <option value="2">United States
                                            <option value="3">Austrian
                                            <option value="4">Canadian
                                            <option value="5">Chinese
                                            <option value="6">German
                                            <option value="7">Japanese
                                            <option value="8">Pakistani
                                            <option value="9">Russian
                                            <option value="10">African
                                            </option>
                                        </select></td>
                                </tr>
                            </table>
                        </fieldset>
                    </td>
                    <td>
                        <fieldset class="row4">
                            <legend>Account Details</legend>
                            <table>
                                <tr>
                                    <td id="fnts">Email</td>
                                    <td><input type="email" name="email" id="t4txtbx" required="required"/></td>
                                </tr>
                                <tr><td>&nbsp;</td></tr>
                                <tr>
                                    <td id="fnts">Password</td>
                                    <td><input type="password" name="password" id="t4txtbx" required="required"/></td>
                                </tr>
                                <tr><td>&nbsp;</td></tr>
                                <tr>
                                    <td id="fnts">Re-Enter Password</td>
                                    <td><input type="password" name="re_enter_password" id="t4txtbx" required="required"/></td>
                                </tr>
                                <tr><td>&nbsp;</td></tr>
                            </table>
                        </fieldset>
                    </td></tr></table>
            <div><button class="button" >Register &raquo;</button></div>

        </form>
           </body>
</html>
