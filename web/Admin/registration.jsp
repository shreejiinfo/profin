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
        <link rel="stylesheet" href="${pageContext.request.contextPath}/Admin/css/default.css">
        <script type='text/javascript' src='/Admin/dwr/engine.js'></script>
        <script type='text/javascript' src='/Admin/dwr/interface/EvaluationAjax.js'></script>
        <script type='text/javascript' src='/Admin/dwr/util.js'></script>
        
        <script>
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
        </script>   


   <body onload="EvaluationAjax.countryShow(LoadCountry)">
       
        <%@include file="header.jsp" %>

        <div class="clear"></div>

        <div id="content-outer">

            <div id="content">     
                <form action="${pageContext.request.contextPath}/RegistrationServlet" name="f1" method="post" id="f1">
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
                                                    <td><input type="text" name="contact" class="inp-form" maxlength="15" required="required"/></td>

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
                                                    <th valign="top">Street *:</th>
                                                    <td>	
                                                        <input type="text" name="street" class="inp-form" required="required"/>
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
                                                    <td><input type="text" name="joining" id="joining" class="inp-form" required="required"/></td>

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
                                                    <td><input type="text" name="birthdate" id="birthdate" required="required" class="inp-form"/></td>

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
                                                    <td><input type="password" class="inp-form" name="password" required="required" id="password"/></td>

                                                    <td></td>
                                                </tr>
                                                <tr>
                                                    <th valign="top">Re-enter Password *:</th>
                                                    <td><input type="password" class="inp-form" name="re_enter_password" required="required" id ="re_enter_password"/></td>
                                                    <td></td>
                                                </tr>

                                                <tr>
                                                    <th>&nbsp;</th>
                                                    <td valign="top">
                                                        <input type="button" value="submit" id="btnsub" class="form-submit"/>
                                                        <input type="reset" value="" class="form-reset"/>
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
</form>
               
                <div class="clear">&nbsp;</div>

            </div>

            <div class="clear">&nbsp;</div>
        </div>

        <div class="clear">&nbsp;</div>        

        <%@include file="footer.jsp" %>
        
         
        <script type="text/javascript" src='${pageContext.request.contextPath}/js/jquery-1.11.1.js'></script>
        <script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery.validate.js"></script>
        <script type="text/javascript" src="${pageContext.request.contextPath}/js/zebra_datepicker.js"></script>
       
        <script type="text/javascript">
                
            $(document).ready(function(){
                
                $( "#joining" ).Zebra_DatePicker({
                    direction: 0   
                });
                
                 $( "#birthdate" ).Zebra_DatePicker({
                    direction: 0 
                 });
                
                
                $("#btnsub").click(function(){
                    if($("#f1").valid()){
                          if($("#joining").val() !== null && $("#joining").val() !==""){
                              if($("#birthdate").val() !== null && $("#birthdate").val() !==""){
                                $("#f1").submit();
                            }else{
                                alert("please provide birthdate date");        
                            }
                        }else{
                            alert("please provide joining date");        
                        }
                    }
                    //alert($("#f1").valid());
                });
            });
            
            $.validator.addMethod("pwcheck", function(value) {
   return /^[A-Za-z0-9\d=!\-@._*]*$/.test(value) // consists of only these
       && /\d/.test(value) // has a digit
       
//       return /^(?=.*\d)(?=.*[a-z])(?=.*[A-Z])[0-9a-zA-Z]{8,}$/.test(value);
});


    $.validator.addMethod("pwcheckallowedchars", function (value) {
        return /^[a-zA-Z0-9!@#$%^&*()_=\[\]{};':"\\|,.<>\/?+-]+$/.test(value) // has only allowed chars letter
    }, "The password contains non-admitted characters");
    
    $.validator.addMethod("pwcheckspechars", function (value) {
        return /[!@#$%^&*()_=\[\]{};':"\\|,.<>\/?+-]/.test(value)
    }, "The password must contain at least one special character");
    
	$.validator.addMethod("pwcheckconsecchars", function (value) {
        return ! (/(.)\1\1/.test(value)) // does not contain 3 consecutive identical chars
    }, "The password must not contain 3 consecutive identical characters");

    $.validator.addMethod("pwchecklowercase", function (value) {
        return /[a-z]/.test(value) // has a lowercase letter
    }, "The password must contain at least one lowercase letter");
    
    $.validator.addMethod("pwcheckrepeatnum", function (value) {
        return /\d{2}/.test(value) // has a lowercase letter
    }, "The password must contain at least one lowercase letter");
    
    $.validator.addMethod("pwcheckuppercase", function (value) {
        return /[A-Z]/.test(value) // has an uppercase letter
    }, "The password must contain at least one uppercase letter");
    
    $.validator.addMethod("pwchecknumber", function (value) {
        return /\d/.test(value) // has a digit
    }, "The password must contain at least one number");

    $.validator.addMethod("usernamecheckcharcter", function (value) {
        return /^\d*[a-zA-Z][a-zA-Z0-9]*/.test(value) // has a digit
    }, "The field must contain at least one character");


            
              $("#f1").validate({
					errorClass:"errors",
					rules: {
                                              name:{
                                                  required:true,
                                                  usernamecheckcharcter:true
                                              },
                                              contact:{
                                                  required:true,
                                                  digits:true
                                              },
                                              birthdate:{
                                                required:true  
                                              },
						email: {
							required: true,
							email: true,
							minlength: 2
						},
						password: {
							required: true,
                                                        pwchecknumber: true,
                                                        pwcheckspechars: true,
                                                        pwcheckallowedchars: true,
							minlength: 5
						},
						re_enter_password: {
							required: true,
							minlength: 5,
							equalTo: "#password"
						}
					}
               });
            </script>
    </body>
</html>
