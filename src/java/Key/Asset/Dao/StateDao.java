/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Key.Asset.Dao;

import static Key.Asset.Dao.CountryDao.conn;
import Bean.VCountryBean;
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
public class StateDao {

    static Connection conn = null;
    static Statement stmt = null;
    static boolean flag = false;
    static PreparedStatement pst = null;
    static ResultSet rs = null;

    public static boolean stateInsert(VStateBean sbean) {
        try {
            conn = ConnectionUtill.getconn();
            String stateInsert = "insert into State(s_name,c_id)values(?,?)";
            pst = conn.prepareStatement(stateInsert);
            pst.setString(1, sbean.getS_name());
            pst.setInt(2, sbean.getC_id());
            int i = pst.executeUpdate();
            if (i > 0) {
                flag = true;
                System.out.println("insert data");
            } else {
                System.out.println("not insert data....");
            }

        } catch (SQLException e) {
            System.out.println("insert error.....");
        }
        return flag;
    }

    public static List stateShow() {
        List<VStateBean> stateList = new ArrayList<VStateBean>();
        try {
            conn = ConnectionUtill.getconn();
            String stateSelect = "select s.s_id,s.s_name,c.c_id,c.c_name from State s,Country c where s.c_id=c.c_id";
            VStateBean sbean = null;
            pst = conn.prepareStatement(stateSelect);
            //pst.setInt(1, sbean.getState_id());
            //pst.setString(2,sbean.getState_name());
            //pst.setInt(3, sbean.getCountry_id());
            rs = pst.executeQuery();
            while (rs.next()) {
                sbean = new VStateBean();
                sbean.setS_id(rs.getInt(1));
                sbean.setS_name(rs.getString(2));
                sbean.setC_id(rs.getInt(3));
                sbean.setC_name(rs.getString(4));
                stateList.add(sbean);
            }
        } catch (SQLException e) {
            System.out.println("not show data");
        }
        for (VStateBean s : stateList) {
            System.out.println(">>>>>>>>>>>>" + s.getS_id());;
        }

        return stateList;

    }

    public static boolean stateDelete(int id) {
        try {
            conn = ConnectionUtill.getconn();
            String stateDelete = "delete from State where s_id=(?)";
            pst = conn.prepareStatement(stateDelete);
            VStateBean sbean = new VStateBean();
            pst.setInt(1, id);
            //pst.setString(2, sbean.getState_name());
            //pst.setString(3, sbean.getCountry_name());
            int d = pst.executeUpdate();
            if (d > 0) {
                flag = true;
                System.out.println("delete record");
            }
        } catch (SQLException e) {
            System.out.println("delete error...");
        }
        return flag;
    }

    public static List stateFetch(int id) {
        List stateList = new ArrayList();
        try {

            conn = ConnectionUtill.getconn();
            String fat = "select s.s_id,s.s_name,c.c_id,c.c_name from State s,Country c where s.c_id=c.c_id and s.s_id=?";

            pst = conn.prepareStatement(fat);
            pst.setInt(1, id);

            rs = pst.executeQuery();
            while (rs.next()) {
                VStateBean sbean = new VStateBean();

                sbean.setS_id(rs.getInt(1));
                sbean.setS_name(rs.getString(2));
                sbean.setC_id(rs.getInt(3));
                sbean.setC_name(rs.getString(4));
                stateList.add(sbean);
            }
        } catch (SQLException e) {
            System.out.println("fatch error..........");
        }
        return stateList;

    }

    public static boolean stateUpdate(VStateBean bean) {
        try {
            conn = ConnectionUtill.getconn();
            String stateUpdate = "update State set s_name=(?),c_id=(?) where s_id=(?)";
            pst = conn.prepareStatement(stateUpdate);
            pst.setString(1, bean.getS_name());
            pst.setInt(2, bean.getC_id());
            pst.setInt(3, bean.getS_id());
            int u = pst.executeUpdate();
            if (u > 0) {
                flag = true;
                System.out.println("updated record");
            } else {
                System.out.println("not updated record");
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return flag;

    }
}
