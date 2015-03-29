<%-- 
    Document   : allocation
    Created on : 22 Feb, 2015, 10:27:07 AM
    Author     : VIKAS
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
         <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registration Form</title>
        <link rel="stylesheet" type="text/css" href="css/default1.css"/>
    </head>
    <body>
       <%@include file="header.jsp" %>
        <form method="post" action="Assetregistrationservlet" name="f1"  class="register">
            <table align="center">
                <tr> 
                    <th colspan="2" style="color: #abda0f; font-size: 25px; padding-left: 230px; ">Asset Registration</th>
                </tr>
                <tr><td>&nbsp;</td></tr>
                <tr><td>
                        <fieldset class="row1">
                            <legend>Asset Details</legend>
                            <table>
                  <p>
                    <label>Asset_type*
                    </label>
                    <select>
                        <option value="0">
                        </option>
                        <option value="laptop">laptop
                             <option value="desktop">desktop
                                  <option value="machinery">machinery
                                       <option value="lcd">lcd
                                            <option value="printer">printer
                        </option>
                    </select>
                </p>
                
                    <tr><td>&nbsp;</td></tr>
                    <tr><td>&nbsp;</td></tr>
                    <tr><td>&nbsp;</td></tr>
                    <tr><td>  <div><input type="submit" class="button" value="Register" ></div></td></tr>

                         </table>  
                        </fieldset>
                               
                    </td>
                    </tr>
                            
          
        </form>

        
    </body>
         
            <div id="copyright">
      <p class="fl_left">Copyright &copy; 2015 - All Rights Reserved - <a href="#">Domain Name</a></p>
       <br class="clear" />
    </div>
    <div class="clear"></div>
  </div>
</div>
     </body>
    </form>
</html>
