/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package Key.Asset.Dao;

import Bean.RegistrationBean_1;
import Bean.vendorassessmentBean;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import Key.Asset.Utill.ConnectionUtill;

/**
 *
 * @author Acer
 */
public class vendorDao {
    
    static Connection conn=null;
    static PreparedStatement pst=null;
    
    public static boolean reg(vendorassessmentBean vbean)
    {
        boolean flag=false;
        try
        {
            conn=ConnectionUtill.getconn();
            String rquery="insert into vendor_asset(v_vendor_name,v_company_name,v_address,v_contact,v_date,v_email,v_type_of_business,v_website,v_pricing,v_quality_factor,v_delivery_factor,v_service_factor)values(?,?,?,?,?,?,?,?,?,?,?,?)";
            pst=conn.prepareStatement(rquery);
            pst.setString(1, vbean.getV_vendor_name());
            pst.setString(2, vbean.getV_company_name());
            pst.setString(3, vbean.getV_address());
            pst.setString(4, vbean.getV_contact());
            pst.setString(5, vbean.getV_date());
            pst.setString(6, vbean.getV_email());
            pst.setString(7, vbean.getV_type_of_business());
            pst.setString(8, vbean.getV_website());
            pst.setString(9, vbean.getV_pricing());
            pst.setString(10,vbean.getV_quality_factor() );
            pst.setString(11,vbean.getV_delivery_factor() );
            pst.setString(12,vbean.getV_service_factor() );
          
            
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
