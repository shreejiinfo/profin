/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package Key.Asset.Dao;

import Key.Asset.Bean.AdminLoginBean;
import Key.Asset.Utill.ConnectionUtill;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

/**
 *
 * @author VIKASs
 */
public class AdminLoginDao {
    
    public static Connection conn = null;
    public static Statement smt = null;
    public static ResultSet rs = null;

    public static boolean loginAutho(AdminLoginBean lbean) {
        boolean flag = false;
        conn = ConnectionUtill.getconn();
        if (conn != null) {
            System.out.println("UserName:====" + lbean.getUsername());
            System.out.println("Password:====" + lbean.getPassword());

            try {
                smt = conn.createStatement();
                String iquery = "select * from admin_master where username='" + lbean.getUsername() + "' and password='" + lbean.getPassword() + "'";
                System.out.println("query" + iquery);
                rs = smt.executeQuery(iquery);
                while (rs.next()) {
                    flag = true;
                }

            } catch (SQLException se) {
                System.out.println("Login Error........");

            }

        }
        return flag;
    }

    
}
