/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package Key.Asset.Controller;

import bean.printerbean;
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
public class PrinterServlet extends HttpServlet {
 @Override
    protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        
        String p_Brand=request.getParameter("p_Brand");
        String model_number=request.getParameter("model_number");
        String type=request.getParameter("type");
        String height=request.getParameter("Height");
        String width=request.getParameter("Width");
        String dimension=request.getParameter("dimension");
        String vendor_name=request.getParameter("vendor_name");
        String puchase_date=request.getParameter("purchase_date");
        String warranty=request.getParameter("warranty");
        String price=request.getParameter("price");
        String picture=request.getParameter("p_Picture");
        
        printerbean pbean=new printerbean();
        
        pbean.setP_Brand(p_Brand);
        pbean.setP_Model_number(model_number);
        pbean.setP_Type(type);
        pbean.setP_Height(height);
        pbean.setP_Width(width);
        pbean.setP_Dimension(dimension);
        pbean.setP_Vendor_name(vendor_name);
        pbean.setP_Purchase_date(puchase_date);
        pbean.setP_warranty_period(warranty);
        pbean.setP_Price(price);
        pbean.setP_picture(picture);
        
       
        
        boolean flag=assetregistrationdao.preg(pbean);
        if(flag)
        {
            RequestDispatcher rd=request.getRequestDispatcher("electronics.jsp");
            rd.forward(request, response);
        }
        
        
    }
   
   
}
