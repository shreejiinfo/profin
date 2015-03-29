<%-- 
    Document   : vendorassessment
    Created on : 24 Feb, 2015, 9:49:14 PM
    Author     : Acer
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Vendor form</title>
    </head>
    <body> <%@include file="header.jsp" %>
        <form method="post" action="vendorassessmentServlet" name="f1"align="center">
         
            <table align="center">
                <tr> 
                    <th colspan="2" style="color: #abda0f; font-size: 25px;">Vendor Assessment</th>
                </tr>
                <tr><td>&nbsp;</td></tr>
                <tr><td>
                        <fieldset class="row1">
                            <legend>Personal Details</legend>
                        
                            <table>
                                <tr>
                                    <td id="fnts">Vendor_Name</td>
                                    <td><input type="text" name="vendor_name" id="t1txtbx" required="required"/></td>
                                </tr>
                                 <tr><td>&nbsp;</td></tr>
                                 <tr>
                                    <td id="fnts">Company_Name</td>
                                    <td><input type="text" name="company_name" id="t1txtbx" required="required"/></td>
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
                                    <td id="fnts">Date</td>
                                    <td><input type="date" name="Date" id="t1txtbx" required="required"/></td>
                                </tr>
                                 <tr><td>&nbsp;</td></tr>
                                 <tr>
                                    <td id="fnts">Email</td>
                                    <td><input type="email" name="email" id="t4txtbx" required="required"/></td>
                                </tr>
                               
                                <tr><td>&nbsp;</td></tr>
                                <tr>
                                    <td id="fnts">Type_of_business</td>
                                    <td><input type="text" name="type_of_business" id="t1txtbx" required="required"/></td>
                                </tr>
                                <tr><td>&nbsp;</td></tr>
                                <tr>
                                    <td id="fnts">Website</td>
                                    <td><input type="text" name="website" id="t1txtbx" required="required"/></td>
                                </tr>
                               
                                
                            </table>
                        
                    </td>
                    </fieldset> 
                     <tr><td>
                        <fieldset class="row2">
                            <legend>Question</legend>

                            <table>
     <form name ="checkboxForm">
         <div aligen="right"><br>  Pricing:</br>
            
                    <input type="checkbox" name="pricing"value="Competitive pricing"  rquired="required" >Competitive pricing<br/>
                    <input type="checkbox" name="pricing"value="Price stability"  rquired="required">Price stability<br/>
                    <input type="checkbox" name="pricing"value="Price accuracy"  rquired="required" >Price accuracy<br/>
                    <input type="checkbox" name="pricing"value="Advance notice of price changes"  rquired="required">Advance notice of price changes<br/>
                   
         </div>
         <div aligen="right"><br>Quality_Factors:</br>
                    <input type="checkbox" name="quality_factor"value="Reliability"  rquired="required">Reliability<br/>
                    <input type="checkbox" name="quality_factor"value="Reliability of repairs"  rquired="required">Reliability of repairs<br/>
                    <input type="checkbox" name="quality_factor"value="Support"  rquired="required">Support<br/>
                    <input type="checkbox" name="quality_factor"value="Warranty"  rquired="required">Warranty<br/>
                    <input type="checkbox" name="quality_factor"value="Durability" id="t1txtbx" rquired="required">Durability<br/>

         </div>
                
         <div aligen="right"> <br> Delivery_Factors:</br>
                             
                     <input type="checkbox" name="Delivery_Factors"value="Time"  rquired="required">Time<br/>
                     <input type="checkbox" name="Delivery_Factors"value="Quantity" rquired="required" >Quantity<br/>
                     <input type="checkbox" name="Delivery_Factors"value="Lead time"  rquired="required" >Lead time<br/>
                     <input type="checkbox" name="Delivery_Factors"value="Documentation"  rquired="required">Documentation<br/>
                     <input type="checkbox" name="Delivery_Factors"value="Emergency delivery"  rquired="required">Emergency delivery<br/>
                            
         </div>
                 <div aligen="right"><br> Service_Factors:</br>
                     <input type="checkbox" name="Service_Factors"value="Technical support"rquired="required">Technical support<br/>
                     <input type="checkbox" name="Service_Factors"value="Emergency support"  rquired="required">Emergency support<br/>
                     <input type="checkbox" name="Service_Factors"value="Problem resolution"  rquired="required">Problem resolution<br/>
                             
         </div>
         </td></tr></table>
                        </fieldset>
                             
         </table>
            <div><input type="submit" class="button" value="register" ></div>

        </form>
           </body>
</html>
