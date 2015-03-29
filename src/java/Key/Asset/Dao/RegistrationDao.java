/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Key.Asset.Dao;

import Key.Asset.Bean.CustRegistrationBean;
import Key.Asset.Bean.RegistrationBean;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import Key.Asset.Utill.ConnectionUtill;

/**
 *
 * @author home
 */
public class RegistrationDao {

    static Connection conn = null;
    static PreparedStatement pst = null;
    

    public static boolean reg(RegistrationBean rbean) {
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
            System.out.println("2:===" + rbean.getReg_contact());
            System.out.println("3:===" + rbean.getReg_street());
            System.out.println("4:===" + rbean.getReg_designation());
            System.out.println("5:===" + rbean.getReg_qaulification());
            System.out.println("6:===" + rbean.getReg_date_of_joining());
            System.out.println("7:===" + rbean.getReg_blood_group());
            System.out.println("8:===" + rbean.getReg_gender());
            System.out.println("9:===" + rbean.getReg_birthdate());
            System.out.println("10:===" + rbean.getReg_nationality());
            System.out.println("11:===" + rbean.getReg_email());
            System.out.println("12:===" + rbean.getReg_password());
            System.out.println("13:===" + rbean.getReg_re_enter_password());
            System.out.println("14:===" + rbean.getReg_city());
            System.out.println("15:===" + rbean.getDepartment());
            
            
            int i = pst.executeUpdate();
            if (i > 0) {
                flag = true;

            }

        } catch (SQLException se) {
            System.out.println("Insertion Error......");

        }
        return flag;
    }

    
}
