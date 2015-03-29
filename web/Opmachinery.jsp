<%-- 
    Document   : machinery
    Created on : 1 Mar, 2015, 11:28:06 PM
    Author     : VIKAS
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
            
        </script>
    </head>

    <body>
        <%@include file="opheader3.jsp" %>
        <form method="post" action="Assetregistrationservlet" name="f1"  class="register">
        <table align="center">
                <tr> 
                    <th colspan="2" style="color: #abda0f; font-size: 25px; padding-left: 230px; ">Machinery Registration</th>
                </tr>
                <tr><td>&nbsp;</td></tr></table>

            <input type="radio" name="gen" onclick="callMcqTxt()"><br>
        

        <br>
        
        <div id="txtMcqDiv" name="txtdiv" style="display: none">
            <table>
                <tr><td>&nbsp;</td></tr>
                                             <tr>
                                                     <td style="width:30%;">L_Brand:</td>
                                                     <td><input type="text" name="L_Brand" class="inptxt" required="required"/></td>
                                                     <td>L_Type:</td>
                                                     <td><input type="text" name="L_Type" class="inptxt" required="required"/></td>
                                              </tr>
                                              <tr><td>&nbsp;</td></tr>
                                              <tr>
                                                    <td>L_Processor:</td>
                                                    <td><input type="text" name="L_Processor" class="inptxt" required="required"/></td>
                                                    <td>L_Color:</td>
                                                    <td><input type="text" name="L_Color" class="inptxt" required="required"/></td>
                                                </tr>
                                                <tr><td>&nbsp;</td></tr>
                                                <tr>
                                                    <td>L_RAM:</td>
                                                    <td><input type="text" name="L_RAM" class="inptxt" required="required"/></td>
                                                    <td>L_HDD:</td>
                                                    <td><input type="text" name="L_HDD" class="inptxt" required="required"/></td>
                                                </tr>
                                                <tr><td>&nbsp;</td></tr>
                                                <tr>
                                                    <td>L_Operating_System:</td>
                                                    <td><input type="text" name="L_Operating_system" class="inptxt" required="required"/></td>
                                                    <td>L_Speed:</td>
                                                    <td><input type="text" name="L_Speed" class="inptxt" required="required"/></td>
                                                </tr>
                                                <tr><td>&nbsp;</td></tr>
                                                <tr>
                                                    <td>L_Cache:</td>
                                                    <td><input type="text" name="L_Cache" class="inptxt" required="required"/></td>
                                                    <td>L_Screen_Size:</td>
                                                    <td><input type="text" name="L_Screen_size" class="inptxt" required="required"/></td>
                                                </tr>
                                                <tr><td>&nbsp;</td></tr>
                                                <tr>
                                                    <td>L_Bluetooth:</td>
                                                    <td><input type="text" name="L_Bluetooth" class="inptxt" required="required"/></td>
                                                    <td>Battery_life:</td>
                                                    <td><input type="text" name="L_Battery_life" class="inptxt" required="required"/></td>
                                                </tr>
                                                <tr><td>&nbsp;</td></tr>
                                                <tr>
                                                    <td>L_Warranty_period:</td>
                                                    <td><input type="text" name="L_Warranty_period" class="inptxt" required="required"/></td>
                                                    <td>L_Purchase_date:</td>
                                                    <td><input type="text" name="L_Purchase_date" class="inptxt" required="required"/></td>
                                                </tr>
                                                <tr><td>&nbsp;</td></tr>
                                                <tr>
                                                    <td>L_Price:</td>
                                                    <td><input type="text" name="L_Price" class="inptxt" required="required"/></td>
                                                    <td>L_Vendor_name:</td>
                                                    <td><input type="text" name="L_Vendor_name" class="inptxt" required="required"/></td>
                                                </tr>
                                                <tr><td>&nbsp;</td></tr>
                                               <tr>
                                                    <td>L_Picture:</td>
                                                    <td><input type="file" name="L_Picture" class="inptxt" required="required"/></td>
                                                </tr>
                
            </table>
        </div>
           

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
</html>
