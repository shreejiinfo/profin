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

/**
 *
 * @author VIKAS
 */
public class LaptopInfoServlet extends HttpServlet {

    @Override
    protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        
        List ldata=RegistrationInfoDao.laptopdata();
        System.out.println("List Size......"+ldata.size());
        request.setAttribute("ldatalist",ldata);
//        HttpSession session = request.getSession();
        RequestDispatcher rd=request.getRequestDispatcher("Admin/LaptopInfo.jsp");
        rd.forward(request, response);
        

    }

}
