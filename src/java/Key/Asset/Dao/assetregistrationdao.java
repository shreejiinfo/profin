/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package Key.Asset.Dao;

import bean.Assetregistrationbean;
import bean.Ftablebean;
import bean.chairbean;
import bean.printerbean;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import Key.Asset.Utill.ConnectionUtill;

/**
 *
 * @author VIKAS
 */
public class assetregistrationdao {
     static Connection conn = null;
    static PreparedStatement pst = null;
    static ResultSet rs = null;
    static Statement smt = null;
 public static boolean areg(Assetregistrationbean abean) {
        boolean flag = false;
        try {
            conn =ConnectionUtill.getconn();
            String aquery = "insert into laptop(L_Brand,L_Type,L_Processor,L_Color,L_RAM,L_HDD,L_Operating_system,L_Speed,L_Cache,L_Screen_size,L_Bluetooth,L_Battery_life,L_Warranty_period,L_Purchase_date,L_Price,L_Vendor_name,L_Picture)values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
            pst = conn.prepareStatement(aquery);
            pst.setString(1, abean.getL_Brand());
            pst.setString(2, abean.getL_Type());
            pst.setString(3, abean.getL_Processor());
            pst.setString(4, abean.getL_Color());
            pst.setString(5, abean.getL_RAM());
            pst.setString(6, abean.getL_HDD());
            pst.setString(7, abean.getL_Operating_system());
            pst.setString(8, abean.getL_Speed());
            pst.setString(9, abean.getL_Cache());
              pst.setString(10, abean.getL_Screen_size());
               pst.setString(11, abean.getL_Bluetooth());
                pst.setString(12, abean.getL_Battery_life());
                 pst.setString(13, abean.getL_Warranty_period());
                  pst.setString(14, abean.getL_Purchase_date());
                   pst.setString(15, abean.getL_Price());
                    pst.setString(16, abean.getL_Vendor_name());
                     pst.setString(17, abean.getL_Picture());
            
            System.out.println("1:===" + abean.getL_Brand());
            System.out.println("2:===" + abean.getL_Type());
            System.out.println("3:===" + abean.getL_Processor());
            System.out.println("4:===" + abean.getL_Color());
            System.out.println("5:===" + abean.getL_RAM());
            System.out.println("6:===" + abean.getL_HDD());
            System.out.println("7:===" + abean.getL_Operating_system());
            System.out.println("8:===" + abean.getL_Speed());
            System.out.println("9:===" + abean.getL_Cache());
            System.out.println("10:===" + abean.getL_Screen_size());
            System.out.println("11:===" + abean.getL_Bluetooth());
            System.out.println("12:===" + abean.getL_Battery_life());
            System.out.println("13:===" + abean.getL_Warranty_period());
            System.out.println("14:===" + abean.getL_Purchase_date());
            System.out.println("15:===" + abean.getL_Price());
            System.out.println("16:===" + abean.getL_Vendor_name());
            System.out.println("17:===" + abean.getL_Picture());
           
            int i = pst.executeUpdate();
            if (i > 0) {
                flag = true;

            }

        } catch (SQLException se) {
            System.out.println("Insertion Error......");

        }
        return flag;
    }
   
         public static boolean treg(Ftablebean tbean) {
        boolean flag = false;
        try {
            conn =ConnectionUtill.getconn();
            String tquery = "insert into Ftable1(T_Brand,T_Type,T_Model_number,T_Color,T_Material,T_Width,T_Length,T_Depth,T_Warranty_period,T_Vendor_name,T_Purchase_date,T_Price,T_Picture)values(?,?,?,?,?,?,?,?,?,?,?,?,?)";
            pst = conn.prepareStatement(tquery);
            pst.setString(1, tbean.getT_Brand());
            pst.setString(2, tbean.getT_Type());
            pst.setString(3, tbean.getT_Model_number());
            pst.setString(4, tbean.getT_Color());
            pst.setString(5, tbean.getT_Material());
            pst.setString(6, tbean.getT_Width());
            pst.setString(7, tbean.getT_Length());
            pst.setString(8, tbean.getT_Depth());
            pst.setString(9, tbean.getT_Warranty_period());
            pst.setString(10, tbean.getT_Vendor_name());
            pst.setString(11, tbean.getT_Purchase_date());
            pst.setString(12, tbean.getT_Price());
            pst.setString(13, tbean.getT_Picture());
            
            System.out.println("1:===" + tbean.getT_Brand());
            System.out.println("2:===" + tbean.getT_Type());
            System.out.println("3:===" + tbean.getT_Model_number());
            System.out.println("4:===" + tbean.getT_Color());
            System.out.println("5:===" + tbean.getT_Material());
            System.out.println("6:===" + tbean.getT_Width());
            System.out.println("7:===" + tbean.getT_Length());
            System.out.println("8:===" + tbean.getT_Depth());
            System.out.println("9:===" + tbean.getT_Warranty_period());
            System.out.println("10:===" + tbean.getT_Vendor_name());
            System.out.println("11:===" + tbean.getT_Purchase_date());
            System.out.println("12:===" + tbean.getT_Price());
            System.out.println("13:===" + tbean.getT_Picture());
                       
            int i = pst.executeUpdate();
            if (i > 0) {
                flag = true;

            }

        } catch (SQLException se) {
            System.out.println("Insertion Error......");

        }
        return flag;
    }
 
public static boolean preg(printerbean pbean) {
        boolean flag = false;
        try {
            conn =ConnectionUtill.getconn();
            String pquery = "insert into printer(p_brand ,p_model_number ,p_type,p_height ,p_width ,p_dimension ,p_vendor_name ,p_purchase_date ,p_warranty_period ,p_price ,p_picture )values(?,?,?,?,?,?,?,?,?,?,?)";
            pst = conn.prepareStatement(pquery);
            pst.setString(1, pbean.getP_Brand());
            pst.setString(2, pbean.getP_Model_number());
            pst.setString(3, pbean.getP_Type());
            pst.setString(4, pbean.getP_Height());
            pst.setString(5, pbean.getP_Width());
            pst.setString(6, pbean.getP_Dimension());
            pst.setString(7, pbean.getP_Vendor_name());
            pst.setString(8, pbean.getP_Purchase_date());
            pst.setString(9, pbean.getP_warranty_period());
            pst.setString(10, pbean.getP_Price());
            pst.setString(11, pbean.getP_picture());
                       
            int i = pst.executeUpdate();
            if (i > 0) {
                flag = true;

            }

        } catch (SQLException se) {
            System.out.println("Insertion Error......");

        }
        return flag;
    }
 
public static boolean creg(chairbean cbean) {
        boolean flag = false;
        try {
            conn =ConnectionUtill.getconn();
            String cquery = "insert into chair(c_brand,c_model_number,c_type,c_color,c_material,c_width,c_length,c_height,c_warranty_period,c_vendor_name,c_purchase_date,c_price,c_picture)values(?,?,?,?,?,?,?,?,?,?,?,?,?)";
            pst = conn.prepareStatement(cquery);
            pst.setString(1, cbean.getC_brand());
            pst.setString(2, cbean.getC_model_number());
            pst.setString(3, cbean.getC_type());
            pst.setString(4, cbean.getC_color());
            pst.setString(5, cbean.getC_material());
            pst.setString(6, cbean.getC_width());
            pst.setString(7, cbean.getC_length());
            pst.setString(8, cbean.getC_height());
            pst.setString(9, cbean.getC_warranty_period());
            pst.setString(10, cbean.getC_vendor_name());
            pst.setString(11, cbean.getC_purchase_date());
            pst.setString(12, cbean.getC_price());
            pst.setString(13, cbean.getC_picture());
            
            System.out.println("1:===" + cbean.getC_brand());
            System.out.println("2:===" + cbean.getC_model_number());
            System.out.println("3:===" + cbean.getC_type());
            System.out.println("4:===" + cbean.getC_color());
            System.out.println("5:===" + cbean.getC_material());
            System.out.println("6:===" + cbean.getC_width());
            System.out.println("7:===" + cbean.getC_length());
            System.out.println("8:===" + cbean.getC_height());
            System.out.println("9:===" + cbean.getC_warranty_period());
            System.out.println("10:===" + cbean.getC_vendor_name());
            System.out.println("11:===" + cbean.getC_purchase_date());
            System.out.println("12:===" + cbean.getC_price());
            System.out.println("13:===" + cbean.getC_picture());
                       
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
