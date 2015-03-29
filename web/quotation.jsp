<%-- 
    Document   : quotation
    Created on : Mar 2, 2015, 11:44:41 AM
    Author     : baroda
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        
       <div align="center">
	<table border="2" cellpadding="0" cellspacing="0" width="624">
		<tbody>
			<tr>
				<!--<td colspan="11" style="width:432px;height:96px;">
					
				</td>-->
				<td colspan="5" style="width:192px;height:96px;">
					<p>
						Date:<input type="text" placeholder="Enter Date" name="date"/></p>
					<p>
						Invoice #<input type="text" placeholder="100" name="invoice" /></p>
					<p>
						Expiration Date: <input type="text" placeholder="Enter Date" name="exp_date" /></p>
				</td>
			</tr>
			<tr>
				<td colspan="3" style="width:155px;height:139px;">
					<p>
						<input type="text" placeholder="Company name"  name="comp_name"/></p>
					<p>
						<input type="text" placeholder="Street " name="street" /></p>
					<p>
						<input type="text" placeholder="City" name="city"/></p>
					<p>
						<input type="text" placeholder="Phone" name="phone"/></p>
					
					<p>
						<input type="text" placeholder="Email" name="email"/></p>
				</td>
				<td colspan="10" style="width:329px;height:139px;">
					
				</td>
				<td colspan="3" style="width:140px;height:139px;">
                                    <p>TO</p>
					<p>
						<input type="text" placeholder="Name" name="name" /></p>
					<p>
						<input type="text" placeholder="Company Name" name="c_name"/></p>
					<p>
						<input type="text" placeholder="Street Address" name="sadd"/></p>
					<p>
						<input type="text" placeholder="City" name="c_city"/></p>
					<p>
						<input type="text" placeholder="Phone" name="c_phone"/></p>
					<p>
						Customer ID <input type="text" placeholder="abcd" name="cust_id"/></p>
					<p>
						&nbsp;</p>
				</td>
			</tr>
			<tr>
				<td colspan="2" style="width:108px;height:19px;">
					<p>
                                            Salesperson</p>
				</td>
				<td colspan="2" style="width:70px;height:19px;">
					<p>
						Job</p>
				</td>
				<td colspan="2" style="width:89px;height:19px;">
					<p>
						Shipping Method</p>
				</td>
				<td colspan="3" style="width:89px;height:19px;">
					<p>
						Shipping Terms</p>
				</td>
				<td colspan="3" style="width:89px;height:19px;">
					<p>
						Delivery Date</p>
				</td>
				<td colspan="3" style="width:89px;height:19px;">
					<p>
						Payment Terms</p>
				</td>
				<td style="width:89px;height:19px;">
					<p>
						Due Date</p>
				</td>
			</tr>
			<tr>
				<td colspan="2" style="width:108px;height:19px;">
					<p><input type="text" placeholder="sales person" name="sales_person" /></p>
				</td>
				<td colspan="2" style="width:70px;height:19px;">
					<p><input type="text" placeholder="job" name="job" /></p>
				</td>
				<td colspan="2" style="width:89px;height:19px;">
					<p><input type="text" placeholder="shipping_method " name="ship" /></p>
				</td>
				<td colspan="3" style="width:89px;height:19px;">
					<p><input type="text" placeholder="shipping term" name="ship_term" /></p>
				</td>
				<td colspan="3" style="width:89px;height:19px;">
					<p><input type="text" placeholder="delivery date" name="delivery_date" /></p>
				</td>
				<td colspan="3" style="width:89px;height:19px;">
					<p>
						Due on receipt:<input type="text" placeholder="due on receipt"  name="due
                                                                      _receipt" /></p>
				</td>
				<td style="width:89px;height:19px;">
					<p><input type="text" placeholder="due date" name="due_date" /></p>
				</td>
			</tr>
			<tr>
				<td colspan="16" style="width:624px;height:19px;">
					<p></p>
				</td>
			</tr>
			
			<tr>
				<td style="width:96px;height:19px;">
					<p>
						&nbsp;</p>
				</td>
				<td colspan="4" style="width:112px;height:19px;">
					<p>
						&nbsp;</p>
				</td>
				<td colspan="3" style="width:118px;height:19px;">
					<p>
						&nbsp;</p>
				</td>
				<td colspan="2" style="width:102px;height:19px;">
					<p>
						&nbsp;</p>
				</td>
				<td colspan="4" style="width:100px;height:19px;">
					<p>
						&nbsp;</p>
				</td>
				<td colspan="2" style="width:96px;height:19px;">
					<p>
						&nbsp;</p>
				</td>
			</tr>
			
			<tr>
				<td colspan="14" style="width:528px;height:19px;">
					<p>
						Subtotal</p>
				</td>
				<td colspan="2" style="width:96px;height:19px;">
					<p>
					  <input type="text" placeholder="sub total" /></p>
				</td>
			</tr>
			<tr>
				<td colspan="14" style="width:528px;height:19px;">
					<p>
						Sales Tax</p>
				</td>
				<td colspan="2" style="width:96px;height:19px;">
					<p>
						<input type="text" placeholder="sales text" /></p>
				</td>
			</tr>
			<tr>
				<td colspan="14" style="width:528px;height:19px;">
					<p>
						Total</p>
				</td>
				<td colspan="2" style="width:96px;height:19px;">
					<p>
						<input type="text" placeholder="total" /></p>
				</td>
			</tr>
			<tr>
				<td colspan="14" style="width:528px;height:112px;">
					<p>
						Quotation prepared by: __________________________________________________________________</p>
					<p>
						This is a quotation on the goods named, subject to the conditions noted below: (Describe any conditions pertaining to these prices and any additional terms of the agreement. You may want to include contingencies that will affect the quotation.)</p>
					<p>
						To accept this quotation, sign here and return: _______________________________________________</p>
				</td>
				<td colspan="2" style="width:96px;height:112px;">
					<p>
						&nbsp;</p>
				</td>
			</tr>
			<tr>
				<td colspan="2" style="width:108px;height:53px;">
					<p>
						<img alt="Logo placeholder" height="45" src="file:///C:\Users\sumeet\AppData\Local\Temp\msohtmlclip1\01\clip_image002.gif" width="90" /></p>
				</td>
				<td colspan="5" style="width:204px;height:53px;">
					<p>
						[Your company slogan]</p>
				</td>
				<td colspan="9" style="width:312px;height:53px;">
					<p>
						Thank you for your business!</p>
				</td>
			</tr>
			<tr height="0">
				
			</tr>
		</tbody>
	</table>
</div>
<p>
	&nbsp;</p>
         
    </body>
</html>

    </body>
</html>
