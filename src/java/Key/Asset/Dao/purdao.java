/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package Key.Asset.Dao;

import Bean.purbean;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import Key.Asset.Utill.ConnectionUtill;

/**
 *
 * @author baroda
 */
public class purdao {
    static Connection conn=null;
    static PreparedStatement pst=null;
    
    public static boolean pur(purbean pbean)
    {
        boolean flag=false;
        try
        {
            conn=ConnectionUtill.getconn();
            String rquery="insert vendor(firstname,lastname,companyname,address,city,country,state,pincode,email,contact,companycontact)values(?,?,?,?,?,?,?,?,?,?,?)";
            pst=conn.prepareStatement(rquery);
            pst.setString(1, pbean.getFirstname());
            pst.setString(2, pbean.getLastname());
            pst.setString(3, pbean.getCompanyname());
            pst.setString(4, pbean.getAddress());
            pst.setString(5, pbean.getCity());
            pst.setString(6, pbean.getState());
            pst.setString(7, pbean.getCountry());
            pst.setString(8, pbean.getPincode());
            pst.setString(9, pbean.getEmail());
            pst.setString(10, pbean.getContact());
            pst.setString(11, pbean.getCompanycontact());
            
            System.out.println("1="+pbean.getFirstname()) ;
            System.out.println("2="+pbean.getLastname()) ;
            System.out.println("3="+pbean.getCompanyname()) ;
            System.out.println("4="+pbean.getAddress()) ;
            System.out.println("5="+pbean.getCity()) ;
            System.out.println("6="+pbean.getState()) ;
            System.out.println("7="+pbean.getCountry()) ;
            System.out.println("8="+pbean.getPincode()) ;
            System.out.println("9="+pbean.getEmail()) ;
            System.out.println("10="+pbean.getContact()) ;
            System.out.println("11="+pbean.getCompanycontact()) ;
            
            int i=pst.executeUpdate();
            if(i>0)
            {
                flag=true;
                
            }
       
    }catch(SQLException se)
    {
        System.out.println("Insertion Error......");
        
    }
    return flag;
}
    
}