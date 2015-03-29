/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package Key.Asset.Dao;

import Key.Asset.Bean.CustRegistrationBean;
import Key.Asset.Bean.LaptopInfoBean;
import Key.Asset.Bean.PrinterInfoBean;
import Key.Asset.Bean.RegistrationInfoBean;
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
public class RegistrationInfoDao {
    
    static ResultSet rs=null;
    static Statement smt=null;
    static Connection conn=null;
    
    public static List regdata(){
        List rdata=new ArrayList();
        try{
            conn=ConnectionUtill.getconn();
            String squery="select  reg_name, reg_contact, department, reg_date_of_joining, reg_email, reg_password from registration";
            smt=conn.createStatement();
            rs=smt.executeQuery(squery);
            while(rs.next()){
                RegistrationInfoBean rbean=new RegistrationInfoBean();
                rbean.setReg_name(rs.getString(1));
                rbean.setReg_contact(rs.getString(2));
                rbean.setDepartment(rs.getString(3));
                rbean.setReg_date_of_joining(rs.getString(4));
                rbean.setReg_email(rs.getString(5));
                rbean.setReg_password(rs.getString(6));
                
                rdata.add(rbean);
               
            }
            
            
        }catch(SQLException se){
            System.out.println("Display Error.....");
        }
        return rdata;
    }

    
    public static List laptopdata()
    {
        List ldata=new ArrayList();
        try{
            conn= ConnectionUtill.getconn();
            String lquery="select L_Brand, L_Type, L_price, L_Purchase_date, L_Vendor_name, L_Picture from  laptop ";
            smt=conn.createStatement();
            rs=smt.executeQuery(lquery);
            System.out.println("Execute Statement......");
            while(rs.next()){
                LaptopInfoBean lbean=new LaptopInfoBean();
         
                lbean.setLaptop_brand(rs.getString(1));
                lbean.setLaptop_type(rs.getString(2));
                lbean.setLaptop_price(rs.getString(3));
                lbean.setP_date(rs.getString(4));
                lbean.setV_name(rs.getString(5));
                lbean.setL_picture(rs.getString(6));
                
                ldata.add(lbean);
            }
            System.out.println("Execute Statement2......");
        }catch(SQLException se){
            System.out.println("Display Error.....");
        }
        return ldata;
    }
    
    
    public static List printerdata()
    {
        List pdata=new ArrayList();
        try{
            conn= ConnectionUtill.getconn();
            String pquery="select  p_brand, p_model_number, p_price,  p_purchase_date, p_vendor_name, p_picture from printer ";
            smt=conn.createStatement();
            rs=smt.executeQuery(pquery);
            while(rs.next()){
                
                PrinterInfoBean pbean=new PrinterInfoBean();
                pbean.setModel_number(rs.getString(1));
                pbean.setPrinter_brand(rs.getString(2));
                pbean.setPrinter_price(rs.getString(3));
                pbean.setPurchase_date(rs.getString(4));
                pbean.setVendor_name(rs.getString(5));
                pbean.setPrinter_picture(rs.getString(6));
                
                pdata.add(pbean);
                
            }
        }catch(SQLException se){
            System.out.println("Display Error.....");
        }
        return pdata;
    }
    
}
