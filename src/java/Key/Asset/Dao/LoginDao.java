/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package Key.Asset.Dao;

import Bean.LoginBean;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import Key.Asset.Utill.ConnectionUtill;

/**
 *
 * @author home
 */
public class LoginDao {
 
     public static Connection conn = null;
    public static Statement smt = null;
    public static ResultSet rs = null;

    public static int loginAutho(LoginBean lbean) {
        int id=0;
        boolean flag = false;
        conn = ConnectionUtill.getconn();
        if (conn != null) {
            System.out.println("UserName:====" + lbean.getUsername());
            System.out.println("Password:====" + lbean.getPassword());

            try {
                smt = conn.createStatement();
                String iquery = "select admin_id from admin_master where username='" + lbean.getUsername() + "' and password='" + lbean.getPassword() + "'";
                System.out.println("query" + iquery);
                rs = smt.executeQuery(iquery);
                while (rs.next()) {
                    id=Integer.parseInt(rs.getString(1));
                }

            } catch (SQLException se) {
                System.out.println("Login Error........");

            }

        }
        return id;
    }

}
