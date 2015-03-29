/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package Key.Asset.Controller;

import Bean.vendorassessmentBean;
import Key.Asset.Dao.vendorDao;
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
public class vendorassessmentServlet extends HttpServlet {

    @Override
    protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        
        String vedor_name=request.getParameter("vendor_name");
        String company_name=request.getParameter("company_name");
        String address=request.getParameter("address");
        String contact=request.getParameter("contact");
        String date=request.getParameter("Date");
        String email=request.getParameter("email");
        String type_of_business=request.getParameter("type_of_business");
        String website=request.getParameter("website");
        String pricing=request.getParameter("pricing");
        String quality_factor=request.getParameter("quality_factor");
        String delivery_factor=request.getParameter("Delivery_Factors");
        String service_factor=request.getParameter("Service_Factors");
        
       
         vendorassessmentBean vbean=new vendorassessmentBean();
        
        vbean.setV_vendor_name(vedor_name);
        vbean.setV_company_name(company_name);
        vbean.setV_address(address);
        vbean.setV_contact(contact);
        vbean.setV_date(date);
        vbean.setV_email(email);
        vbean.setV_type_of_business(type_of_business);
        vbean.setV_website(website);
        vbean.setV_pricing(pricing);
        vbean.setV_quality_factor(quality_factor);
        vbean.setV_delivery_factor(delivery_factor);
        vbean.setV_service_factor(service_factor);
        
       
        
        boolean flag=vendorDao.reg(vbean);
        if(flag)
        {
            RequestDispatcher rd=request.getRequestDispatcher("vendorassessment.jsp");
            rd.forward(request, response);
        }
        
    }
}
