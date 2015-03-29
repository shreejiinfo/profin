/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Key.Asset.Dao;

import Bean.Cust_registrationBean;
import Bean.LoginBean;
import Bean.RegistrationBean_1;
import static Key.Asset.Dao.LoginDao.rs;
import static Key.Asset.Dao.LoginDao.smt;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import Key.Asset.Utill.ConnectionUtill;

/**
 *
 * @author home
 */
public class VRegistrationDao {

    static Connection conn = null;
    static PreparedStatement pst = null;
    static ResultSet rs = null;
    static Statement smt = null;

    public static boolean reg(RegistrationBean_1 rbean) {
        boolean flag = false;
        try {
            conn = ConnectionUtill.getconn();
            String rquery = "insert into registration(reg_name,reg_contact,reg_street,reg_designation,reg_qualification,reg_date_of_joining,reg_blood_group,reg_gender,reg_birthdate,reg_nationality,reg_email,reg_password,reg_re_enter_password,city_id,department)values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
            pst = conn.prepareStatement(rquery);
            pst.setString(1, rbean.getReg_name());
            pst.setString(2, rbean.getReg_contact());
            pst.setString(3, rbean.getReg_street());
            pst.setString(4, rbean.getReg_designation());
            pst.setString(5, rbean.getReg_qaulification());
            pst.setString(6, rbean.getReg_date_of_joining());
            pst.setString(7, rbean.getReg_blood_group());
            pst.setString(8, rbean.getReg_gender());
            pst.setString(9, rbean.getReg_birthdate());
            pst.setString(10, rbean.getReg_nationality());
            pst.setString(11, rbean.getReg_email());
            pst.setString(12, rbean.getReg_password());
            pst.setString(13, rbean.getReg_re_enter_password());
            pst.setString(14, rbean.getReg_city());
            pst.setString(15, rbean.getDepartment());

            System.out.println("1:===" + rbean.getReg_name());
            System.out.println("2:===" + rbean.getReg_name());
            System.out.println("3:===" + rbean.getReg_name());
            System.out.println("4:===" + rbean.getReg_name());
            System.out.println("5:===" + rbean.getReg_name());
            System.out.println("6:===" + rbean.getReg_name());

            int i = pst.executeUpdate();
            if (i > 0) {
                flag = true;

            }

        } catch (SQLException se) {
            System.out.println("Insertion Error......");

        }
        return flag;
    }

    public static boolean cust(Cust_registrationBean cbean) {
        boolean flag = false;
        try {
            conn = ConnectionUtill.getconn();
            String cquery = "insert into cust_registration(cust_firstname,cust_lastname,cust_contact,cust_city,cust_state,cust_country,cust_gender,cust_birthdate,cust_email,cust_re_enter_email,cust_password,cust_re_enter_password)values(?,?,?,?,?,?,?,?,?,?,?,?)";
            pst = conn.prepareStatement(cquery);

            System.out.println("Flag:=======" + flag);

            System.out.println("1:=====" + cbean.getCust_firstname());
            System.out.println("2:=====" + cbean.getCust_lastname());
            System.out.println("3:=====" + cbean.getCust_contact());
            System.out.println("4:=====" + cbean.getCust_city());
            System.out.println("5:=====" + cbean.getCust_state());
            System.out.println("6:=====" + cbean.getCust_country());
            System.out.println("7:=====" + cbean.getCust_gender());
            System.out.println("8:=====" + cbean.getCust_birthdate());
            System.out.println("9:=====" + cbean.getCust_email());
            System.out.println("10:=====" + cbean.getCust_re_enter_email());
            System.out.println("11:=====" + cbean.getCust_password());
            System.out.println("12:=====" + cbean.getCust_re_enter_password());
            pst.setString(1, cbean.getCust_firstname());
            pst.setString(2, cbean.getCust_lastname());
            pst.setString(3, cbean.getCust_contact());
            pst.setString(4, cbean.getCust_city());
            pst.setString(5, cbean.getCust_state());
            pst.setString(6, cbean.getCust_country());
            pst.setString(7, cbean.getCust_gender());
            pst.setString(8, cbean.getCust_birthdate());
            pst.setString(9, cbean.getCust_email());
            pst.setString(10, cbean.getCust_re_enter_email());
            pst.setString(11, cbean.getCust_password());
            pst.setString(12, cbean.getCust_re_enter_password());

//            System.out.println("Flag After Query:======="+flag);
            int i = pst.executeUpdate();
            System.out.println("Flag After Query:=======" + flag);
            if (i > 0) {
                flag = true;

            }

        } catch (SQLException se) {
            System.out.println("Insertion Error......");

        }
        return flag;
    }

    public static int dept(LoginBean lbean) {
        int id = 0;

        try {
            conn = ConnectionUtill.getconn();
            String username = lbean.getUsername();
            String password = lbean.getPassword();
            System.out.println("UserName ON DAO:====" +username);
            System.out.println("Password ON DAO:====" +password); 

            String cquery = "select department from registration where reg_email='" + username + "' and reg_password='" + password + "'";
            rs = smt.executeQuery(cquery);
            while (rs.next()) {
                System.out.println("Welcome in loop");
                id = Integer.parseInt(rs.getString(1));
                System.out.println("ID:====="+id);
            }

        } catch (SQLException se) {
            System.out.println("Insertion Error......");

        }
        return id;
    }

}
