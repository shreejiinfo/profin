/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package Key.Asset.Controller;

import Key.Asset.Bean.RegistrationBean;
import Key.Asset.Dao.RegistrationDao;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author VIKAS
 */
public class RegistrationServlet extends HttpServlet {

   @Override
    protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        
        String name=request.getParameter("name");
        String contact=request.getParameter("contact");
        String street=request.getParameter("street");
        String designation=request.getParameter("designation");
        String qualification=request.getParameter("qualification");
        String date_of_joining=request.getParameter("joining");
        String blood_group=request.getParameter("blood_group");
        String gender=request.getParameter("gender");
        String birthdate=request.getParameter("birthdate");
        String nationality=request.getParameter("nationality");
        String email=request.getParameter("email");
        String password=request.getParameter("password");
        String re_enter_password=request.getParameter("re_enter_password");
        String department=request.getParameter("department");
       
            RegistrationBean rbean=new RegistrationBean();
        
        rbean.setReg_name(name);
        rbean.setReg_contact(contact);
        rbean.setReg_street(street);
        rbean.setReg_designation(designation);
        rbean.setReg_qaulification(qualification);
        rbean.setReg_date_of_joining(date_of_joining);
        rbean.setReg_blood_group(blood_group);
        rbean.setReg_gender(gender);
        rbean.setReg_birthdate(birthdate);
        rbean.setReg_nationality(nationality);
        rbean.setReg_email(email);
        rbean.setReg_password(password);
        rbean.setReg_re_enter_password(re_enter_password);
        rbean.setDepartment(department);
        
        boolean flag=RegistrationDao.reg(rbean);
        HttpSession session = request.getSession();
        if(flag)
        {
            RequestDispatcher rd=request.getRequestDispatcher("Admin/registration.jsp");
            rd.forward(request, response);
        }
        
    }
     
}
