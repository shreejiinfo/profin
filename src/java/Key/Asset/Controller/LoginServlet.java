/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package Key.Asset.Controller;

import Key.Asset.Bean.LoginBean;
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
 * @author home
 */
public class LoginServlet extends HttpServlet {

     @Override
    protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String username = request.getParameter("username");
        String password = request.getParameter("password");

        LoginBean lbean = new LoginBean();
        lbean.setUsername(username);
        lbean.setPassword(password);

        System.out.println("UserName:====" + lbean.getUsername());
        System.out.println("Password:====" + lbean.getPassword());

//        int id=LoginDao.loginAutho(lbean);
        int id = RegistrationDao.dept(lbean);

        HttpSession session = request.getSession();
        if (id == 1) {
            session.setAttribute("id", id);
            RequestDispatcher rd = request.getRequestDispatcher("ophomepage.jsp");
            rd.forward(request, response);

        } else if (id == 2) {
            session.setAttribute("id", id);
            RequestDispatcher rd = request.getRequestDispatcher("purchasehome.jsp");
            rd.forward(request, response);

        } else if (id == 3) {
            session.setAttribute("id", id);
            RequestDispatcher rd = request.getRequestDispatcher("index.jsp");
            rd.forward(request, response);

        } else {
            RequestDispatcher rd = request.getRequestDispatcher("index_2.jsp");
            rd.forward(request, response);
        }

    } 
}
