<%-- 
    Document   : furniture
    Created on : 1 Mar, 2015, 11:24:51 PM
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
              function callMcqTxt1() {
                document.getElementById("txtMcqDiv1").style.display = "block";

            }
       
            
        </script>
    </head>

    <body>
        <%@include file="opheader3.jsp" %>
        <form method="post" action="Ftableservlet" name="f1"  class="register">
        <table align="center">
                <tr> 
                    <th colspan="2" style="color: #abda0f; font-size: 25px; padding-left: 230px; ">Furniture Registration</th>
                </tr>
                <tr><td>&nbsp;</td></tr></table>

            <input type="radio" name="gen" onclick="callMcqTxt()">Tables<br>
             <input type="radio" name="gen" onclick="callMcqTxt1()">Chairs<br>
        

        <br>
        
        <div id="txtMcqDiv" name="txtdiv" style="display: none">
            <table>
                <tr><td>&nbsp;</td></tr>
                                             <tr>
                                                     <td style="width:40%;">Table Brand:</td>
                                                     <td><input type="text" name="T_Brand" class="inptxt" required="required"/></td>
                                                     <td>Table Model number:</td>
                                                     <td><input type="text" name="T_Model_number" class="inptxt" required="required"/></td>
                                              </tr>
                                              <tr><td>&nbsp;</td></tr>
                                              <tr>
                                                    <td>Type:</td>
                                                    <td><input type="text" name="T_Type" class="inptxt" required="required"/></td>
                                                    <td>Color:</td>
                                                    <td><input type="text" name="T_Color" class="inptxt" required="required"/></td>
                                                </tr>
                                                <tr><td>&nbsp;</td></tr>
                                                <tr>
                                                    <td>Material:</td>
                                                    <td><input type="text" name="T_Material" class="inptxt" required="required"/></td>
                                                    
                                                    <td>Width:</td>
                                                    <td><input type="text" name="T_Width" class="inptxt" required="required"/></td>
                                                </tr>
                                                <tr><td>&nbsp;</td></tr>
                                                <tr>
                                                    <td>Length:</td>
                                                    <td><input type="text" name="T_Length" class="inptxt" required="required"/></td>
                                                    <td>Depth:</td>
                                                    <td><input type="text" name="T_Depth" class="inptxt" required="required"/></td>
                                                </tr>
                                                <tr><td>&nbsp;</td></tr>
                                                <tr>
                                                    <td>Warranty period:</td>
                                                    <td><input type="text" name="T_Warranty_period" class="inptxt" required="required"/></td>
                                                    <td>Vendor name:</td>
                                                    <td><input type="text" name="T_Vendor_name" class="inptxt" required="required"/></td>
                                                </tr>
                                                <tr><td>&nbsp;</td></tr>
                                               <tr>
                                                    <td>Purchase date:</td>
                                                    <td><input type="text" name="T_Purchase_date" class="inptxt" required="required"/></td>
                                                    <td>Price:</td>
                                                    <td><input type="text" name="T_Price" class="inptxt" required="required"/></td>
                                                    
                                                </tr>
                                                <tr><td>&nbsp;</td></tr>
                                                <tr>
                                                    <td>Picture:</td>
                                                    <td><input type="file" name="T_Picture" class="inptxt" required="required"/></td>
                                                </tr>
            </table>
        </div>
           

 <tr><td>&nbsp;</td></tr>
        <tr><td><div>
        <input type="submit" class="button" value="Register" >
         </div></td></tr>
        </form>
    <div class="clear"></div>
  </div>
</div>


<form method="post" action="chairservlet" name="f1"  class="register">
        <table align="center">
                <tr> 
                    <th colspan="2" style="color: #abda0f; font-size: 25px; padding-left: 230px; ">Furniture Registration</th>
                </tr>
                <tr><td>&nbsp;</td></tr></table>

           
        

        <br>
        
        <div id="txtMcqDiv1" name="txtdiv" style="display: none">
            <table>
                <tr><td>&nbsp;</td></tr>
                                             <tr>
                                                     <td style="width:40%;">Chair Brand:</td>
                                                     <td><input type="text" name="c_brand" class="inptxt" required="required"/></td>
                                                     <td>Chair Model number:</td>
                                                     <td><input type="text" name="c_model_number" class="inptxt" required="required"/></td>
                                              </tr>
                                              <tr><td>&nbsp;</td></tr>
                                              <tr>
                                                    <td>Type:</td>
                                                    <td><input type="text" name="c_type" class="inptxt" required="required"/></td>
                                                    <td>Color:</td>
                                                    <td><input type="text" name="c_color" class="inptxt" required="required"/></td>
                                                </tr>
                                                <tr><td>&nbsp;</td></tr>
                                                <tr>
                                                    <td>Material:</td>
                                                    <td><input type="text" name="c_material" class="inptxt" required="required"/></td>
                                                    
                                                    <td>Width:</td>
                                                    <td><input type="text" name="c_width" class="inptxt" required="required"/></td>
                                                </tr>
                                                <tr><td>&nbsp;</td></tr>
                                                <tr>
                                                    <td>Length:</td>
                                                    <td><input type="text" name="c_length" class="inptxt" required="required"/></td>
                                                    <td>Height:</td>
                                                    <td><input type="text" name="c_height" class="inptxt" required="required"/></td>
                                                </tr>
                                                <tr><td>&nbsp;</td></tr>
                                                <tr>
                                                    <td>Warranty period:</td>
                                                    <td><input type="text" name="c_warranty_period" class="inptxt" required="required"/></td>
                                                    <td>Vendor name:</td>
                                                    <td><input type="text" name="c_vendor_name" class="inptxt" required="required"/></td>
                                                </tr>
                                                <tr><td>&nbsp;</td></tr>
                                               <tr>
                                                    <td>Purchase date:</td>
                                                    <td><input type="text" name="c_purchase_date" class="inptxt" required="required"/></td>
                                                    <td>Price:</td>
                                                    <td><input type="text" name="c_price" class="inptxt" required="required"/></td>
                                                    
                                                </tr>
                                                <tr><td>&nbsp;</td></tr>
                                                <tr>
                                                    <td>Picture:</td>
                                                    <td><input type="file" name="c_picture" class="inptxt" required="required"/></td>
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
