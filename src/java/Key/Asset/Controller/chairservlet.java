/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package Key.Asset.Controller;

import bean.chairbean;
import Key.Asset.Dao.assetregistrationdao;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author VIKAS
 */
public class chairservlet extends HttpServlet {

   @Override
    protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        
        String Brand=request.getParameter("c_brand");
        String Model_number=request.getParameter("c_model_number");
        String Type=request.getParameter("c_type");
        String Color=request.getParameter("c_color");
        String Material=request.getParameter("c_material");
        String Width=request.getParameter("c_width");
        String Length=request.getParameter("c_length");
        String Height=request.getParameter("c_height");
        String Warranty_period=request.getParameter("c_warranty_period");
        String Vendor_name=request.getParameter("c_vendor_name");
        String Purchase_date=request.getParameter("c_purchase_date");
        String Price=request.getParameter("c_price");
        String Picture=request.getParameter("c_picture");
        
       
         chairbean cbean=new chairbean();
        
        cbean.setC_brand(Brand);
        cbean.setC_model_number(Model_number);
        cbean.setC_type(Type);
        cbean.setC_color(Color);
        cbean.setC_material(Material);
        cbean.setC_width(Width);
        cbean.setC_length(Length);
        cbean.setC_height(Height);
        cbean.setC_warranty_period(Warranty_period);
        cbean.setC_vendor_name(Vendor_name);
        cbean.setC_purchase_date(Purchase_date);
        cbean.setC_price(Price);
        cbean.setC_picture(Picture);
       
        
        boolean flag=assetregistrationdao.creg(cbean);
        if(flag)
        {
            RequestDispatcher rd=request.getRequestDispatcher("furniture.jsp");
            rd.forward(request, response);
        }
        
        
    }

}
