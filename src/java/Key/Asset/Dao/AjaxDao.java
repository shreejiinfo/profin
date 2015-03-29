/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package Key.Asset.Dao;

import Key.Asset.Bean.CityBean;
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
public class AjaxDao {

    static Connection conn = null;
    static Statement stmt = null;
    static boolean flag = false;
    static PreparedStatement pst = null;
    static ResultSet rs = null;

    public static List countryShow() {
        List countryList = new ArrayList();
        try {
            conn = ConnectionUtill.getconn();
            String Select = "select * from country";
            CityBean cbean = null;
            pst = conn.prepareStatement(Select);

            rs = pst.executeQuery();
            while (rs.next()) {
                cbean = new CityBean();
                cbean.setCountryId(rs.getInt(1));
                cbean.setCountryName(rs.getString(2));

                countryList.add(cbean);

            }
        } catch (SQLException e) {
            System.out.println("not show data In City");
        }
        return countryList;

    }

    public static List stateShow(String id) {
        List countryList = new ArrayList();
        try {
            conn = ConnectionUtill.getconn();
            String Select = "select s.*,c.c_name from state s,country c where s.c_id=c.c_id and c.c_id=" + id + "";
            System.out.println("state--" + Select);
            CityBean cbean = null;
            pst = conn.prepareStatement(Select);

            rs = pst.executeQuery();
            while (rs.next()) {
                cbean = new CityBean();
                cbean.setStateId(rs.getInt(1));
                cbean.setStateName(rs.getString(2));
                cbean.setCountryId(rs.getInt(3));
                cbean.setCountryName(rs.getString(4));

                countryList.add(cbean);
                System.out.println("list" + countryList.size());

            }
        } catch (SQLException e) {
            System.out.println("not show data In City");
        }
        return countryList;

    }

    public static List cityShow(String id) {
        List countryList = new ArrayList();
        try {
            conn = ConnectionUtill.getconn();
            String Select = "select c.*,s.s_name from state s,city c where c.s_id=s.s_id and s.s_id=" + id + "";
            System.out.println("city--" + Select);
            CityBean cbean = null;
            pst = conn.prepareStatement(Select);

            rs = pst.executeQuery();
            while (rs.next()) {
                cbean = new CityBean();
                cbean.setCityId(rs.getInt(1));
                cbean.setCityName(rs.getString(2));
                cbean.setStateId(rs.getInt(3));
                cbean.setStateName(rs.getString(4));

                countryList.add(cbean);
                System.out.println("list" + countryList.size());

            }
        } catch (SQLException e) {
            System.out.println("not show data In City");
        }
        return countryList;

    }
}
