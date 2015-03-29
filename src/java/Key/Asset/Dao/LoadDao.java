/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package Key.Asset.Dao;

import Bean.VCityBean;
import Bean.VCountryBean;
import Bean.VStateBean;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import Key.Asset.Utill.ConnectionUtill;

/**
 *
 * @author home
 */
public class LoadDao {
    
    static ResultSet rs=null;
    static Statement smt=null;
    static Connection conn=null;
    
    public static List country(){
        List cdata=new ArrayList();
        try{
            conn=ConnectionUtill.getconn();
            String squery="select c_id,c_name from country";
            smt=conn.createStatement();
            rs=smt.executeQuery(squery);
            while(rs.next()){
                VCountryBean cbean=new VCountryBean();
                cbean.setC_id(rs.getInt(1));
                cbean.setC_name(rs.getString(2));
                
                cdata.add(cbean);
            }
            
            
        }catch(SQLException se){
            System.out.println("Display Error.....");
        }
        return cdata;
    }
    
    public static List state(){
        List sdata=new ArrayList();
        try{
            conn=ConnectionUtill.getconn();
            String squery="select s_id,s_name from state";
            smt=conn.createStatement();
            rs=smt.executeQuery(squery);
            while(rs.next()){
                VStateBean sbean=new VStateBean();
                sbean.setS_id(rs.getInt(1));
                sbean.setS_name(rs.getString(2));
                
                sdata.add(sbean);
            }
            
            
        }catch(SQLException se){
            System.out.println("Display Error.....");
        }
        return sdata;
    }
    
    
    public static List city(){
        List citydata=new ArrayList();
        try{
            conn=ConnectionUtill.getconn();
            String squery="select city_id,city_name from city";
            smt=conn.createStatement();
            rs=smt.executeQuery(squery);
            while(rs.next()){
                VCityBean citybean=new VCityBean();
                citybean.setCity_id(rs.getInt(1));
                citybean.setCity_name(rs.getString(2));
                
                
                citydata.add(citybean);
                 }
            
            
        }catch(SQLException se){
            System.out.println("Display Error.....");
        }
        return citydata;
    }
    
}
