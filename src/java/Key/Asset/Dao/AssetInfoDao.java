/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package Key.Asset.Dao;

import Key.Asset.Bean.LaptopInfoBean;
import Key.Asset.Bean.RegistrationInfoBean;
import static Key.Asset.Dao.RegistrationInfoDao.conn;
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
public class AssetInfoDao {
    
    static ResultSet rs=null;
    static Statement smt=null;
    static Connection conn=null;
    
    
     public static List laptopdata(){
        List rdata=new ArrayList();
        try{
            conn=ConnectionUtill.getconn();
            String squery="select   L_Brand,  L_Type, L_price, L_Purchase_date, L_Vendor_name, L_Picture from laptop";
            smt=conn.createStatement();
            rs=smt.executeQuery(squery);
            while(rs.next()){
                
                LaptopInfoBean lbean=new LaptopInfoBean();
                lbean.setLaptop_brand(rs.getString(1));
                lbean.setLaptop_type(rs.getString(2));
                lbean.setLaptop_price(rs.getString(3));
                lbean.setP_date(rs.getString(4));
                lbean.setV_name(rs.getString(5));
                lbean.setL_picture(rs.getString(6));
                
                rdata.add(lbean);
               
            }
            
            
        }catch(SQLException se){
            System.out.println("Display Error.....");
        }
        return rdata;
    }
    
}
