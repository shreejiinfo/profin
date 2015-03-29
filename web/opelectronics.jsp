<%-- 
    Document   : hiddentxtbox
    Created on : Feb 27, 2015, 2:25:54 PM
    Author     : Bhargav
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" type="text/css" href="css/default1.css"/>
        <script>
            function callMcqTxt() {
                document.getElementById("txtMcqDiv").style.display = "block";

            }
          
            
       
         function callMcqTxt1() {
                document.getElementById("txtMcqDiv1").style.display = "block";

            }
          
        </script>
    </head>

    <body>
        <%@include file="opheader3.jsp" %>
        <form method="post" action="Assetregistrationservlet" name="f1"  class="register">
        <table align="center">
                <tr> 
                    <th colspan="2" style="color: #abda0f; font-size: 25px; padding-left: 230px; ">Electronics Registration</th>
                </tr>
                <tr><td>&nbsp;</td></tr></table>

            <input type="radio" name="gen" id="radio1" onclick="callMcqTxt()">Laptop<br>
     <input type="radio" name="gen" id="radio2"onclick="callMcqTxt1()">Printer<br>   

        <br>
        
        <div id="txtMcqDiv"  name="txtdiv" style="display: none" >
            <table>
                <tr><td>&nbsp;</td></tr>
                                             <tr>
                                                     <td style="width:30%;">Laptop Brand*:</td>
                                                     <td><input type="text" name="L_Brand" class="inptxt" required="required"/></td>
                                                     <td>Laptop Type*:</td>
                                                     <td><input type="text" name="L_Type" class="inptxt" required="required"/></td>
                                              </tr>
                                              <tr><td>&nbsp;</td></tr>
                                              <tr>
                                                    <td>Processor*:</td>
                                                    <td><input type="text" name="L_Processor" class="inptxt" required="required"/></td>
                                                    <td>Color*:</td>
                                                    <td><input type="text" name="L_Color" class="inptxt" required="required"/></td>
                                                </tr>
                                                <tr><td>&nbsp;</td></tr>
                                                <tr>
                                                    <td>RAM*:</td>
                                                    <td><input type="text" name="L_RAM" class="inptxt" required="required"/></td>
                                                    <td>HDD*:</td>
                                                    <td><input type="text" name="L_HDD" class="inptxt" required="required"/></td>
                                                </tr>
                                                <tr><td>&nbsp;</td></tr>
                                                <tr>
                                                    <td>Operating_System*:</td>
                                                    <td><input type="text" name="L_Operating_system" class="inptxt" required="required"/></td>
                                                    <td>Speed*:</td>
                                                    <td><input type="text" name="L_Speed" class="inptxt" required="required"/></td>
                                                </tr>
                                                <tr><td>&nbsp;</td></tr>
                                                <tr>
                                                    <td>Cache*:</td>
                                                    <td><input type="text" name="L_Cache" class="inptxt" required="required"/></td>
                                                    <td>Screen_Size*:</td>
                                                    <td><input type="text" name="L_Screen_size" class="inptxt" required="required"/></td>
                                                </tr>
                                                <tr><td>&nbsp;</td></tr>
                                                <tr>
                                                    <td>Bluetooth*:</td>
                                                    <td><input type="text" name="L_Bluetooth" class="inptxt" required="required"/></td>
                                                    <td>Battery_life*:</td>
                                                    <td><input type="text" name="L_Battery_life" class="inptxt" required="required"/></td>
                                                </tr>
                                                <tr><td>&nbsp;</td></tr>
                                                <tr>
                                                    <td>Warranty_period*:</td>
                                                    <td><input type="text" name="L_Warranty_period" class="inptxt" required="required"/></td>
                                                    <td>Purchase_date*:</td>
                                                    <td><input type="text" name="L_Purchase_date" class="inptxt" required="required"/></td>
                                                </tr>
                                                <tr><td>&nbsp;</td></tr>
                                                <tr>
                                                    <td>Price*:</td>
                                                    <td><input type="text" name="L_Price" class="inptxt" required="required"/></td>
                                                    <td>Vendor_name*:</td>
                                                    <td><input type="text" name="L_Vendor_name" class="inptxt" required="required"/></td>
                                                </tr>
                                                <tr><td>&nbsp;</td></tr>
                                               <tr>
                                                    <td>Picture*:</td>
                                                    <td><input type="file" name="L_Picture" class="inptxt" required="required"/></td>
                                                </tr>
                
            </table>
        </div>
           

 <tr><td>&nbsp;</td></tr>
        <tr><td><div>
        <input type="submit" class="button" value="Register" >
         </div></td></tr>
        </form>
        
        <form method="post" action="PrinterServlet" name="f1"  class="register">
        <table align="center">
                <tr> 
                    <th colspan="2" style="color: #abda0f; font-size: 25px; padding-left: 230px; ">Electronics Registration</th>
                </tr>
                <tr><td>&nbsp;</td></tr></table>

            
        

        <br>
        
        <div id="txtMcqDiv1" name="txtdiv" style="display: none">
            <table>
                <tr><td>&nbsp;</td></tr>
                                             <tr>
                                                     <td style="width:30%;">Brand:</td>
                                                     <td><input type="text" name="p_Brand" class="inptxt" required="required"/></td>
                                                     <td>Model Number:</td>
                                                     <td><input type="text" name="model_number" class="inptxt" required="required"/></td>
                                              </tr>
                                              <tr><td>&nbsp;</td></tr>
                                              <tr>
                                                    <td>Type:</td>
                                                    <td><input type="text" name="type" class="inptxt" required="required"/></td>
                                                    <td>Height:</td>
                                                    <td><input type="text" name="Height" class="inptxt" required="required"/></td>
                                                </tr>
                                                <tr><td>&nbsp;</td></tr>
                                                <tr>
                                                    <td>Width:</td>
                                                    <td><input type="text" name="Width" class="inptxt" required="required"/></td>
                                                    <td>Dimension:</td>
                                                    <td><input type="text" name="dimension" class="inptxt" required="required"/></td>
                                                </tr>
                                                <tr><td>&nbsp;</td></tr>
                                                <tr>
                                                    <td>Vendor Name:</td>
                                                    <td><input type="text" name="vendor_name" class="inptxt" required="required"/></td>
                                                    <td>Purchase Date:</td>
                                                    <td><input type="text" name="purchase_date" class="inptxt" required="required"/></td>
                                                </tr>
                                                <tr><td>&nbsp;</td></tr>
                                                <tr>
                                                    <td>Warranty Period:</td>
                                                    <td><input type="text" name="warranty" class="inptxt" required="required"/></td>
                                                    <td>Price:</td>
                                                    <td><input type="text" name="price" class="inptxt" required="required"/></td>
                                                </tr>
                                                <tr><td>&nbsp;</td></tr>
                             
                                               <tr>
                                                    <td>L_Picture:</td>
                                                    <td><input type="file" name="p_Picture" class="inptxt" required="required"/></td>
                                                </tr>
                
            </table>
        </div>
           

 <tr><td>&nbsp;</td></tr>
 <tr><td>&nbsp;</td></tr>
        <tr><td><div>
        <input type="submit" class="button" value="Register" >
         </div></td></tr>
                </form>
        <div id="copyright">
      <p class="fl_left">Copyright &copy; 2015 - All Rights Reserved - <a href="#">Domain Name</a></p>
       <br class="clear" />
    </div>
    <div class="clear"></div>
  </div>
</div>

                </body>
                </html>
