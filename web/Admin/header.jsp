<%-- 
    Document   : header
    Created on : Feb 25, 2015, 2:33:29 PM
    Author     : Bhargav
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>---Header---</title>
        <link rel="stylesheet" href="css/screen.css" type="text/css" media="screen" title="default" />
        <!--[if IE]>
        <link rel="stylesheet" media="all" type="text/css" href="css/pro_dropline_ie.css" />
        <![endif]-->

        <!--  jquery core -->
        <script src="js/jquery/jquery-1.4.1.min.js" type="text/javascript"></script>


        <script src="js/jquery/ui.core.js" type="text/javascript"></script>
        <script src="js/jquery/ui.checkbox.js" type="text/javascript"></script>
        <script src="js/jquery/jquery.bind.js" type="text/javascript"></script>


        <![if !IE 7]>


        <script src="js/jquery/jquery.selectbox-0.5.js" type="text/javascript"></script>
        <script type="text/javascript">
            $(document).ready(function() {
                $('.styledselect').selectbox({inputClass: "selectbox_styled"});
            });
        </script>


        <![endif]>



        <script src="js/jquery/jquery.selectbox-0.5_style_2.js" type="text/javascript"></script>
        <script type="text/javascript">
            $(document).ready(function() {
                $('.styledselect_form_1').selectbox({inputClass: "styledselect_form_1"});
                $('.styledselect_form_2').selectbox({inputClass: "styledselect_form_2"});
            });
        </script>


        <script src="js/jquery/jquery.selectbox-0.5_style_2.js" type="text/javascript"></script>
        <script type="text/javascript">
            $(document).ready(function() {
                $('.styledselect_pages').selectbox({inputClass: "styledselect_pages"});
            });
        </script>


        <script src="js/jquery/jquery.filestyle.js" type="text/javascript"></script>
        <script type="text/javascript" charset="utf-8">
            $(function() {
                $("input.file_1").filestyle({
                    image: "images/forms/upload_file.gif",
                    imageheight: 29,
                    imagewidth: 78,
                    width: 300
                });
            });
        </script>


        <script src="js/jquery/custom_jquery.js" type="text/javascript"></script>


        <script src="js/jquery/jquery.tooltip.js" type="text/javascript"></script>
        <script src="js/jquery/jquery.dimensions.js" type="text/javascript"></script>
        <script type="text/javascript">
            $(function() {
                $('a.info-tooltip ').tooltip({
                    track: true,
                    delay: 0,
                    fixPNG: true,
                    showURL: false,
                    showBody: " - ",
                    top: -35,
                    left: 5
                });
            });
        </script> 


        <link rel="stylesheet" href="css/datePicker.css" type="text/css" />
        <script src="js/jquery/date.js" type="text/javascript"></script>
        <script src="js/jquery/jquery.datePicker.js" type="text/javascript"></script>
        <script type="text/javascript" charset="utf-8">
            $(function()
            {

                // initialise the "Select date" link
                $('#date-pick')
                        .datePicker(
                        // associate the link with a date picker
                                {
                                    createButton: false,
                                    startDate: '01/01/1965',
                                    endDate: '31/12/2020'
                                }
                        ).bind(
                                // when the link is clicked display the date picker
                                'click',
                                function()
                                {
                                    updateSelects($(this).dpGetSelected()[0]);
                                    $(this).dpDisplay();
                                    return false;
                                }
                        ).bind(
                                // when a date is selected update the SELECTs
                                'dateSelected',
                                function(e, selectedDate, $td, state)
                                {
                                    updateSelects(selectedDate);
                                }
                        ).bind(
                                'dpClosed',
                                function(e, selected)
                                {
                                    updateSelects(selected[0]);
                                }
                        );

                        var updateSelects = function(selectedDate)
                        {
                            var selectedDate = new Date(selectedDate);
                            $('#d option[value=' + selectedDate.getDate() + ']').attr('selected', 'selected');
                            $('#m option[value=' + (selectedDate.getMonth() + 1) + ']').attr('selected', 'selected');
                            $('#y option[value=' + (selectedDate.getFullYear()) + ']').attr('selected', 'selected');
                        }
                        // listen for when the selects are changed and update the picker
                        $('#d, #m, #y')
                                .bind(
                                'change',
                                function()
                                {
                                    var d = new Date(
                                            $('#y').val(),
                                            $('#m').val() - 1,
                                            $('#d').val()
                                            );
                                    $('#date-pick').dpSetSelected(d.asString());
                                }
                        );

                        // default the position of the selects to today
                        var today = new Date();
                        updateSelects(today.getTime());

                        // and update the datePicker to reflect it...
                        $('#d').trigger('change');
                    });
        </script>


        <script src="js/jquery/jquery.pngFix.pack.js" type="text/javascript"></script>
        <script type="text/javascript">
            $(document).ready(function() {
                $(document).pngFix( );
            });
        </script>
    </head>
    <body> 

        <div id="page-top-outer">    


            <div id="page-top">

                <div id="logo">
                    <a href=""><img src="images\forms\admin-logo.gif" width="156" height="40" alt="" /></a>
                </div>

                <div id="top-search">
                    <table border="0" cellpadding="0" cellspacing="0">
                        <tr>
                            <td><input type="text" value="Search" onblur="if (this.value == '') {
                                        this.value = 'Search';
                                    }" onfocus="if (this.value == 'Search') {
                                                this.value = '';
                                            }" class="top-search-inp" /></td>

                        </tr>
                    </table>
                </div>

                <div class="clear"></div>

            </div>


        </div>


        <div class="clear">&nbsp;</div>


        <div class="nav-outer-repeat"> 

            <div class="nav-outer"> 


                <div id="nav-right">

                    <div class="nav-divider">&nbsp;</div>
                    <div class="showhide-account"><img src="${pageContext.request.contextPath}/Admin/images/shared/nav/nav_myaccount.gif" width="93" height="14" alt="" /></div>
                    <div class="nav-divider">&nbsp;</div>
                    <a href="index.jsp" id="logout"><img src="${pageContext.request.contextPath}/Admin/images/shared/nav/nav_logout.gif" width="64" height="14" alt="" /></a>
                    <div class="clear">&nbsp;</div>





                </div>




                <div class="nav">
                    <div class="table">

                        <ul class="select"><li><a href="${pageContext.request.contextPath}/Admin/registration.jsp"><b>Registration</b></a>



                            </li>
                        </ul>

                        <div class="nav-divider">&nbsp;</div>
		                    
                        <ul class="current"><li><a href="${pageContext.request.contextPath}/RegistrationInfoServlet"><b>Registration Details</b></a>
		
		
		
		</li>
		</ul>

                    <div class="nav-divider">&nbsp;</div>
		                    
                    <ul class="current"><li><a href="${pageContext.request.contextPath}/CustRegistrationServlet"><b>Customer Details</b></a>
		
		
		
		</li>
		</ul>

		
		<div class="nav-divider">&nbsp;</div>
		                    
                <ul class="select"><li><a href="#nogo"><b>Assets Details</b><!--[if IE 7]><!--></a><!--<![endif]-->
		<!--[if lte IE 6]><table><tr><td><![endif]-->
		<div class="select_sub">
			<ul class="sub">
				<li><a href="#nogo">Tables</a></li>
                                <li><a href="${pageContext.request.contextPath}/PrinterInfoServlet">Printer</a></li>
                                <li><a href="${pageContext.request.contextPath}/LaptopInfoServlet">Laptop</a></li>
			</ul>
		</div>
		<!--[if lte IE 6]></td></tr></table></a><![endif]-->
		</li>
		</ul>
                
                
                
                <div class="nav-divider">&nbsp;</div>
		                    
                <ul class="current"><li><a href="${pageContext.request.contextPath}/Admin/AssetInfo.jsp"><b>Vendor Detail</b></a>
		
		
		
		</li>
		</ul>
		
	
                        <div class="clear"></div>
                    </div>
                    <div class="clear"></div>
                </div>


            </div>
            <div class="clear"></div>

        </div>


    </body>
</html>
