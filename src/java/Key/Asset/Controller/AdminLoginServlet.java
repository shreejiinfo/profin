/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package Key.Asset.Controller;

import Key.Asset.Bean.AdminLoginBean;
import Key.Asset.Dao.AdminLoginDao;
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
public class AdminLoginServlet extends HttpServlet {

    @Override
    protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        
        String username=request.getParameter("username");
        String password=request.getParameter("password");
        
        AdminLoginBean lbean=new AdminLoginBean();
        lbean.setUsername(username);
        lbean.setPassword(password);
        
        System.out.println("UserName:===="+lbean.getUsername());
        System.out.println("Password:===="+lbean.getPassword());
        
        boolean flag=AdminLoginDao.loginAutho(lbean);
        
        HttpSession session = request.getSession();
        if(flag)
        {
//            request.setAttribute("user", username);
            RequestDispatcher rd=request.getRequestDispatcher("Admin/home.jsp");
            rd.forward(request, response);
           
        }
        else{
            RequestDispatcher rd=request.getRequestDispatcher("Admin/index.jsp");
            rd.forward(request, response);
        }
        
        
        
    }

}
