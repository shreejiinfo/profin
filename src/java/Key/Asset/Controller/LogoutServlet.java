/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package Key.Asset.Controller;

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
 * @author home
 */
public class LogoutServlet extends HttpServlet {

    @Override
    protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
     
        HttpSession session=request.getSession();
        System.out.println("user Exist:==="+session.getAttribute("id"));
        session.removeAttribute("id");
        System.out.println("REmove User:==="+session.getAttribute("id"));
        session.invalidate();

        RequestDispatcher rd=request.getRequestDispatcher("/Admin/index.jsp");
        rd.forward(request, response);
    }

    
}
