/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package Key.Asset.Controller;

import bean.Assetregistrationbean;
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
public class Assetregistrationservlet extends HttpServlet {
 @Override
    protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        
        
        String L_Brand=request.getParameter("L_Brand");
        String L_Type=request.getParameter("L_Type");
        String L_Processor=request.getParameter("L_Processor");
        String L_Color=request.getParameter("L_Color");
        String L_RAM=request.getParameter("L_RAM");
        String L_HDD=request.getParameter("L_HDD");
        String L_Operating_system=request.getParameter("L_Operating_system");
        String L_Speed=request.getParameter("L_Speed");
        String L_Cache=request.getParameter("L_Cache");
        String L_Screen_size=request.getParameter("L_Screen_size");
        String L_Bluetooth=request.getParameter("L_Bluetooth");
        String L_Battery_life=request.getParameter("L_Battery_life");
        String L_Warranty_period=request.getParameter("L_Warranty_period");
        String L_Purchase_date=request.getParameter("L_Purchase_period");
        String L_Price=request.getParameter("L_Price");
        String L_Vendor_name=request.getParameter("L_Vendor_name");
        String L_Picture=request.getParameter("L_Picture");
        
       
         Assetregistrationbean abean=new Assetregistrationbean();
        
        abean.setL_Brand(L_Brand);
        abean.setL_Type(L_Type);
        abean.setL_Processor(L_Processor);
        abean.setL_Color(L_Color);
        abean.setL_RAM(L_RAM);
        abean.setL_HDD(L_HDD);
        abean.setL_Operating_system(L_Operating_system);
        abean.setL_Speed(L_Speed);
        abean.setL_Cache(L_Cache);
        abean.setL_Screen_size(L_Screen_size);
        abean.setL_Bluetooth(L_Bluetooth);
        abean.setL_Battery_life(L_Battery_life);
        abean.setL_Warranty_period(L_Warranty_period);
        abean.setL_Purchase_date(L_Purchase_date);
        abean.setL_Price(L_Price);
        abean.setL_Vendor_name(L_Vendor_name);
        abean.setL_Picture(L_Picture);
       
        
        boolean flag=assetregistrationdao.areg(abean);
        if(flag)
        {
            RequestDispatcher rd=request.getRequestDispatcher("electronics.jsp");
            rd.forward(request, response);
        }
        
        
    }

   
}
