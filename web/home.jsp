<%-- 
    Document   : home
    Created on : 30 Jan, 2015, 1:59:42 PM
    Author     : Acer
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>

<c:if test="${id==null}">
    <c:redirect url="index.jsp"></c:redirect>
</c:if>

<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>Key asset management</title>
        <link rel="stylesheet" href="css/style1.css" media="screen" type="text/css" />

        <link rel="stylesheet" href="css/reset.css" type="text/css" media="all">
        <link rel="stylesheet" href="css/layout.css" type="text/css" media="all">
        <link rel="stylesheet" href="css/style.css" type="text/css" media="all">
        <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
        <link rel="stylesheet" href="css/zerogrid.css">
        <link rel="stylesheet" href="css/responsive.css">
        <script type="text/javascript" src="js/jquery-1.5.2.js" ></script>
        <script type="text/javascript" src="js/cufon-yui.js"></script>
        <script type="text/javascript" src="js/cufon-replace.js"></script>  
        <script type="text/javascript" src="js/Amaranth_400.font.js"></script>
        <script type="text/javascript" src="js/script.js"></script>  
        <script type="text/javascript" src="js/scroll.js"></script>  
        <script type="text/javascript" src="js/atooltip.jquery.js"></script>
        <script src="js/css3-mediaqueries.js"></script>
    </head>
    <form name="f1" method="post" action="LoginServlet">
    <body>
       
        <div>
            <div id="regbar">
                <div id="navthing">
                    <h2><a href="registration1.jsp" id="loginform" >Register</a> | <a href="index.jsp" id="loginform" >Logout</a></h2>
                   
                </div>
            </div>
        </div>
        <script src='http://codepen.io/assets/libs/fullpage/jquery.js'></script>
        <script src="login/js/index.js">
        </script>

        <div class="header">
            <div class="extra">
                <div id="page_1">
                    <div class="main zerogrid">
                        <!--header -->
                        <header>
                           
                            <nav>
                                <ul id="menu">
                                    <li class="nav1"><a href="#page_2">Home</a></li>
                                    <li class="nav2"><a href="#page_3">Assets</a></li>
                                    <li class="nav3"><a href="#page_4">Branch</a></li>
                                    <li class="nav4"><a href="#page_5">Department</a></li>
                                    <li class="nav5"><a href="#page_6">Quotation</a></li>
                                </ul>
                            </nav>
                        </header>
                        <!--header end-->
                        <div class="ic">More Website Templates at TemplateMonster.com and Zerotheme.com</div>
                    </div>
                    <div class="block"></div>
                </div>
            </div>



    </body>
    </form>
    
</html>
