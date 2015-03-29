<%-- 
    Document   : registration
    Created on : Feb 20, 2015, 7:45:08 PM
    Author     : home
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registration Form</title>

        <script type='text/javascript' src='/Admin/dwr/engine.js'></script>
        <script type='text/javascript' src='/Admin/dwr/interface/EvaluationAjax.js'></script>
        <script type='text/javascript' src='/Admin/dwr/util.js'></script>
        <script type='text/javascript' src='../js/jquery-1.9.1.min.js'></script>
        <script type='text/javascript' src='../js/jquery.validate.js'></script>
        <script type="text/javascript">
            var LoadCountry = function(data) {
//                alert();
//                dwr.util.removeAllOptions('country');
                dwr.util.addOptions('country', data, 'countryId', 'countryName');

            }
            var loadstate = function(data)
            {
//                alert(data);
                dwr.util.removeAllOptions('state1');
                dwr.util.addOptions('state1', data, 'stateId', 'stateName');
            }
            var loadcity = function(data)
            {
//                alert(data);
                dwr.util.removeAllOptions('city1');
                dwr.util.addOptions('city1', data, 'cityId', 'cityName');
            }
            
            $(document).ready(function(){
                alert("hello");
                //RegValidation();
                
                $("#btnSubmit").click(function(){
                    alert("hello");
                    if($("#f1").valid()){
                        $("#f1").submit();
                    }else{
                        alert("invalid");
                    }
                });
            });
            
          
         
        </script>


    <body onload="EvaluationAjax.countryShow(LoadCountry)">
        <form action="${pageContext.request.contextPath}/RegistrationServlet" name="f1" method="post" id="f1">
        <%@include file="header.jsp" %>

        <div class="clear"></div>

        <div id="content-outer">

            <div id="content">
                <div id="page-heading"><h1>Registration Detail</h1></div>


                <table border="0" width="100%" cellpadding="0" cellspacing="0" id="content-table">
                    <tr>
                        <th rowspan="3" class="sized"><img src="images/shared/side_shadowleft.jpg" width="20" height="300" alt="" /></th>
                        <th class="topleft"></th>
                        <td id="tbl-border-top">&nbsp;</td>
                        <th class="topright"></th>
                        <th rowspan="3" class="sized"><img src="images/shared/side_shadowright.jpg" width="20" height="300" alt="" /></th>
                    </tr>
                    <tr>
                        <td id="tbl-border-left"></td>
                        <td>
                            <!--  start content-table-inner -->
                            <div id="content-table-inner">

                                <table border="0" width="100%" cellpadding="0" cellspacing="0">
                                    <tr valign="top">
                                        <td>


                                            <!--  start step-holder -->


                                            <table border="0" cellpadding="0" cellspacing="0"  id="id-form">
                                                <tr>
                                                    <th valign="top">Name *:</th>
                                                    <td><input type="text" name="name" class="inp-form" required="required" /></td>
                                                    <td></td>
                                                </tr>
                                                <tr>
                                                    <th valign="top">Contact *:</th>
                                                    <td><input type="text" name="contact" class="inp-form" maxlength="15" required="required" /></td>

                                                </tr>
                                                <tr>
                                                    <th valign="top">Street *:</th>
                                                    <td>	
                                                        <input type="text" name="street" class="inp-form" required="required"/>
                                                    </td>
                                                    <td></td>
                                                </tr>
                                                <tr>
                                                    <th valign="top">Country *:</th>
                                                    <td>	
                                                        <select id="country" name="country" onchange="EvaluationAjax.stateShow(this.value, loadstate)">
                                                            <option value="-1">---Country---</option>
                                                        </select>
                                                    </td>
                                                    <td></td>
                                                </tr>
                                                <tr>
                                                    <th valign="top">State *:</th>
                                                    <td>	
                                                        <select id="state1"  name="state" onchange="EvaluationAjax.cityShow(this.value, loadcity)">
                                                            <option value="-1">---State---</option>
                                                        </select>
                                                    </td>
                                                    <td></td>
                                                </tr>
                                                <tr>
                                                    <th valign="top">City *:</th>
                                                    <td>	
                                                        <select id="city1" id="t1txtbx" name="city">
                                                            <option>---City---</option>
                                                        </select>
                                                    </td>
                                                    <td></td>
                                                </tr>
                                                <tr>
                                                    <th valign="top">Department *:</th>
                                                    <td>	
                                                        <select  class="styledselect_form_1" name="department" required="required">
                                                            <option value="">---Select Department---</option>
                                                            <option value="1">Operational Staff</option>
                                                            <option value="2">Purchase Staff</option>
                                                            <option value="3">Vendor</option>

                                                        </select>
                                                    </td>
                                                    <td></td>
                                                </tr> 
                                                <tr>
                                                    <th valign="top">Designation *:</th>
                                                    <td><input type="text" class="inp-form" name="designation" required="required"/></td>
                                                    <td></td>
                                                </tr>
                                                <tr>
                                                    <th valign="top">Qualification *:</th>
                                                    <td><input type="text" class="inp-form" name="qualification" required="required"/></td>
                                                    <td></td>
                                                </tr>
                                                <tr>
                                                    <th valign="top">Date of joining *:</th>
                                                    <td><input type="Date" class="inp-form" name="joining" required="required"/></td>

                                                    <td></td>
                                                </tr>
                                                <tr>
                                                    <th valign="top">Blood Group *:</th>
                                                    <td><input type="text" class="inp-form" name="blood_group" required="required"/></td>

                                                    <td></td>
                                                </tr>
                                                <tr>
                                                    <th valign="top">Gender *:</th>
                                                    <td><input type="radio"  name="gender" value="Male" />Male<br>
                                                        <input type="radio" name="gender" value="Female" />Female</td>

                                                    <td></td>
                                                </tr>
                                                <tr>
                                                    <th valign="top">Birth date *:</th>
                                                    <td><input type="Date" class="inp-form" name="birthdate" required="required"/></td>

                                                    <td></td>
                                                </tr>
                                                <tr>
                                                    <th valign="top">Nationality:</th>
                                                    <td>	
                                                        <select  class="styledselect_form_1" name="nationality">
                                                            <option value="">---Select Nation---</option>
                                                            <option value="1">Indian</option>
                                                            <option value="2">United States</option>
                                                            <option value="3">Canadian</option>
                                                            <option value="4">Australian</option>
                                                            <option value="5">Chinese</option>
                                                            <option value="6">Japanese</option>
                                                            <option value="7">German</option>

                                                        </select>
                                                    </td>
                                                    <td></td>
                                                </tr>
                                                <tr>
                                                    <th valign="top">Email *:</th>
                                                    <td><input type="text" class="inp-form" name="email" required="required" id="email"/></td>

                                                    <td></td>
                                                </tr>
                                                <tr>
                                                    <th valign="top">Password *:</th>
                                                    <td><input type="password" class="inp-form" name="password" required="required"/></td>

                                                    <td></td>
                                                </tr>
                                                <tr>
                                                    <th valign="top">Re-enter Password *:</th>
                                                    <td><input type="password" class="inp-form" name="re_enter_password" required="required"/></td>

                                                    <td></td>
                                                </tr>

                                                <tr>
                                                    <th>&nbsp;</th>
                                                    <td valign="top">
                                                        <input type="button" value="" class="form-submit" id="btnSubmit"/>
                                                        <input type="reset" value="" class="form-reset"  />
                                                    </td>
                                                    <td></td>
                                                </tr>
                                            </table>


                                        </td>
                                        <td>
                                            <div class="clear"></div>

                                            <div class="clear"></div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td><img src="images/shared/blank.gif" width="695" height="1" alt="blank" /></td>
                                        <td></td>
                                    </tr>
                                </table>

                                <div class="clear"></div>


                            </div>

                        </td>
                        <td id="tbl-border-right"></td>
                    </tr>
                    <tr>
                        <th class="sized bottomleft"></th>
                        <td id="tbl-border-bottom">&nbsp;</td>
                        <th class="sized bottomright"></th>
                    </tr>
                </table>

                <div class="clear">&nbsp;</div>

            </div>

            <div class="clear">&nbsp;</div>
        </div>

        <div class="clear">&nbsp;</div>        

        <%@include file="footer.jsp" %>
        </form>
    </body>
</html>
