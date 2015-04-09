/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package Key.Asset.Utill;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 *
 * @author VIKAS
 */
public class ConnectionUtill {
      public static String driverpath="com.mysql.jdbc.Driver";
    public static String path="jdbc:mysql://localhost:3306/key_asset";
    public static String uname="root";
    public static String pwd="";
    
    public static Connection getconn()
    {
        Connection conn=null;
        try
        {
            Class.forName(driverpath);
            conn=DriverManager.getConnection(path, uname, pwd);
            if(conn!=null)
            {
                System.out.println("data connect");
            }
            else
            {
                System.out.println("data not connect");
            }
        }catch(SQLException se)
        {
            System.out.println("sql exception error....");
            
        }catch(ClassNotFoundException ce)
        {
            System.out.println("class not found exception error");
        }
        return conn;
    }
    public static void main(String[] args) {
        getconn();
        
    }
 
  
}
