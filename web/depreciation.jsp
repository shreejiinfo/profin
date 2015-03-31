<%-- 
    Document   : depreciation
    Created on : 25 Feb, 2015, 7:57:53 PM
    Author     : VIKAS
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib  uri="http://java.sun.com/jsp/jstl/core" prefix="d" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registration Form</title>
        <link rel="stylesheet" type="text/css" href="css/default1.css"/>
   
    </head>
    <body>
        
        <%@include file="opheader2.jsp" %>
        <form method="post" action="depreciationservlet" name="f1"  class="register">
             <d:if test="${user==null}">
                <d:redirect url="depreciationinfoservlet"></d:redirect>
            </d:if>
         <table align="center">
                <tr> 
                    <th colspan="2" style="color: #abda0f; font-size: 25px; padding-left: 230px; ">Depreciation</th>
                </tr>
                <tr><td>&nbsp;</td></tr>
                <tr><td>
                        <fieldset class="row1">
                            <legend>Depreciation calculation</legend>
                            <table>
                                <tr>
                                    
                                    <td id="fnts" name="asset_name">Asset name:</td>
                                    <td>
                                <select id="asset_name">
                                        <option>select</option>
                                    <d:forEach items="${user}" var="userlist">
                                            <option>${userlist.asset_name}</option>
                                    </d:forEach>
                                    </select>
                                    </td>
                                 </tr>
                                <tr><td>&nbsp;</td></tr>
                                <tr>
                                    <td id="fnts" name="price">Asset price:</td>
                                    <td>
                                <select id="asset_price">
                                    <option>select</option>
                                <d:forEach items="${user}" var="userlist">
                                    <option>${userlist.price}</option>
                                </d:forEach>  
                                </td>
                                </tr>
                                <tr><td>&nbsp;</td></tr>
                                
                                <tr>
                                    <td id="fnts" name="salvage_value">Salvage value:</td>
                                    <td><input type="text" name="salvage_value" id="salvage_value" required="required"/></td>
                                </tr>
                                <tr><td>&nbsp;</td></tr>
                                <tr>
                                    <td id="fnts">Asset life:</td>
                                    <td><input type="text" name="asset_life" id="asset_life" required="required"/></td>
                                </tr>
                                <tr><td>&nbsp;</td></tr>
                                <tr>
                                    <td id="fnts">Depreciation value:</td>
                                    <td><input type="text" name="dep_value" id="dep_value" required="required"/></td>
                                </tr>
                                </table>
                        </fieldset>
                    </td>
                   </tr>
         </table>
                
                   <div><input type="button" class="button" value="calculate" id="btnCalculate" name="btnCalculate"></div>
        </form>
         <div class="block"></div>
                </div>
            </div>
            <div id="copyright">
      <p class="fl_left">Copyright &copy; 2015 - All Rights Reserved - <a href="#">Domain Name</a></p>
       <br class="clear" />
    </div>
    <div class="clear"></div>
  </div>
</div>


   <script type="text/javascript" src='js/jquery-1.11.1.js'></script>
       
        <script type="text/javascript">
                
            $(document).ready(function(){
                $("#btnCalculate").click(function(){
                    var dep_value= (parseFloat($("#asset_price").val())+ parseFloat($("#salvage_value").val(),10))/parseFloat($("#asset_life").val(),10);
                   $("#dep_value").val(dep_value);
                });
            });
        </script>
    </body>
</html>
