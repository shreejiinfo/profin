/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package Key.Asset.Controller;

import Key.Asset.Dao.depreciationinfodao;
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
public class depreciationinfoservlet extends HttpServlet {
 @Override
    protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
    
        List userlist=depreciationinfodao.deptdata();
                
        req.setAttribute("user", userlist);
        RequestDispatcher rd=req.getRequestDispatcher("depreciation.jsp");
        rd.forward(req, resp);
       
        
    }

   
}
