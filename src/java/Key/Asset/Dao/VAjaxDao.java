/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package Key.Asset.Dao;

import Bean.VCityBean;
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
 * @author HP I5
 */
public class VAjaxDao {
    static Connection conn=null;
    static Statement stmt=null;
    static boolean flag=false;
    static PreparedStatement pst=null;
    static ResultSet rs=null;

    public static List countryShow()
{
    List countryList=new ArrayList();
    try{
        conn=ConnectionUtill.getconn();
        String Select="select * from country";     
        VCityBean cbean=null;
        pst=conn.prepareStatement(Select);
         
        rs=pst.executeQuery();
        while(rs.next())
        {
            cbean=new VCityBean();
            cbean.setC_id(rs.getInt(1));
            cbean.setC_name(rs.getString(2));
            
            countryList.add(cbean);
            
        }
    }catch(SQLException e)
    {
        System.out.println("not show data In City");
    }
    return countryList;
    
}
     public static List stateShow(String id)
{
    List countryList=new ArrayList();
    try{
        conn=ConnectionUtill.getconn();
        String Select="select s.*,c.c_name from state s,country c where s.c_id=c._id and c.c_id="+id+"";     
        System.out.println("state--"+Select);
        VCityBean cbean=null;
        pst=conn.prepareStatement(Select);
         
        rs=pst.executeQuery();
        while(rs.next())
        {
            cbean=new VCityBean();
            cbean.setS_id(rs.getInt(1));
            cbean.setS_name(rs.getString(2));
            cbean.setC_id(rs.getInt(3));
            cbean.setC_name(rs.getString(4));
            
            countryList.add(cbean);
            System.out.println("list"+countryList.size());
            
        }
    }catch(SQLException e)
    {
        System.out.println("not show data In City");
    }
    return countryList;
    
}
          public static List cityShow(String id)
{
    List countryList=new ArrayList();
    try{
        conn=ConnectionUtill.getconn();
        String Select="select c.*,s.s_name from state s,city c where c.s_id=s.s_id and s.s_id="+id+"";     
        System.out.println("city--"+Select);
        VCityBean cbean=null;
        pst=conn.prepareStatement(Select);
         
        rs=pst.executeQuery();
        while(rs.next())
        {
            cbean=new VCityBean();
            cbean.setCity_id(rs.getInt(1));
            cbean.setCity_name(rs.getString(2));
            cbean.setS_id(rs.getInt(3));
            cbean.setS_name(rs.getString(4));
            
            countryList.add(cbean);
            System.out.println("list"+countryList.size());
            
        }
    }catch(SQLException e)
    {
        System.out.println("not show data In City");
    }
    return countryList;
    
}
}
