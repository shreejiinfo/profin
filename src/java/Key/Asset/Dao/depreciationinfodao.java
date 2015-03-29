/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package Key.Asset.Dao;

import bean.depreciationinfobean;
import Key.Asset.Utill.ConnectionUtill;
import bean.depreciationinfobean;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;


 
public class depreciationinfodao {
    static ResultSet rs=null;
    static Statement smt=null;
    static Connection conn=null;
    
    public static List deptdata(){
        List ddata=new ArrayList();
        try{
            conn=ConnectionUtill.getconn();
            String squery="select L_type,L_price from laptop";
            smt=conn.createStatement();
            rs=smt.executeQuery(squery);
            while(rs.next()){
                
                depreciationinfobean dbean=new depreciationinfobean();
                dbean.setAsset_name(rs.getString(1));
                dbean.setPrice(rs.getString(2));
                
                ddata.add(dbean);
                
            }
            
            
        }catch(SQLException se){
            System.out.println("Display Error.....");
        }
        return ddata;
    }

    
}
