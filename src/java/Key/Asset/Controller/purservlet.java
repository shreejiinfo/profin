/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package Key.Asset.Controller;

import Bean.purbean;
import Key.Asset.Dao.purdao;
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
public class purservlet extends HttpServlet {

   @Override
    protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String firstname=request.getParameter("firstname");
        String lastname=request.getParameter("lastname");
        String Companyname=request.getParameter("company_name");
        String Address=request.getParameter("address");
        String city=request.getParameter("city");
        String State=request.getParameter("state");
        String Country=request.getParameter("country");
        String pincode=request.getParameter("pincode");
        String email=request.getParameter("email");
        String Contact=request.getParameter("contact");
        String Companycontact=request.getParameter("company_contact");
        
       
        purbean cbean=new purbean();
            
        cbean.setFirstname(firstname);
        cbean.setLastname(lastname);
        cbean.setCompanyname(Companyname);
        cbean.setAddress(Address);
        cbean.setCity(city);
        cbean.setState(State);
        cbean.setCountry(Country);
        cbean.setPincode(pincode);
        cbean.setEmail(email);
        cbean.setContact(Contact);
        cbean.setCompanycontact(Companycontact);
                
        
           
        
        boolean flag=purdao.pur(cbean);
        if(flag)
        {
            RequestDispatcher rd=request.getRequestDispatcher("vendor.jsp");
            rd.forward(request, response);
        }
        
    }
        
}
