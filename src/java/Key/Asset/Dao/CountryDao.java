/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package Key.Asset.Dao;

import Bean.VCountryBean;
import Key.Asset.Utill.ConnectionUtill;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Bhumi
 */
public class CountryDao {
        static Connection conn=null;
    static Statement stmt=null;
    static PreparedStatement pst=null;
    static ResultSet rs=null;
    static boolean flag=false;
    
    public static boolean countryInsert(VCountryBean bean)
    {
        try{
            conn=ConnectionUtill.getconn();
            //stmt=conn.createStatement();
            String insert="insert into Country(c_name) values(?)";
            //int i=stmt.executeUpdate(insert);
            pst=conn.prepareStatement(insert);
            pst.setString(1, bean.getC_name());
            int i=pst.executeUpdate();
                    
            if(i>0)
            {
                flag=true;
                System.out.println("inserted data");
            }else
            {
                System.out.println("not inserted");         
            }
        }catch(SQLException e)
        {
            e.printStackTrace();
        }
        return flag;
        
    }
    public static List countryShow()
    {
        List countryList=new ArrayList();
        try{
            VCountryBean bean=null;
            conn=ConnectionUtill.getconn();
            stmt=conn.createStatement();
            String select="select * from Country";
            rs=stmt.executeQuery(select);
            while (rs.next()) {
                
             bean=new VCountryBean();
             bean.setC_id(rs.getInt(1));
             bean.setC_name(rs.getString(2));
             countryList.add(bean);
            }
        }catch(SQLException e)
        {
            e.printStackTrace();
        }
        return  countryList;
              
    }
    
    public static boolean countryDelete(VCountryBean bean)
    {
        try{
            conn=ConnectionUtill.getconn();
             String countryDelete="delete from Country where c_id=(?)";
            pst=conn.prepareStatement(countryDelete);
            pst.setInt(1, bean.getC_id());
            int d=pst.executeUpdate();
            if(d>0)
            {
                flag=true;
                System.out.println("flag............................"+flag);
                System.out.println("deleted record");
            }else
            {
                System.out.println("not deleted");
            }
        }catch(SQLException e)
        {
            e.printStackTrace();
        }
        return flag;
    }
    public static List countryFetch(int id)
    {
        List countryList=new ArrayList();
        try{
            
            conn=ConnectionUtill.getconn();
            String fat="select * from Country where c_id=(?)";
            
            pst=conn.prepareStatement(fat);
            pst.setInt(1, id);
            
            rs=pst.executeQuery();
            while (rs.next()) { 
                VCountryBean ubean =new VCountryBean();
            
                ubean.setC_id(rs.getInt(1));
                ubean.setC_name(rs.getString(2));
                countryList.add(ubean);
            }
        }catch(SQLException e)
        {
            System.out.println("fatch error..........");
        }
        return countryList;
    }
    
    public static boolean countryUpdate(VCountryBean bean)
    {
        try{
            conn=ConnectionUtill.getconn();
            String update="update Country set c_name=(?) where c_id=(?)";
            pst=conn.prepareStatement(update);
            pst.setString(1, bean.getC_name());
            pst.setInt(2, bean.getC_id());
            int u=pst.executeUpdate();
            if(u>0)
            {
                flag=true;
                System.out.println("updated record");
            }else
            {
                System.out.println("not updated record");
            }
        }catch(SQLException e)
        {
            e.printStackTrace();
        }
        return flag;
        
    }
   

}
