/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package Key.Asset.Controller;

import Key.Asset.Dao.RegistrationInfoDao;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
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
public class RegistrationInfoServlet extends HttpServlet {

  @Override
    protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
       
        List registrationinfodata=RegistrationInfoDao.regdata();
    
        request.setAttribute("rdataList",registrationinfodata);
        HttpSession session = request.getSession();
        RequestDispatcher rd=request.getRequestDispatcher("/Admin/RegInfo.jsp");
        rd.forward(request, response);
        

        
    }

    
}
