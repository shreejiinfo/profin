/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package Key.Asset.Dao;

import static Key.Asset.Dao.CountryDao.conn;
import Bean.VCityBean;
import Bean.VStateBean;
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
public class CityDao {
    
    static Connection conn=null;
    static Statement stmt=null;
    static boolean flag=false;
    static PreparedStatement pst=null;
    static ResultSet rs=null;



public static boolean cityInsert(VCityBean cbean)
{
    try{
        conn=ConnectionUtill.getconn();
        String cityInsert="insert into City(city_name,s_id)values(?,?)";
        pst=conn.prepareStatement(cityInsert);
        pst.setString(1, cbean.getCity_name());
        pst.setInt(2, cbean.getS_id());
        
        int i=pst.executeUpdate();
        if(i>0)
        {
            flag=true;
            System.out.println("insert data");
        }else
        {
            System.out.println("not insert data....");
        }
        
    }catch(SQLException e)
    {
        System.out.println("insert error.....");
    }
    return flag;

}
public static List cityShow()
{
    List cityList=new ArrayList();
    try{
        conn=ConnectionUtill.getconn();
        String citySelect="select c.*,s.s_name,co.* from city c, state s, country co where c.s_id=s.s_id and s.c_id=co.c_id";     
        VCityBean cbean=null;
        pst=conn.prepareStatement(citySelect);
         //pst.setInt(1, sbean.getState_id());
        //pst.setString(2,sbean.getState_name());
         //pst.setInt(3, sbean.getCountry_id());
        rs=pst.executeQuery();
        while(rs.next())
        {
            cbean=new VCityBean();
            cbean.setCity_id(rs.getInt(1));
            cbean.setCity_name(rs.getString(2));
            cbean.setS_id(rs.getInt(3));
            cbean.setS_name(rs.getString(4));
            cbean.setC_id(rs.getInt(5));
            cbean.setC_name(rs.getString(6));
            cityList.add(cbean);
            
            
        }
    }catch(SQLException e)
    {
        System.out.println("not show data");
    }
    return cityList;
    
}
public static boolean cityDelete(int id)
{
    try{
        conn=ConnectionUtill.getconn();
        String cityDelete="delete from City where city_id=(?)";
        pst=conn.prepareStatement(cityDelete);
        VCityBean cbean=new VCityBean();
        pst.setInt(1, id);
        //pst.setString(2, sbean.getState_name());
        //pst.setString(3, sbean.getCountry_name());
         int d=pst.executeUpdate();
         if(d>0)
         {
             flag=true;
             System.out.println("delete record");
         }
    }catch(SQLException e)
    {
        System.out.println("delete error...");
    }
    return flag;
}
 public static List cityFetch(int id)
    {
        List cityList=new ArrayList();
        try{
            
            conn=ConnectionUtill.getconn();
            String cityFetch="select c.*,s.*,co.* from city c, state s, country co where c.s_id=s.s_id and s.c_id=co.c_id and c.city_id=?";     
       
            pst=conn.prepareStatement(cityFetch);
            pst.setInt(1, id);
            
            rs=pst.executeQuery();
            while (rs.next()) { 
             VCityBean cbean=new VCityBean();
              cbean.setCity_id(rs.getInt("city_id"));
              cbean.setCity_name(rs.getString("city_name"));
              cbean.setS_id(rs.getInt("state_id"));
              cbean.setS_name(rs.getString("state_name"));
              cbean.setC_id(rs.getInt("country_id"));
              cbean.setC_name(rs.getString("country_name"));
              cityList.add(cbean);
            }
        }catch(SQLException e)
        {
            System.out.println("fatch error..........");
        }
        return cityList;
}
 public static boolean cityUpdate(VCityBean cbean)
        {
        try{
            conn=ConnectionUtill.getconn();
            String update="update City set city_name=(?),s_id=(?) where city_id=(?)";
            pst=conn.prepareStatement(update);
            pst.setString(1, cbean.getCity_name());
            pst.setInt(2, cbean.getS_id());
            pst.setInt(3, cbean.getCity_id());
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