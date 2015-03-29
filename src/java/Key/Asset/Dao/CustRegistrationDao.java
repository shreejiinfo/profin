/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package Key.Asset.Dao;

import Key.Asset.Bean.CustRegistrationBean;
import Key.Asset.Utill.ConnectionUtill;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author home
 */
public class CustRegistrationDao {
    
    static ResultSet rs=null;
    static Statement smt=null;
    static Connection conn=null;
    
    public static List custdata(){
        List cdata=new ArrayList();
        try{
            conn=ConnectionUtill.getconn();
            String squery="select  cust_firstname, cust_contact, cust_email, cust_password,cust_re_enter_password from cust_registration";
            smt=conn.createStatement();
            rs=smt.executeQuery(squery);
            while(rs.next()){
                CustRegistrationBean cbean=new CustRegistrationBean();
                cbean.setCust_firstname(rs.getString(1));
                cbean.setCust_contact(rs.getString(2));
                cbean.setCust_email(rs.getString(3));
                cbean.setCust_password(rs.getString(4));
                cbean.setCust_re_enter_password(rs.getString(5));
                
                cdata.add(cbean);
            }
            
            
        }catch(SQLException se){
            System.out.println("Display Error.....");
        }
        return cdata;
    }

    
}
