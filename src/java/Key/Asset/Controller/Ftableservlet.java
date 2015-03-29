/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package Key.Asset.Controller;

import bean.Ftablebean;
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
public class Ftableservlet extends HttpServlet {

    @Override
    protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        
        String T_Brand=request.getParameter("T_Brand");
        String T_Type=request.getParameter("T_Type");
        String T_Model_number=request.getParameter("T_Model_number");
        String T_Color=request.getParameter("T_Color");
        String T_Material=request.getParameter("T_Material");
        String T_Width=request.getParameter("T_Width");
        String T_Length=request.getParameter("T_Length");
        String T_Depth=request.getParameter("T_Depth");
        String T_Warranty_period=request.getParameter("T_Warranty_period");
        String T_Vendor_name=request.getParameter("T_Vendor_name");
        String T_Purchase_date=request.getParameter("T_Purchase_date");
        String T_Price=request.getParameter("T_Price");
        String T_Picture=request.getParameter("T_Picture");
        
       
         Ftablebean tbean=new Ftablebean();
        
        tbean.setT_Brand(T_Brand);
        tbean.setT_Type(T_Type);
        tbean.setT_Model_number(T_Model_number);
        tbean.setT_Color(T_Color);
        tbean.setT_Material(T_Material);
        tbean.setT_Width(T_Width);
        tbean.setT_Length(T_Length);
        tbean.setT_Depth(T_Depth);
        tbean.setT_Warranty_period(T_Warranty_period);
        tbean.setT_Vendor_name(T_Vendor_name);
        tbean.setT_Purchase_date(T_Purchase_date);
        tbean.setT_Price(T_Price);
        tbean.setT_Picture(T_Picture);
       
        
        boolean flag=assetregistrationdao.treg(tbean);
        if(flag)
        {
            RequestDispatcher rd=request.getRequestDispatcher("furniture.jsp");
            rd.forward(request, response);
        }
        
        
    }

}
