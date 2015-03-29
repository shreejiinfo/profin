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
        
        <%@include file="home.jsp" %>
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
                                <select>
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
                                <select>
                                    <option>select</option>
                                <d:forEach items="${userlist}" var="userlist">
                                    <option ${userlist.price}</option>
                                </d:forEach>  
                                </td>
                                </tr>
                                <tr><td>&nbsp;</td></tr>
                                
                                <tr>
                                    <td id="fnts" name="salvage_value">Salvage value:</td>
                                    <td><input type="text" name="salvage_value" id="txt2" required="required"/></td>
                                </tr>
                                <tr><td>&nbsp;</td></tr>
                                <tr>
                                    <td id="fnts">Asset life:</td>
                                    <td><input type="text" name="asset_life" id="txt3" required="required"/></td>
                                </tr>
                                <tr><td>&nbsp;</td></tr>
                                <tr>
                                    <td id="fnts">Depreciation value:</td>
                                    <td><input type="text" name="dep_value" id="txt3" required="required"/></td>
                                </tr>
                                </table>
                        </fieldset>
                    </td>
                   </tr>
         </table>
                
                   <div><input type="submit" class="button" value="calculate"></div>
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
    </body>
</html>
